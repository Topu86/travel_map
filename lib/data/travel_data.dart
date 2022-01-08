import 'package:travel_map/model/tranel_model.dart';

List<TravelModel> GetTravel(){
  List<TravelModel> list =[];
  TravelModel travelModel=TravelModel();
  travelModel.spotname='Gradle dependency';
  travelModel.timage='assets/f.jpg';
  travelModel.tdescription='	com.google.firebase:firebase-bom'
      'The latest Firebase BoM version contains the latest versions of each Firebase Android library.'
      ' To learn which library versions'
      ' are mapped to a specific BoM version, review the release notes for that BoM version';
  list.add(travelModel);
  return list;
}