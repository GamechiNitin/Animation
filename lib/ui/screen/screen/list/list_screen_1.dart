import 'package:flutter/material.dart';

class ListScreen1 extends StatefulWidget {
  const ListScreen1({super.key});

  @override
  State<ListScreen1> createState() => _ListScreen1State();
}

class _ListScreen1State extends State<ListScreen1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<Offset>> dataList = [];
  int itemCount = 5;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    dataList = List.generate(
      itemCount,
      (index) => Tween(begin: const Offset(-1, 0), end: Offset.zero).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            index * (1 / itemCount),
            1,
          ), // 0.2 s interval between all the list tiles
        ),
      ),
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Animation'),
      ),
      body: ListView.builder(
        itemCount: itemCount,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) => SlideTransition(
          position: dataList[index],
          child: ListTile(
            dense: true,
            title: Text('Index $index'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: const Text('Animate'),
      ),
    );
  }
}
