import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:module_home/presenter/stores/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Modular.get<HomeStore>();

  @override
  void initState() {
    super.initState();
    _controller.listenEvent();
  }

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
                return GestureDetector(
                  onTap: () {
                    _controller.sendEvent(index + 1);
                  },
                  child: Card(
                    child: Center(
                      child: Text('Item ${index + 1}'),
                    ),
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
