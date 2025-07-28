
Welcome to our app! 🚀 Our application seamlessly supports both light and dark themes while leveraging the powerful BLoC pattern for state management.
This app implements Dio for network requests and hive for local storage


## Getting Started


**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/Abo-ghazalla/nxt_assessment.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

This project uses `injectable` and `freezed` libraries that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.freezed.dart
**/*.g.dart
**/*.config.dart
```

### State Management

* [Bloc Pattern]
   



Here is the folder structure we have been using in this project

```
lib/
|- core/
|- di/
|- features/
|- utils/
|- widgets/
|- main.dart
```

## Features

This features contains all the application features, every feature has a separated folder as shown in example below:

```
converter/
|- data/
|- domain/
|- presentation/

```
