import 'dart:ui';
class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;
  String img;

  ItemModel({this.expanded: false,
    required this.headerItem,
    required this.discription,
    required this.colorsItem,
    required this.img});
}