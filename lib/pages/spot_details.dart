import 'package:flutter/material.dart';
import 'package:travel_map/widgets/appbardecoration.dart';
class sportdet extends StatefulWidget {
 String? spotname;
 String? timage;
 String? tdescription;

  @override
  _sportdetState createState() => _sportdetState();

 sportdet({this.spotname, this.timage, this.tdescription});
}

class _sportdetState extends State<sportdet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context, '${widget.spotname}'),
      body: Column(
        children: [
          ClipRRect(child: Image.asset('assets/f.jpg'),),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Text('Coxs Bazar Sea beach',style: TextStyle(fontSize: 20),),),
          SizedBox(height: 20,),
          Container(
        padding: EdgeInsets.all(10),
            child: Text('Aggameda Khyang monastery is home to bronze statues and'
                ' centuries-old Buddhist manuscripts. South of town, the tropical'
                ' rainforest of Himchari National Park has waterfalls and many birds.'
                ' North, sea turtles breed on nearby Sonadia Island.',style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,)),

        ],
      ),
    );
  }
}
