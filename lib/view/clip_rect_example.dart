import 'package:flutter/material.dart';

class ClipRectExample extends StatelessWidget {
  const ClipRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            children: [
              ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                    "https://pbs.twimg.com/media/FhTxQn6acAIbfr_?format=jpg&name=4096x4096"),
              ),
              ClipOval(
                clipBehavior: Clip.antiAlias,
                // borderRadius: BorderRadius.circular(12),
                child: Image.network(
                    "https://pbs.twimg.com/media/FhTxQn6acAIbfr_?format=jpg&name=4096x4096"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
