import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_news_app/product/constants/color_constants.dart';
import 'package:flutter_firebase_news_app/product/constants/string_constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WavyText extends ConsumerWidget {
  const WavyText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(StringConstants.appName,
                    textStyle:
                        Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.white,
                            )),
              ],
            );
  }
}