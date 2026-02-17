<<<<<<< HEAD
# FlexiFit - Fitness Tracking App

A clean, responsive Flutter mobile application for fitness tracking with Material 3 design.

## Features

### Screen 1 - Login Screen
- App logo and "FlexiFit" title
- Email and Password input fields
- "Forgot Password?" link
- Green "Login" button
- "Create Account" text at bottom
- Responsive centered layout

### Screen 2 - Home/Dashboard Screen
- AppBar with app name and profile avatar
- Fitness summary cards (Steps, Calories, Time)
- Action buttons (Start Workout, Track Steps)
- Workout list with cards:
  - Morning Run
  - HIIT Cardio
  - Strength Training
- Bottom Navigation Bar (Home, Activity, Profile)

### Screen 3 - Activity Details Screen
- AppBar with back button
- Activity title display
- Stats cards (Distance, Calories, Duration)
- Past records list
- Bottom "Start Again" button

## Project Structure

```
lib/
├── main.dart                    # App entry point with routing
├── screens/
│   ├── login_screen.dart        # Login UI screen
│   ├── home_screen.dart         # Dashboard/home screen
│   └── activity_details_screen.dart  # Activity details screen
├── widgets/
│   ├── summary_card.dart        # Reusable summary card widget
│   └── workout_card.dart        # Reusable workout card widget
└── utils/
    └── app_colors.dart          # Color constants and theme
```

## Getting Started

### Prerequisites
- Flutter SDK installed
- Android Studio or VS Code with Flutter extensions
- Emulator or physical device

### Setup Instructions

1. **Verify Flutter Installation**
   ```bash
   flutter --version
   flutter doctor
   ```

2. **Create Flutter Project** (if not already created)
   ```bash
   flutter create flexifit_ui
   cd flexifit_ui
   ```

3. **Run the Application**
   ```bash
   flutter pub get
   flutter run
   ```

4. **Select Device**
   Choose your preferred device when prompted:
   - Windows (desktop)
   - Chrome (web)
   - Android Emulator
   - iOS Simulator

## Navigation Flow

1. **Login Screen** (`/`) → Home Screen (`/home`)
2. **Home Screen** → Activity Details Screen (`/activity`)
3. **Activity Details Screen** → Back to Home Screen

## Design Features

- **Material 3 Design** - Modern Material Design components
- **Responsive Layout** - Adapts to different screen sizes
- **Reusable Widgets** - Custom SummaryCard and WorkoutCard components
- **Consistent Theming** - Green fitness theme with proper color scheme
- **Clean Architecture** - Well-organized folder structure

## Dependencies

The app uses only Flutter's built-in widgets and Material 3 components. No external dependencies required.

## Testing

Run the test suite:
```bash
flutter test
```

## Development Notes

- All UI is frontend-only (no backend/database)
- Uses dummy data for demonstration
- Implements proper state management for login form
- Responsive design using MediaQuery and Flexible widgets
- Clean, readable code with proper comments

## Screenshots

The app features three main screens:
1. **Login Screen** - Clean authentication interface
2. **Home Dashboard** - Fitness summary and workout overview
3. **Activity Details** - Detailed workout statistics and history

## Author

FlexiFit Fitness Tracking App - Flutter UI Implementation
=======
# flutter_3.5
>>>>>>> 4b87b7d9fc7cace1eacfcb65437dc6a351179c8a
