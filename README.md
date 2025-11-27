# 🩺 Doctor Appointment App

Doctor Appointment App is a **healthcare mobile application built with Flutter** that helps users browse doctors, filter by specialty, book appointments, manage schedules, and receive reminder notifications.
The app delivers a clean UI experience, fast performance, and seamless medical booking flow.
![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/doc_app.jpeg)

---
## ✨ Features

* 🏠 **Interactive Home Screen**: Displays a list of available doctors along with medical specialties, with the ability to filter efficiently based on the chosen category.
* 🔍 **Doctor Search**: Search for any doctor by name directly from the search screen.
* 👨‍⚕️ **Detailed Doctor Profile**: Tapping on a doctor card opens a full details screen showing name, specialty, experience, rating, appointment price, available dates & times.
* 📅 **Appointment Booking**: Users can select preferred date and time, then confirm the reservation through a smooth booking flow with a confirmation dialog.
* 🔐 **User Authentication**: Enables secure Login and Sign-Up to allow users to manage their profiles and appointments.
* 🗂  **View & Manage Appointments**: A dedicated section to display all booked appointments in one place.
* 🧑 **Profile Editing**: Users can view and update their personal information anytime.
* 🔔 **Reminder Notifications**: Local notifications alert the user **1 hour before the appointment**.
* ⚡ **Smooth UI & Performance**: Uses skeleton loading states for better UX while fetching data from API.
* 🚨 **Error Handling**: Graceful handling of server issues and connectivity failures.
---


## 📱 Screenshots

### 🔥 Splash & Onboarding

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/splah_and_onbording.jpeg)

### 🔥 sign up & login

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/auth.jpeg)

### 🏠 Home + Doctors + Specialties

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/home_and_spicelity.jpeg)

### 👨‍⚕️ Doctor Details + Booking

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/doc_appoinment.jpeg)

### 🔍 Search 

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/allsearch.jpeg)

### 📅 appoinments

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/appoinmenta_loading.jpeg)

### 🧑 Profile 

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/allprofile.jpeg)

### 🔔 Notifications

![image](https://github.com/AyaNasserEzat/doctor_appointment_app/blob/d38285ac4a20056fdf605a647146f600bc92acfc/app_screensohts/allnotification.jpeg)

---

## 🧱 Architecture & Tech Stack

| Feature              | Technology                                 |
| -------------------- | ------------------------------------------ |
| Framework            | Flutter                                    |
| Architecture         | Feature-Based + Clean Code                 |
| State Management     | **Bloc/Cubit**                             |
| Networking           | **Dio + Retrofit**                         |
| Local Storage        | Secure Storage         |
| Dependency Injection | GetIt                                      |
| Notifications        | flutter_local_notifications + timezone     |
| Shimmer Loading      | Skeletonizer                               |
| JSON & Code Builder  | Freezed + Json Serializable + Build Runner |

---

## 📁 Project Structure

```
lib/
├── core/
│   ├── di/               # Dependency Injection
│   ├── helper/           # Extensions / validation / formats
│   ├── networking/       # Dio + Api Handler + Interceptors
│   ├── routing/          # App routes & navigation
│   ├── services/         # Notification service / timezone setup
│   ├── utils/            # Constants / colors / text styles
│   └── widgets/          # Shared UI components (dialogs, buttons..)
│
├── feature/
│   ├── splash/
│   ├── onboarding/
│   ├── login/            # Login
│   ├── SignUp/           # SignUp
│   ├── home/             # Doctors + Specialties + Filter
│   ├── doctor_details/   # Doctor profile + booking system
│   ├── search/           # Search screen 
│   ├── appointments/     # View & Manage appointments
│   └── profile/          # View + Edit Profile
│
├── doctor_app.dart        # App wrapper
└── main.dart              # Entry point + Notification init
```

## 📦 Dependencies & Why They Were Used

| Package                                     | Purpose                                                                     |
| ------------------------------------------- | --------------------------------------------------------------------------- |
| **flutter_bloc**                            | Used for state management using Cubit/Bloc architecture.                    |
| **freezed** & **freezed_annotation**        | Generates immutable data models, perfect for states and clean architecture. |
| **json_serializable** & **json_annotation** | Automatically converts models from/to JSON without manual coding.           |
| **dio**                                     | Handles API requests and responses efficiently.                             |
| **retrofit**                                | Simplifies HTTP calls and makes API service code more readable.             |
| **retrofit_generator**                      | Generates Retrofit API implementation code automatically.                   |
| **build_runner**                            | Required to run code generation for Freezed, JSON, Retrofit, etc.           |
| **get_it**                                  | Dependency Injection — helps manage and access services cleanly.            |
| **flutter_svg**                             | Displays SVG icons and illustrations with high quality.                     |
| **flutter_secure_storage**                  | Stores sensitive data like tokens securely.                                 |
| **skeletonizer**                            | Adds skeleton loading placeholders for a smooth loading experience.         |
| **intl**                                    | Formats Date & Time, useful for scheduling times.                           |
| **flutter_local_notifications**             | Sends local notifications for appointment reminders.                        |
| **timezone** & **flutter_timezone**         | Ensures notifications schedule correctly based on user's timezone.          |
| **flutter_native_splash**                   | Generates the native Splash screen for both Android & iOS.                  |
| **flutter_launcher_icons**                  | Generates app icon assets for Android & iOS.                                |

---


## 🚀 Getting Started

```bash
# Clone project
```sh
git clone https://github.com/YOUR_USERNAME/doctor_appointment_app.git
```
cd doctor_appointment_app

# Install packages
flutter pub get

# Run app
flutter run
```
