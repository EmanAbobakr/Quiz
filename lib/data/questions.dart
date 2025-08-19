import 'package:quiz/models/quiz_questions.dart';

const questions = [
  QuizQuestion('What is Flutter?', [
    'A mobile SDK',
    'A database',
    'A programming language',
    'A web server',
  ], 'A mobile SDK'),
  QuizQuestion('Which language is used to write Flutter apps?', [
    'Java',
    'Kotlin',
    'Dart',
    'Swift',
  ], 'Dart'),
  QuizQuestion('What widget is used for layouts in Flutter?', [
    'Container',
    'Column',
    'Row',
    'All of the above',
  ], 'All of the above'),
  QuizQuestion('Which company developed Flutter?', [
    'Apple',
    'Google',
    'Microsoft',
    'Facebook',
  ], 'Google'),
  QuizQuestion('How do you update the UI in Flutter?', [
    'By calling setState()',
    'By using updateUI()',
    'By using refresh()',
    'By calling rebuild()',
  ], 'By calling setState()'),
  QuizQuestion('What is a StatelessWidget?', [
    'A widget with no state',
    'A widget with mutable state',
    'A widget with animations',
    'A widget with children',
  ], 'A widget with no state'),
  QuizQuestion('What is hot reload in Flutter?', [
    'Reloading the app',
    'Restarting the device',
    'Quickly updating code changes',
    'Clearing cache',
  ], 'Quickly updating code changes'),
  QuizQuestion('Which file contains app dependencies in Flutter?', [
    'pubspec.yaml',
    'main.dart',
    'build.gradle',
    'package.json',
  ], 'pubspec.yaml'),
  QuizQuestion('What is the root widget of a Flutter app?', [
    'MaterialApp',
    'Scaffold',
    'Container',
    'AppRoot',
  ], 'MaterialApp'),
  QuizQuestion('How do you display an image in Flutter?', [
    'Image.asset()',
    'Image.network()',
    'Both',
    'None',
  ], 'Both'),
];
