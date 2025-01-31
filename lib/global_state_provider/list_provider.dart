import 'package:flutter/cupertino.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_model.dart';

class ListProvider extends ChangeNotifier
{
  static const String LISTPROVIDER_TITLE = "title";
  static const String LISTPROVIDER_PRICE  = "price";


  List<Map<String,dynamic>> _mData = [];

  ListProvider._();
  static ListProvider getInstance() => ListProvider._();

  List<Map<String,dynamic>>getData()=>_mData;

  addData({required ListModel newListModel})
  {
    _mData.add(newListModel.toMap());
    notifyListeners();
  }

  updateData({required int index, required ListModel updateListModel})
  {
    _mData[index] = (updateListModel.toMap());
    notifyListeners();
  }

  deleteData({required int index})
  {
    _mData.removeAt (index);
    notifyListeners();
  }

}