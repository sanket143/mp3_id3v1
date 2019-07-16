import 'package:mp3_id3v1/mp3_id3v1.dart' as mp3utils;

void main(){
  print(mp3utils.getMetaInfo('./mp3_id3v1_test.mp3'));
}