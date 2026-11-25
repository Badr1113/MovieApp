import 'package:flutter/material.dart';
import '../resources/color_manager.dart';

/// FROM Mohamed Fawzy You can Change it as you need or remove it


class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorManager.primaryYellow,
      ),
    );
  }
}
