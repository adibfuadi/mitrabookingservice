import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/2.0)
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
                    child: Text("Service Motor", style: TextStyle(fontSize: 16, height: 1.2 ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  )

                ],
              ),
            );
          }
      ),
    );
  }
}


