import 'package:flutter/material.dart';
import 'package:travel_map/data/travel_data.dart';
import 'package:travel_map/model/tranel_model.dart';
import 'package:travel_map/widgets/appbardecoration.dart';
class sp extends StatefulWidget {
  const sp({Key? key}) : super(key: key);

  @override
  _spState createState() => _spState();
}

class _spState extends State<sp> {
  List<TravelModel>travelList=[];
  @override
  void initState(){
    super.initState();
    travelList=GetTravel();
  }
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBarDecoration(context,'index'),
        body: _bodyUI(),
    ));
  }
  Widget _bodyUI(){
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1), itemBuilder: (context,index){
      return InkWell(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.only(bottom: 15,left: 10, right: 10),
          decoration: BoxDecoration(

            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(0,3)
              )
            ]
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                ),
                child: Image.asset('assets/f.jpg',
                height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              Text('Gradle dependency',textAlign: TextAlign.left,),
              Text('	com.google.firebase:firebase-bom'
               'The latest Firebase BoM version contains the latest versions of each Firebase Android library.'
                  ' To learn which library versions'
                  ' are mapped to a specific BoM version, review the release notes for that BoM version',maxLines: 4,textAlign: TextAlign.justify,)
              
            ],
          ),
        ),
      );
    });
  }
}
