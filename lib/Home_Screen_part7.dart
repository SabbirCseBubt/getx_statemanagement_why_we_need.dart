
import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x=0;
   @override
   void initState() {
     // TODO: implement initState
     super.initState();
     Timer.periodic(Duration(seconds: 1), (timer) {
       x++;
       setState(() {

       });

     });
   }
  @override
  Widget build(BuildContext context) {

    print("rebuild");
    return  Scaffold(
      appBar: AppBar(title: Text("Part 7"),
      ),

      body: Column(
        children: [
          Center(
            child: Text(x.toString(),
            style: TextStyle(
              fontSize: 40
            ),
            ),
          ),
          Expanded(
            
            child: ListView.builder(

                itemCount: 100,
                itemBuilder: (context,index)
            {
            return ListTile(
              title: Text(index.toString()),


            );


            }

            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: ()
        {
          x++;
          setState(() {

          });


        },
      ),
      
    );
  }
}
