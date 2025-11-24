1. Hello World

// import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Hello World App")),
//         body: Center(
//           child: Text(
//             "Hello, Flutter!",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ), ), ), );
//   }
// }


2. Count++



// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: CounterApp()));

// class CounterApp extends StatefulWidget {
//   @override
//   _CounterAppState createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(title: const Text('Hello')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('You have pushed the button this many times:'),
//               Text('$count', style: const TextStyle(fontSize: 30)),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => setState(() => count++),
//           child: const Icon(Icons.add),
//         ),
//       );
// }



3. Login Form


//   import 'package:flutter/material.dart';
// void main() => runApp(LoginApp());
// class LoginApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }
// class LoginPage extends StatelessWidget {
//   final TextEditingController username = TextEditingController();
//   final TextEditingController password = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Login Form")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(controller: username, decoration: InputDecoration(labelText: "Username")),
//             TextField(controller: password, decoration: InputDecoration(labelText: "Password"), obscureText: true),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 print("Username: ${username.text}, Password: ${password.text}");
//               },
//               child: Text("Login"),
//             ), ], ), ), );
//   }
// }



4. Two Screens



// import 'package:flutter/material.dart';
// void main() => runApp(NavigationApp());
// class NavigationApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: FirstScreen());
//   }
// }
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("First Screen")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => SecondScreen()));
//           },
//           child: Text("Go to Second Screen"),
//         ),  ),  );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Second Screen")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Navigator.pop(context),
//           child: Text("Back to First Screen"),
//         ), ), );
//   }
// }




5. Caliculator




// import 'package:flutter/material.dart';
// void main() => runApp(CalculatorApp());
// class CalculatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Calculator());
//   }
// }
// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }
// class _CalculatorState extends State<Calculator> {
//   final num1 = TextEditingController();
//   final num2 = TextEditingController();
//   double result = 0;
//   void addNumbers() {
//     setState(() {
//       result = double.parse(num1.text) + double.parse(num2.text);
//     } );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Simple Calculator")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(controller: num1, decoration: InputDecoration(labelText: "Enter first number"), keyboardType: TextInputType.number),
//             TextField(controller: num2, decoration: InputDecoration(labelText: "Enter second number"), keyboardType: TextInputType.number),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: addNumbers, child: Text("Add")),
//             Text("Result: $result", style: TextStyle(fontSize: 24)),
//           ], ), ), );
//   }
// }





6. Image + Emoji



// import 'package:flutter/material.dart';
// void main() => runApp(ImageApp());
// class ImageApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Image Example")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.favorite, color: Colors.red, size: 60),
//               SizedBox(height: 20),
//               Image.network('https://flutter.dev/images/flutter-logo-sharing.png', width: 100),
//             ],   ),  ),  ),  );
//   }
// }
