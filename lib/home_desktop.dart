import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Center(
              child: Text(
            "Desktop",
            style: TextStyle(fontSize: 20),
          )),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.maxFinite,
                    height: 200,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                  width: double.maxFinite,
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
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(25),
                          ),
                        );
                      },
                      itemCount: 12),
                )
              ]),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  width: 200,
                  height: double.maxFinite,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(25),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
