# 📰 Flutter News API App

A modern Flutter application that displays the latest news articles using [NewsAPI.org](https://newsapi.org), built with Clean Architecture and Bloc for scalable and maintainable code.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Bloc](https://img.shields.io/badge/BLoC-Pattern-blue?style=for-the-badge)

---

## 🚀 Features

- 🔥 Top Headlines (by Country)
- 🔍 News Search with Keyword
- 🔄 Infinite Scroll & Pull to Refresh
- ⚙️ Clean Architecture Structure
- 📦 Dependency Injection with GetIt
- 🔒 HTTP Interceptor Handling (via DIO)
- 💡 State Management using Bloc & Cubit
- ❄️ Immutable Data Classes using Freezed
- ⚙️ Code Generation with build_runner

---

## 🧱 Project Structure

```
lib/
├── core/            # Error & Network logic
├── data/            # API and Models
├── domain/          # Entities & Use Cases
├── presentation/    # UI, Cubits, Widgets
└── main.dart        # App Entry Point
```

---

## 🛠 Getting Started

### 1. Clone the project

```bash
git clone https://github.com/afifhanig/newsapi_app.git
cd newsapi_app
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Generate code

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 4. Add your NewsAPI Key

Replace `YOUR_API_KEY` in:

```
lib/data/datasources/news_remote_datasource.dart
```

with your actual API key from [newsapi.org](https://newsapi.org/register).

---

## 🧪 Run the App

```bash
flutter run
```

---

## ✨ Packages Used

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)
- [`dio`](https://pub.dev/packages/dio)
- [`get_it`](https://pub.dev/packages/get_it)
- [`freezed`](https://pub.dev/packages/freezed)
- [`equatable`](https://pub.dev/packages/equatable)
- [`build_runner`](https://pub.dev/packages/build_runner)

---

## 📄 License

This project is licensed under the MIT License.

---

## ✍️ Author

Made by **Afif Hani Ghuswari**

📫 [GitHub Profile](https://github.com/afifhanig)
