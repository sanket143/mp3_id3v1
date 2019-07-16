import 'package:flutter_test/flutter_test.dart';
import 'package:mp3_id3v1/mp3_id3v1.dart' as mp3utils;

void main() {
  print(mp3utils.getMetaInfo('./mp3_id3v1_test.mp3'));
  test('adds one to input values', () {
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
    // expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });
}
