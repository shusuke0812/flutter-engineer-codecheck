import 'package:flutter/material.dart';

Future<void> showLoadingDialog({
  required BuildContext context
}) async {
  showGeneralDialog(
    context: context, 
    barrierDismissible: false,
    transitionDuration: const Duration(microseconds: 250),
    barrierColor: Colors.black.withOpacity(0.5),
    pageBuilder: (context, animation, secondaryAnimation) {
      return const PopScope(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text("loading...")
            ],
          )
        )
      );
    }
  );
}