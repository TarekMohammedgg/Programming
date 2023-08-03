import 'package:flutter/material.dart';

class Pratic extends StatelessWidget {
  const Pratic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body : Center(


      child: ElevatedButton(child: const Text("show Alert") , 
      onPressed: () {showDialog(context : context , builder:  (context) => const AlertDialog(title :  Text ("add some thing "),content:  Text("the first step "),) , );    }  , 
      
      ),
    )) ; 
  }
}