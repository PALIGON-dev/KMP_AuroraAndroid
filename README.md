KMP_AuroraAndroid
Приложение, созданное на базе Kotlin Multiplatform (KMP), предназначено для демонстрации работы общего кода между платформами Aurora OS и Android. Проект показывает базовые принципы использования общих модулей, а также реализацию UI отдельно для каждой платформы.

 --- Возможности приложения ---
Отображение уровня заряда батареи
Поле ввода текста
Кнопка сброса ввода
Счётчик с кнопками + и –

--- Архитектура проекта ---
Проект разделён на три основных модуля:
-shared
Общий код на Kotlin:
Логика счётчика
Модель данных

androidApp
Нативное Android-приложение:
Jetpack Compose UI
Интеграция со shared-модулем
Android API BatteryManager

auroraApp
Приложение для Aurora OS:
Использует Aurora UI Toolkit
Aurora Kinterop(Аналог BatteryManager для Android)
Подключает общую бизнес-логику

Пример интерфейса и функционала:

<img width="405" height="887" alt="Снимок экрана 2025-11-24 182253" src="https://github.com/user-attachments/assets/ee5dc6fa-c92a-41e4-a5c4-b99cc9baaabb" />

![KMPAuroraAndroidMainActivity ktKMP_AuroraAndroid app main2025-11-2120-19-29-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/17f6722d-9005-42dd-a223-290de3e0a0fa)

Этот репозиторий служит примером внедрения KMP в мультиплатформенные мобильные проекты на OS Aurora, использования общего слоя логики
