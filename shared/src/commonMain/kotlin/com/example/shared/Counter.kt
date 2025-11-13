package com.example.shared

class Counter {
    private var count = 0
    fun increment() = ++count
    fun decrement() = --count
    fun get() = count
}
