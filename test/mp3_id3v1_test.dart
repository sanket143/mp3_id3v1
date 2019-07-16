import 'package:flutter_test/flutter_test.dart';
import 'package:mp3_id3v1/mp3_id3v1.dart' as mp3utils;

void main() {
  test('retrive meta info of mp3 file', () {
    Map<String, String> exptectedInfo = {
      "tag": "TAG",
      "title": "Maid with the Flaxen Hair",
      "artist": "Richard Stoltzman/Slovak Radio",
      "album": "Fine Music, Vol. 1",
      "year": "2008",
      "comment": "Navona Records              \x00\x02",
      "genre": "12"
    };

    final metaInfo = mp3utils.getMetaInfo('./test/mp3_id3v1_test.mp3');

    expect(metaInfo, exptectedInfo);
  });
}
