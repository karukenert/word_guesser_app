import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:word_guesser_app/entry_page.dart';
import 'package:word_guesser_app/login_page.dart';

// void main() {
//   runApp(
//     MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(primaryColor: Colors.black),
//         home: LoginPage()),
//   );
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  var refreshToken = sharedPreferences.getString('refreshToken');
  //TODO maybe use accesstoken instead and check if token is valid.
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: refreshToken == null ? LoginPage() : EntryPage(),
    ),
  );
}
