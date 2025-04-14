import 'package:flutter/material.dart';
import 'package:petal/petal.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petal Package',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PetalText(text: "Hello, World!"),
            const SizedBox(height: 16),

            PetalBox(
              width: 200, 
              height: 200,
              outerPadding: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: Text("Hello, World!"),
            ),
            const SizedBox(height: 16),


            PetalTitle(
              text: "Hello, World!",
              size: PetalTitleSize.small,
            ),
            const SizedBox(height: 16),

            PetalTitle(
              text: "Hello, World!",
              size: PetalTitleSize.large,
            ),
            const SizedBox(height: 16),

            PetalTitle(
              text: "Hello, World!",
              size: PetalTitleSize.elephant,
            )
          ],
        ),
      ),
    );
  }
}