import 'package:flutter/cupertino.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_provider.dart';

class ListModel
{
  String title;
  String price;

  ListModel({required this.title, required this.price});

  factory ListModel.fromMap(Map<String,dynamic>map)
  {
    return ListModel(
      title: map[ListProvider.LISTPROVIDER_TITLE],
      price: map[ListProvider.LISTPROVIDER_PRICE],
    );
  }

  Map<String,dynamic>toMap()
  {
    return
      {
        ListProvider.LISTPROVIDER_TITLE : title,
        ListProvider.LISTPROVIDER_PRICE : price,
      };
  }
}