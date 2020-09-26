import 'package:flutter/material.dart';

class Show extends StatelessWidget {
  final String title;
  final List <String> imagePath;
  final List <int> count;
  final List <String> exercise;
  Show(this.title,this.imagePath,this.count,this.exercise);
  Widget exercises(String exercise,String image,int count){
    print('00');
    return Container(
        margin: EdgeInsets.all(10),
        height: 100,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 100,
                height: 100,
                color: Colors.grey,
                child: Image.asset(image),
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text('$exercise',style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 10,),
                    Text('$count',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,),
                    ),
                  ],
                )
              ),
            ),
            SizedBox(
              width: 12
            )
          ],
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: ListView.builder(
          itemBuilder: (_,int index) => exercises(exercise[index],imagePath[index],count[index]),
          itemCount: imagePath.length,
        ),
      ),
    );
  }
}
