import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});
  static const name = 'snackbars';
  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Holaaa'),
        action: SnackBarAction(label: 'ok', onPressed: () {}),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('estas seguro?'),
              content: const Text('Otro texto'),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Camcelar'),
                ),
                FilledButton(
                  onPressed: () => context.pop(),
                  child: const Text('Aceptar'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SanckBar y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                    context: context, children: [const Text('Fraguen')]);
              },
              child: const Text('licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar dialogos'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
