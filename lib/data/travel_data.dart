import 'package:travel_map/model/tranel_model.dart';

List<TravelModel> GetTravel(){
  List<TravelModel> list =[];
  TravelModel travelModel=TravelModel();
  travelModel.spotname='Gradle dependency';
  travelModel.timage='assets/f.jpg';
  travelModel.tdescription='	Cox’s Bazar is a town on the southeast coast of Bangladesh. '
      'It’s known for its very long, sandy beachfront, stretching from Sea Beach in the north'
      ' to Kolatoli Beach in the south. ';
  list.add(travelModel);
  return list;
}