package com.example.kmpauroraandroid

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.shared.*

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val viewModel = SharedViewModel(BatteryAndroid(this))
        setContent {
            MainScreen(viewModel)
        }
    }
}

@Composable
fun MainScreen(vm: SharedViewModel) {
    var text by remember { mutableStateOf("") }
    var counter by remember { mutableStateOf(vm.getCounterValue()) }

    Column(
        modifier = Modifier
            .padding(16.dp)
            .fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Text("Battery level: ${vm.getBatteryLevel()}%")

        OutlinedTextField(
            value = text,
            onValueChange = { text = it },
            label = { Text("Введите текст") },
            modifier = Modifier.fillMaxWidth()
        )

        Button(onClick = { text = "" }) {
            Text("Сбросить")
        }

        Text("Счётчик: $counter")
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            Button(onClick = { counter = vm.decCounter() }) { Text("-") }
            Button(onClick = { counter = vm.incCounter() }) { Text("+") }
        }
    }
}
