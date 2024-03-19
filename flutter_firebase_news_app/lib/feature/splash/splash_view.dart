import 'package:flutter/material.dart';
import 'package:flutter_firebase_news_app/product/constants/image_constants.dart';
import 'package:flutter_firebase_news_app/product/constants/string_constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashView extends ConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(child: Column(children: [
        Image.asset(ImageConstants.appLogo),
        Text(StringConstants.appName, ),
      ],),),
    );
  }
}