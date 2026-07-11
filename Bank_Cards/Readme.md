# 💳 Bank Cards UI 

A modern, visually appealing Flutter UI component that replicates a digital wallet or banking card interface. 

This project demonstrates the ability to break down complex user interfaces into clean, maintainable,
and reusable code by separating the logic and design across multiple files.

## ✨ Key Features
* **Custom UI Design:** Implements modern design principles like gradients, rounded corners, and precise padding/margins to mimic physical credit cards.
* **Reusable Widgets:** Instead of hardcoding every card, the UI is built using custom widgets that can accept different parameters (like cardholder name, card number, and balance).
* **Responsive Layouts:** Utilizes `Column`, `Row`, and `Container` widgets to ensure the card elements scale and align correctly on different screen sizes.

## 🗂️ File Structure
To maintain clean architecture, this component is broken down into three separate, modular files:
1. **`main.dart`**: The entry point of the application that sets up the `MaterialApp` and scaffolds the main screen.
2. **`card-layout_1.dart`**: Contains the custom widget class responsible for the layout and styling of the individual bank card.
3. **`card-layout_2.dart`**: Manages the data being passed into the cards or handles the layout of the overall screen containing multiple cards.
4. **`card-layout_3.dart`**: Manages the data being passed into the cards or handles the layout of the overall screen containing multiple cards.


## 🛠️ Technical Concepts Practiced
* **Component Modularity:** Isolating UI elements into separate Dart files to keep the main file clean and readable.
* **Widget Composition:** Combining basic Flutter widgets to build complex, custom visual elements.
* **Passing Data:** Sending variables (like text strings and colors) through constructors to make widgets dynamic.

## 🚀 How to Run Locally
If you want to run this specific project on your local machine:
1. Clone the repository.
2. Navigate to this folder.
3. Ensure you have an emulator running or a device connected.
4. Run the following command in your terminal:
   ```bash
   flutter run
## Made by: Ikramullah Jamali
   
