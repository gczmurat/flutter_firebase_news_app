import 'package:flutter/material.dart';
import 'package:flutter_firebase_news_app/feature/splash/splash_provider.dart';
import 'package:flutter_firebase_news_app/product/constants/image_constants.dart';
import 'package:flutter_firebase_news_app/product/widget/text/wavy_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  final splashProvider =
      StateNotifierProvider<SplashProvider, SplashState>((ref) {
    return SplashProvider();
  });

  @override
  void initState() {
    // TODO: implement initState
    ref.listen(splashProvider, (previous, next) {
      if (next.isRequaredHome != null) {
        if(next)
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(ImageConstants.appLogo),
            const WavyText(),
          ],
        ),
      ),
    );
  }
}
