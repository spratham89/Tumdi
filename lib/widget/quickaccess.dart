import 'package:flutter/material.dart';

class QuickAccess extends StatelessWidget {
  const QuickAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
       crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8),
      
         height: 50,
            width: 50,
           decoration:BoxDecoration(
          
             
            borderRadius:BorderRadius.circular(20),
              border:Border.all(   width: 1,
              color:Colors.black,
            
              ),),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flutter-logo.png'),
            const Text("Directory",style: TextStyle(fontSize: 14.0,color: Colors.black),),
          ],
        ),
      ),
           Container(
        padding: const EdgeInsets.all(8),
      
         height: 50,
            width: 50,
           decoration:BoxDecoration(
          
             
            borderRadius:BorderRadius.circular(20),
              border:Border.all(   width: 1,
              color:Colors.black,
            
              ),),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flutter-logo.png'),
            const Text("Business",style: TextStyle(fontSize: 14.0,color: Colors.black),),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
      
         height: 50,
            width: 50,
           decoration:BoxDecoration(
          
             
            borderRadius:BorderRadius.circular(20),
              border:Border.all(   width: 1,
              color:Colors.black,
            
              ),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flutter-logo.png'),
            const Text("Matrimonial",style: TextStyle(fontSize: 14.0,color: Colors.black),),
          ],
        ),
      ),
        
        ],
      ),
    );
  }
}