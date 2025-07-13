import 'package:flutter/material.dart';

class ApiErrorScreen extends StatelessWidget {
  final String errorMsg;
  const ApiErrorScreen({required this.errorMsg, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.warning, size: 72, color: Colors.yellowAccent),
              const SizedBox(height: 16),
              const Text("Oops!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text(errorMsg, textAlign: TextAlign.center),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  //TODO:: Retry logic from the dio interceptor, implemented later.
                  // User cannot pop from this screen unless he clicks on Retry button
                },
                child: const Text("Retry"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
