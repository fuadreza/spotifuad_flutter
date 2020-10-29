import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number;

  @override
  void initState() {
    super.initState();
    number = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text('+'),
          onPressed: () {
            increaseCount();
          },
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(color: Colors.green[500], fontSize: 21),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  decreaseCount();
                },
                child: Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      '-',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              )
              /*FlatButton(
                onPressed: () {},
                child: Text('-'),
                color: Colors.red,
                textColor: Colors.white,
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  void increaseCount() {
    setState(() {
      number++;
    });
  }

  void decreaseCount() {
    setState(() {
      number--;
    });
  }
}
