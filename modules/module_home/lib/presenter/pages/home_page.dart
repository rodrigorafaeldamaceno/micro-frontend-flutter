import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 0.7,
              ),
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Center(
                    child: Text('Item ${index + 1}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
