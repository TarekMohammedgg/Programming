# Simple Note App with Flutter

This is a simple note-taking app built using Flutter. The app allows users to create and display notes in a list format. However, note updating is not supported in this version.

## Dependencies

The app utilizes the following Flutter widgets and packages:

- `Dismissible`: This widget is used to implement swipe-to-dismiss functionality for deleting notes.
- `Column` and `Row`: These widgets are used to lay out the UI components in a vertical or horizontal manner respectively.
- `Padding`: This widget is used to add padding around UI components.
- `TextField`: This widget is used for user input to create new notes.
- `DateTime`: This widget is utilized to store the creation date of each note.
- `formatDate` package: This package is used to format the creation date of the notes.

## Installation

To run the app, make sure you have Flutter installed on your machine. Then, follow these steps:

1. Clone the repository:

   ```
   git clone https://github.com/TarekMohammedgg/Programming/tree/main/learnFlutter/app_develop/notes_beginner
   ```


2. Fetch the dependencies:

   ```
   flutter pub get
   ```

3. Run the app:

   ```
   flutter run
   ```

## Implementation

Here is a step-by-step breakdown of how the app is implemented:

1. Define a `Note` model class to represent the structure of each note. This class should have properties such as `title`, `content`, and `creationDate`.

2. Create a `NoteList` widget that serves as the main entry point for the app. This widget manages the list of notes and the UI components for displaying and creating new notes.

3. Inside the `NoteList` widget, use the `Dismissible` widget to wrap each note representation in the list. This enables the swipe-to-dismiss functionality to delete notes.

4. Implement a `Column` widget to lay out the individual note components, such as the title, content, and creation date.

5. Utilize the `Padding` widget to add spacing around the UI components, ensuring a visually appealing layout.

6. Use the `TextField` widget to allow users to input the title and content of a new note. Retrieve this input and create a new instance of the `Note` class with a unique ID and the current date.

7. To format the creation date of the notes, use the `formatDate` package. Pass the `creationDate` property of each note to the appropriate method to format it as desired.

8. Display the list of notes using a `ListView.builder` widget, passing in the `NoteList` as the data source. This ensures that the UI is dynamically updated as notes are added or removed.

## Limitations

Please note that this version of the app does not support updating existing notes. The primary focus is on adding and deleting notes. To implement note updating functionality, additional logic and UI components would need to be added, such as an edit screen or dialog.
