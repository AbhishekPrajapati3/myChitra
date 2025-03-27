# Chitra - A Flutter Wallpaper App

## 📌 Overview
**Chitra** is a Flutter-based mobile application designed to provide high-quality wallpapers to users. The app follows the **Model-View-Controller (MVC)** architecture for better code organization and scalability. It fetches images from the **Pexels API**, allowing users to search and download stunning wallpapers effortlessly.

## ✨ Features
- 🔍 **Search Wallpapers** - Find high-resolution wallpapers with ease.
- 📥 **Download Images** - Save wallpapers to your device.
- 🌐 **API Integration** - Uses Pexels API for fetching images.
- 📱 **User-Friendly UI** - Simple and intuitive interface.
- 🏗 **MVC Architecture** - Ensures maintainability and scalability.

## 🛠 Tech Stack
- **Flutter** - Frontend framework.
- **Dart** - Programming language.
- **Pexels API** - Image source.


## 🚀 Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/AbhishekPrajapati3/myChitra
   cd chitra
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## 🔑 API Key Setup
To use the **Pexels API**, follow these steps:
1. **Sign Up** on [Pexels](https://www.pexels.com/api/) and generate an API key.
2. Store the API key securely in your project (e.g., using a `.env` file or Flutter’s secrets management).
3. Use the API key in your Flutter app when making requests:

   ```dart
   final String apiKey = "YOUR_PEXELS_API_KEY";
   final String apiUrl = "https://api.pexels.com/v1/search?query=wallpapers";

   final response = await http.get(
     Uri.parse(apiUrl),
     headers: {"Authorization": apiKey},
   );
   ```


## 📸 Screenshots

Here are some preview images of the **Help Hub** application:  

### 🔹 Home Page  
 ![Screenshot 2025-03-27 103156](https://github.com/user-attachments/assets/f2747f11-a82e-4ded-a03e-fb8b12e13e18) 

### 🔹 After Search
 ![Screenshot 2025-03-27 103227](https://github.com/user-attachments/assets/981dd5ed-d723-4d7a-90a8-a643802f4cd7)



### 🔹 Preview 
 ![Screenshot 2025-03-27 103319](https://github.com/user-attachments/assets/f5c88b71-1aed-4086-95e3-1b92e39337fa)




## 🏗 Architecture
- **Model:** Defines data structures.
- **View:** UI elements and widgets.
- **Controller:** Handles business logic and API requests.


## 🤝 Contributing
Feel free to submit issues or contribute via pull requests.

## 📬 Contact
  For any questions or feedback, please contact:

  * **Name**  : Abhishek
  * **Email** : abprajapati3333@gmail.com****
  * **LinkedIn** : [LinkedIn](https://linkedin.com/in/yourprofile)

