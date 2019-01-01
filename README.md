<h1 align="center">Good First Issue</h3>


<p align="center">
  An app for finding issues targeted towards newcomers to open source projects.
</p>


## Prerequisites

To contribute to Good First Issue, you'll need to have a few things installed:

* Flutter
  * If you need to install Flutter, you can find instructions [here](https://flutter.io/docs/get-started/install)
* An IDE such as Android Studio or VS Code
  * If you need to install an IDE, you can find instructions [here](https://flutter.io/docs/get-started/editor)

## Getting Started

To get started, there are a few ways that you can run the project.

* From the terminal, run `flutter run` after your emulator has been started.
* From Android Studio or VS Code, open the project root and start the debugger.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

## Adding New Projects

If you'd like to add a new project to Good First Issue, you're more than welcome to submit a PR.  There are a few steps that you need to take.

* If there is not already an issue associated with the project you want to add, please create one.
* Update `lib/models/projects.dart`
  * Add your `<project>` as a property of `projects` with an object that includes a **name**, **description**, and a **q** (representing the GitHub search query).
