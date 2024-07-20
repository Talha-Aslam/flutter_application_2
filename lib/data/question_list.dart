import 'package:flutter_application_2/Models/question.dart';

final questions = [
  QuizQuestions(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestions('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestions(
    'Whats the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestions(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestions(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestions(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestions(
    'What programming language is used to write Flutter apps?',
    [
      'Dart',
      'JavaScript',
      'Python',
      'Swift',
    ],
  ),
  QuizQuestions(
    'Which widget is used for repeating a single child along a given axis?',
    [
      'ListView',
      'Column',
      'Row',
      'Stack',
    ],
  ),
  QuizQuestions(
    'What is the purpose of a StatefulWidget in Flutter?',
    [
      'To create a widget that has mutable state',
      'To create a widget that has immutable state',
      'To create a widget that is stateless',
      'To create a widget that can only be used once',
    ],
  ),
  QuizQuestions(
    'Which method is used to build the UI of a StatelessWidget?',
    [
      'build',
      'create',
      'render',
      'compose',
    ],
  ),
  QuizQuestions(
    'What is the function of the `setState` method in a StatefulWidget?',
    [
      'To update the state of the widget',
      'To initialize the widget',
      'To render the widget',
      'To build the widget',
    ],
  ),
];
