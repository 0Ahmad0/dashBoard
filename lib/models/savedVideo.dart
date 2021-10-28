import 'package:flutter/cupertino.dart';

class SaveVideo{
  String link;
  String min_type;
  String description;
  String category;
  String date;
  String image;

  SaveVideo(
      {
      @required this.link,
      @required this.min_type,
      @required this.description,
      @required this.category,
      @required this.date,
      @required this.image
      });
}
List<SaveVideo> savedVideo = [];
