import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Ninja()
  ));


class Ninja extends StatefulWidget {
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter +=1;
          });
        },
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/id.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[800],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'XYZ',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 35.0,
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'NINJA LEVEL',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$counter',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 35.0,
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.email,
                  color: Colors.grey[600],
                  size: 30.0,),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text('xyz@xyz.com',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}