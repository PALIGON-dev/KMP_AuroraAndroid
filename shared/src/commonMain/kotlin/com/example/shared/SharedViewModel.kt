package com.example.shared

class SharedViewModel(private val battery: Battery) {
    private val counter = Counter()
    var text: String = ""

    fun getBatteryLevel(): Int = battery.getLevel()
    fun incCounter() = counter.increment()
    fun decCounter() = counter.decrement()
    fun getCounterValue() = counter.get()
    fun resetText() { text = "" }
}
