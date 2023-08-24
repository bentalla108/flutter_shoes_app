import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Providers/cart_provider.dart';
import 'package:shop_app/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
              /*   backgroundColor: Color.fromRGBO(245, 247, 249, 1), */
              /* elevation: 0 */
            ),
            fontFamily: 'Lato',
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            ),
            textTheme: const TextTheme(
              titleMedium: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodySmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              titleLarge: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: 'Shop App',
          home: const HomePage()),
    );
  }
}
