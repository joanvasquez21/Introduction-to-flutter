import 'package:flutter/material.dart';

//A class is declared called CounterScreen
//A StatelessWidget is a widget that has no internal state
class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreen();
}

class _CounterFunctionsScreen extends State<CounterFunctionsScreen> {

   int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Counter FUNCTIONS Screen'),
        actions: [
           IconButton(
            icon: const Icon(Icons.refresh_rounded), 
            onPressed: () { 
              setState(() {
                clickCounter = 0;
              });
           },
          ),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
         
        children: [
        CustomBotton(icon: Icons.refresh_outlined, onPressed: (){
          clickCounter = 0;
          setState(() {
            
          });
        },),
        const SizedBox(height: 10),
        CustomBotton(icon: Icons.exposure_minus_1_outlined, onPressed: (){
          clickCounter--;
          setState(() {
            
          });
        },),
        const SizedBox(height: 10),
        CustomBotton(icon: Icons.plus_one, onPressed: (){
          clickCounter++;
          setState((){});
        }),
      ],)
    );
  }
}

class CustomBotton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;
  
  const CustomBotton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon( icon ),
    );
  }
}