import 'package:flutter/material.dart';

class Moblie extends StatelessWidget {
  const Moblie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          title: Center(
              child: Text(
            "Moblie",
            style: TextStyle(fontSize: 20),
          )),
        ),
        /////////////////////////
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.maxFinite,
                height: 200,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.purple[700],
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.maxFinite,
                      height: 100,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.purple[700],
                        borderRadius: BorderRadius.circular(25),
                      ),
                    );
                  },
                  itemCount: 12),
            )
          ]),
        ),
      ),
    );
  }
}
