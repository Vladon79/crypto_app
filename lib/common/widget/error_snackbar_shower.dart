import 'package:flutter/material.dart';

mixin ErrorSnackbarShower {
  Future<void> showError(BuildContext context, Object error) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error.toString()),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 5),
      ),
    );
  }
}
