import 'package:flutter/material.dart';
import 'package:travel_map/data/travel_data.dart';
import 'package:travel_map/model/tranel_model.dart';
import 'package:travel_map/pages/spot_details.dart';
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
      // appBar: appBarDecoration(context, '${widget.spotname}'),
        body: _bodyUI(),
    ));
  }
  Widget _bodyUI(){
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: travelList.length),
        itemBuilder: (context,index){
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>sportdet(
            spotname:travelList[index].spotname,
            timage:travelList[index].timage,
            tdescription:travelList[index].tdescription,

          )));},
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
                child: Image.asset('${travelList[index].timage}',
                height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              Text('${travelList[index].spotname}',textAlign: TextAlign.left,),
              Text('${travelList[index].tdescription}',maxLines: 4,textAlign: TextAlign.justify,)
              
            ],
          ),
        ),
      );
    });
  }
}
