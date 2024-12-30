import 'package:flutter/material.dart';

//A class is declared called CounterScreen
//A StatelessWidget is a widget that has no internal state
class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

   int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Counter screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),

            Text('Click${ clickCounter == 1 ? '' : 's'}', style: TextStyle(fontSize: 25))
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            setState((){
            clickCounter = clickCounter + 1;
            });
        },
        child: const Icon( Icons.plus_one ),
      ),
    );
  }
}