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
            PetalText("Hello, World!"),
            const SizedBox(height: 16),

            PetalBox(
              width: 200, 
              height: 100,
              outerPadding: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: PetalText("Hello, World!"),
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
            ),
            const SizedBox(height: 16),

            PetalButton(
              text: "Click Me!",
              onClick: () {}
            ),
            const SizedBox(height: 16),

            PetalButton(
              icon: Icons.file_copy,
              onClick: () {}
            ),
            const SizedBox(height: 16),


            const SizedBox(height: 16),
            PetalField(
              controller: TextEditingController(),
              hint: "Hello, World!",
              width: 200,
            ),

            const SizedBox(height: 16),
            PetalField(
              controller: TextEditingController(),
              obscure: true,
              width: 120,
            ),

          ],
        ),
      ),
    );
  }
}