import 'package:bookly_app/core/utilities/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/text_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> textAnimation;

  @override
  void initState() {
    super.initState();
    initTextAnimation();
    goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        TextAnimation(textAnimation: textAnimation),
      ],
    );
  }

  void initTextAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    textAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void goToHome() {
    Future.delayed(
      Duration(seconds: 2),
      () => GoRouter.of(context).pushReplacement('/homeScreen'),
    );
  }
}
