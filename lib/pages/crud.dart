import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class crudclass extends StatefulWidget {
  const crudclass({Key? key}) : super(key: key);

  @override
  _crudclassState createState() => _crudclassState();
}

class _crudclassState extends State<crudclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('user').snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData){

              return ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                primary: true,
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context,index) {
                  QueryDocumentSnapshot networkData = snapshot.data!.docs[index];

                  return Card(
                    color: Colors.blueGrey,
                    child: ListTile(title: Text(networkData['name'],style: TextStyle(fontSize: 30),),
                      subtitle: Text(networkData['email'],style: TextStyle(fontSize: 20),),
                    ),
                  );
                },
              );
            }
            return Center(
                child: CircularProgressIndicator());
          },

        ),
      ),

    );
  }
}
