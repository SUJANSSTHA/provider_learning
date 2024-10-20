//! it help to handle single and multiple value at the same time

import 'package:flutter/material.dart';

class ListMapProvider extends ChangeNotifier{
  List<Map<String, dynamic>> _mData = [];

  //events
  void addData(Map<String, dynamic> data){
    _mData.add(data);
    notifyListeners();

  }
  void updateData(Map<String, dynamic> updateData, int index){
    _mData[index]=updateData;
    notifyListeners();

  }
  void deleteData(int index){
// _mData.removeAt(index);
_mData.removeAt(index);
notifyListeners();
  }
  List<Map<String, dynamic>> getData()=> _mData;


}