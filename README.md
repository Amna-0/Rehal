# 🕌 Rehal — Saudi Tourist Places App
 
> A Flutter mini-project built for the Tuwaiq Academy Flutter Bootcamp — Week 1 (UI Implementation).
> Browse Saudi Arabia's most iconic cities and explore what makes each one worth visiting.
 
<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  

---
 
## 📖 Overview
 
**Rehal** ("رِحـــال") is a simple two-screen Flutter app that showcases tourist destinations across Saudi Arabia. The home screen presents a searchable, scrollable list of cities, each with an image, name, and short description. Tapping **"Discover More!"** on any city navigates to a details screen listing that city's must-see attractions.
 
This project was built as part of the Flutter UI Implementation assignment, focused on practicing layout, navigation, and responsive widgets.
 
---
 
## ✨ Features
 
- 🔍 Search field on the home screen (UI only)
- 🖼️ Hero welcome banner with a background image and dot indicators
- 🏙️ City cards for **Riyadh, Dhahran, Abha, AlUla,** and **Jeddah**, each with an image, description, and category tag
- 📍 Details screen per city listing its top attractions
- 🧭 Navigation between Home and Details screens via `Navigator`
- 📱 Responsive sizing using `MediaQuery`
- 🔻 Bottom navigation bar (Home / Favorites / Profile — UI only)
---
 
## 🧱 Widgets Used
 
| Widget | Where it's used |
|---|---|
| `Scaffold`, `AppBar` | Page structure and top bar on both screens |
| `ListView` | Scrollable list of cities (Home) and attractions (Details) |
| `Container` + `BoxDecoration` | City cards, welcome banner, tag chips |
| `ClipRRect` + `Image.asset` | Rounded city images |
| `Column`, `Row` | Layout composition inside cards |
| `Text` + `TextStyle` | Titles, descriptions, tags |
| `SizedBox` | Spacing between elements |
| `TextField` | Search input on the home screen |
| `ElevatedButton` | "Discover More!" navigation trigger |
| `Icon` | Settings, search, favorite icons |
| `MediaQuery` | Responsive width/height for images and banners |
| `Navigator` + `MaterialPageRoute` | Passing city data to the Details screen |
| `BottomNavigationBar` | Bottom tab bar |
 
---
 
## 📸 Screenshots
 > **Note:** These are just sample screens. All five cities (Riyadh, Dhahran, Abha, AlUla, and Jeddah) have their own fully detailed screens — run the app to explore them all!

 <img width="250" height="500" alt="لقطة شاشة 2026-08-30 132200-portrait" src="https://github.com/user-attachments/assets/87c3fb32-3071-42a4-959c-16100256bab0" />
 <img width="250" height="500" alt="لقطة شاشة 2026-08-30 132227-portrait" src="https://github.com/user-attachments/assets/635aab21-8693-4607-bcb8-f9a8dedf1a26" />
 <img width="250" height="500" alt="لقطة شاشة 2026-08-30 132241-portrait" src="https://github.com/user-attachments/assets/4e26daf6-c11a-4575-a3a3-f4a8a0c53d1b" />
 
---
 
## 🚀 Getting Started
 
### Prerequisites
 
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed and configured
- An emulator/simulator or physical device
- A code editor (VS Code or Android Studio recommended)
### Run the project
 
```bash
# Clone the repository
git clone https://github.com/Amna-0/Rehal.git
cd Rehal
 
# Install dependencies
flutter pub get
 
# Run the app
flutter run
```
 
### Check your setup
 
```bash
flutter doctor
```
 
### Assets
 
This app loads city images with `Image.asset`. The `assets/images/` folder is already declared in `pubspec.yaml`:
 
```yaml
flutter:
  assets:
    - assets/images/
```
 
All required images exist under `assets/images/`:
`saudi.jpg`, `riyadh.jpg`, `riyadh_d.jpg`, `dhahran.jpg`, `dhahran_d.jpg`, `abha.jpg`, `abha_d.jpg`, `alula.jpg`, `alula_d.jpg`, `jeddah.jpg`, `jeddah_d.jpg`
 
---
 
## 🗂️ Project Structure
 
```
Rehal/
├── assets/
│   └── images/                    # saudi, riyadh, dhahran, abha, alula, jeddah (+ _d variants)
├── lib/
│   ├── main.dart                  # App entry point
│   └── screens/
│       ├── home_screen.dart       # Screen 1 — city list
│       └── details_screen.dart    # Screen 2 — city attractions
├── pubspec.yaml
├── pubspec.lock
└── README.md
```
 
> Package name: `flutter_project1` (as declared in `pubspec.yaml`). The repository itself is named `Rehal`.
 
---
 
## 🔭 Possible Improvements
 
- Wire up the search field to actually filter the city list
- Make "Favorites" persist selected cities
- Move city data to a separate JSON file instead of inline `List<Map>` definitions
- Add Arabic language support with a language toggle button
  
---
 
## 🧠 Key Takeaways
 
- Widgets compose through **nesting**, not inheritance — each city card is just `Container` → `Column` → `Row`/`Text` stacked together.
- `Navigator.push` + `MaterialPageRoute` is how data (city name, image, places) travels from Home to Details.
- `MediaQuery` lets layout react to screen size instead of using fixed pixel values.

--- 

## 📚 Related Resources
 
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Flutter Layout Cheat Sheet](https://docs.flutter.dev/ui/layout)
- [Flutter Navigation & Routing](https://docs.flutter.dev/ui/navigation)
  
---
 
<p align="center">Built with 💙 for Tuwaiq Academy's Flutter Bootcamp.</p>
