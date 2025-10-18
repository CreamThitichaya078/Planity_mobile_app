import 'package:flutter/material.dart';

class ScoreBoard extends StatefulWidget {
  final String title;
  final Color backgroundColor;
  
  const ScoreBoard({
    super.key,
    required this.title,
    required this.backgroundColor,
  });

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${widget.title}: $_counter',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),

          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
