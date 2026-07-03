# 📦 Management Asset

A Flutter application for managing company assets with a clean architecture using **GetX** and **Firebase Cloud Firestore**.

---

## 👨‍💻 Developer

**Faizal Febriyanto**

Flutter Mobile Developer

---

## 🚀 Tech Stack

| Technology | Version |
|------------|---------|
| Flutter | **3.32.7** |
| State Management | **GetX** |
| Backend | **Firebase** |
| Database | **Cloud Firestore** |

---

## ✨ Features

- 📋 Asset Management
- ➕ Add New Asset
- ✏️ Update Asset
- 🗑️ Delete Asset
- 🔍 Search Asset
- 🏷️ Filter Asset Status
- 🔄 Real-time Data using Cloud Firestore

---

## 📂 Project Structure

```text
lib
│
├── main.dart
├── firebase_options.dart
│
├── presentations
│   ├── page
│   │   ├── splash
│   │   │   ├── controller
│   │   │   └── view
│   │   │
│   │   ├── home
│   │   │   ├── controller
│   │   │   └── view
│   │   │
│   │   ├── detail_asset
│   │   │   ├── controller
│   │   │   └── view
│   │   │
│   │   └── navbar
│   │       ├── controller
│   │       └── view
│   │
│   ├── reusable_widget
│   │   ├── custom_elevated_button.dart
│   │   ├── custom_snackbar_widget.dart
│   │   └── custom_text_field.dart
│   │
│   ├── route
│   │   └── route.dart
│   │
│   └── theme
│       ├── colors_style_theme.dart
│       └── text_style_theme.dart
│
├── services
│   ├── constant
│   │   └── firestore_client.dart
│   │
│   ├── model
│   │   └── success
│   │       └── assets
│   │
│   └── repository
│       └── assets_repositories.dart
```

---

## 🛠 Requirements

- Flutter **3.32.7**
- Dart SDK
- Android Studio / VS Code
- Firebase Project

---

## ⚙️ Installation

Clone repository

```bash
git clone https://github.com/faizalfebriyanto886/management-assets.git
```

Go to project directory

```bash
cd management_asset
```

Install dependencies

```bash
flutter pub get
```

Generate model (Freezed)

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Configure Firebase

```bash
flutterfire configure
```

Run application

```bash
flutter run
```

---

## 🗄 Cloud Firestore Structure

```text
assets
│
├── document_id
│   ├── name
│   ├── category
│   ├── description
│   ├── status
│   ├── created_at
│   └── updated_at
```

---

## 📱 Screens

- Splash Screen
- Home
- Asset Detail
- Navigation Bar

---

## 📦 Build

Generate APK

```bash
flutter build apk
```

Generate App Bundle

```bash
flutter build appbundle
```

Generate iOS

```bash
flutter build ios
```

---

## 📄 License

This project is intended for learning, portfolio, and demonstration purposes.

---

<div align="center">

### Built with ❤️ using Flutter

**Developed by Faizal Febriyanto**

</div>