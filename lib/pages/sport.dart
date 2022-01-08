import 'package:flutter/material.dart';
import 'package:travel_map/widgets/appbardecoration.dart';
class sp extends StatefulWidget {
  const sp({Key? key}) : super(key: key);

  @override
  _spState createState() => _spState();
}

class _spState extends State<sp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBarDecoration(context,'index'),
        body: _bodyUI(),
    ));
  }
  Widget _bodyUI(){
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2
    ), itemBuilder: (context,index){
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
          child: Column(),
        ),
      );
    });
  }
}
