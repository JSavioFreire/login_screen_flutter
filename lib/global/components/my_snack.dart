import 'package:flutter/material.dart';

SnackBar myShowSnackBar(String message) {
  return SnackBar(
    content: Text(
      message,
    ),
    duration: const Duration(seconds: 3),
  );
}
