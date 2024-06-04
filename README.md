# People-from-bryj-app

## Overview

This project is an iOS application written in Swift that displays a list of persons with their names and ages. The app follows Apple Design Guidelines to create a clean and unobtrusive UI. It demonstrates fundamental iOS development skills, including data handling, UI customization, and adherence to SOLID principles.

## Requirements

- **Xcode 15.0.1 or later**
- **iOS 17.0 or later**

## Installation

1. **Clone the repository:**
   ```bash
   gh repo clone HichriOussema/People-from-bryj-app
   cd People-from-bryj-app/PeopleFromBryjApp
   ```
2.**Open the project in Xcode:**
 ```bash
open PeopleFromBryjApp.xcodeproj
```
3. Running the App:

Build and run the app in Xcode:
- Select the desired simulator or device.
- Press Cmd + R or click the Run button.

## Architecture
The app is structured following the MVC (Model-View-Controller) + Repositories pattern, which promotes a clean separation of concerns and enhances testability.

## Project Structure
- Models : Contains the data models for the app (e.g., Person).
- Repositories: Manages data operations, including mock data and real data.
- ViewControllers: Contains the view controllers for displaying the UI.
- Views: Contains the custom table view cell and other UI components.

## Debug Setup

The app uses different repository implementations for different build configurations to facilitate testing and debugging.

### Debug Mode:

- Uses `MockPersonRepository` to provide mock data for testing purposes.
- Allows developers to test the app with predefined data.
- Activated by the `#if DEBUG` directive in the `AppDelegate`.

### Release Mode:

- Uses `PersonRepository` to provide real data.
- Intended for production use.

## Switching Between Configurations

### Running in Debug Mode (default):

- Simply run the app from Xcode using the default scheme.
- Verify by checking the console output for "Using MockPersonRepository".

### Running in Release Mode:

- Change the build configuration in Xcode:
  1. Go to `Product` > `Scheme` > `Edit Scheme`.
  2. Select the `Run` tab on the left.
  3. Change the `Build Configuration` to `Release`.
- Verify by checking the console output for "Using PersonRepository".

## Testing

No tests have been implemented for this project as it was not required in the project description. However, the app is structured and ready for testing with the help of the mock repositories. Developers can easily add unit tests to validate functionality using the `MockPersonRepository`.

## Contributing
If you want to contribute, please follow these steps:
1. Fork the repository.
2. Create a new branch:
    ```sh
    git checkout -b feature-branch
    ```
3. Make your changes and commit them:
    ```sh
    git commit -m "Add new feature"
    ```
4. Push to the branch:
    ```sh
    git push origin feature-branch
    ```
5. Submit a pull request.

## License
This project is licensed under the MIT License.
