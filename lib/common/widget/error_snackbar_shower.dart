import 'package:flutter/material.dart';
import 'package:test_project/common/core/project_exception.dart';

mixin ErrorSnackbarShower {
  Future<void> showError(BuildContext context, Object exception) async {
    String text = 'An unknown error has occurred.';

    if (exception is ProjectException) {
      text = exception.message;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 5),
      ),
    );
  }
}
