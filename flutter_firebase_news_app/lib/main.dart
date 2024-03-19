import 'package:flutter/material.dart';
import 'package:flutter_firebase_news_app/feature/splash/splash_view.dart';
import 'package:flutter_firebase_news_app/product/initialize/application_start.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  await ApplicationStart.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      title: 'Nuntium News App',
      home: Scaffold(
        body: SplashView(),
      ),
    );
  }
}