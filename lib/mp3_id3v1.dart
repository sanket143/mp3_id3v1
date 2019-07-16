import 'dart:io';
import 'dart:convert';

Map<String, String> getMetaInfo(String mp3FilePath){
  final file = new File(mp3FilePath);

  List<int> input = file.readAsBytesSync();
  List<int> metatags = input.sublist(input.length - 128, input.length);

  var _tag = metatags.sublist(0, 3); 
  var _title = metatags.sublist(3, 33);
  var _artist = metatags.sublist(33, 63);
  var _album = metatags.sublist(63, 93);
  var _year = metatags.sublist(93, 97);
  var _comment = metatags.sublist(97, 127);
  var _genre = metatags[127];

  Map<String, String> metaInfo = {
    "tag": latin1.decode(_tag),
    "title": latin1.decode(_title),
    "artist": latin1.decode(_artist),
    "album": latin1.decode(_album),
    "year": latin1.decode(_year),
    "comment": latin1.decode(_comment),
    "genre": _genre.toString()
  };

  return metaInfo;
}