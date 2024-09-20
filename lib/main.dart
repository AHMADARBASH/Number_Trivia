import 'package:flutter/material.dart';
import 'package:number_trivia/features/number_trivia/presentation/pages/number_trivia_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NumberTriviaPage(),
    );
  }
}
