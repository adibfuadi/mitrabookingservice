import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.asset("assets/booking.png", height: 80, width: 80,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Service Motor", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                )

              ],
            ),
          );
        }
    );
  }
}


