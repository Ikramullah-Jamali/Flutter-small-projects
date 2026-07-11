# 📅 Date & Time Picker Component

A straightforward and interactive Flutter component demonstrating how to implement and handle Material Design date and time selection dialogs. 

This project demonstrates how to gracefully manage temporary user input overlays and work with asynchronous data flows in Flutter.

## ✨ Key Features
* **Native Material Dialogs:** Utilizes Flutter's built-in `showDatePicker` and `showTimePicker` functions for a seamless, native user experience.
* **Asynchronous Handling:** Showcases the use of `async` and `await` to pause execution while waiting for the user to make a selection from the pop-up dialog.
* **Dynamic State Updates:** Employs `StatefulWidget` and `setState()` to immediately refresh the UI and display the newly selected `DateTime` or `TimeOfDay` values.

## 🗂️ File Structure
* **`date_time_picker.dart`**: Contains the main screen layout, buttons designed to trigger the native picker overlays, and the asynchronous logic required to capture the returned data and update the screen state.

## 🛠️ Technical Concepts Practiced
* **Asynchronous Dart Logic:** Managing `Future` returns from interactive system overlays.
* **Null Safety & Validation:** Handling instances where a user dismisses the dialog without selecting a value (returning `null`).
* **State Updates:** Formatting and rendering changing `DateTime` patterns dynamically into text widgets.

## 🚀 How to Run Locally
If you want to run this specific project on your local machine:
1. Clone the repository.
2. Navigate to this folder.
3. Ensure you have an emulator running or a device connected.
4. Run the following command in your terminal:
   ```bash
   flutter run

## Made By:Ikramullah jamali
