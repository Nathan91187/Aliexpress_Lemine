import 'package:flutter/material.dart';
class Datanotfound extends StatelessWidget {
  const Datanotfound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Padding(padding: EdgeInsets.all(10),
            child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                          "Data Not Found",
                          style: Theme.of(context).textTheme.titleSmall
                      ),
                    ),

                  ),
                  Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/');
                          },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black87
                              ),
                              child: Text(
                                  "Back to Home",
                                  style: Theme.of(context).textTheme.titleSmall
                              )
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}
