import 'dart:math';

class Solution {
  String gcdOfStrings(String str1, String str2) {
   
    if (str1 + str2 != str2 + str1) {
      return "";
    }
    int gcdLength = str1.length.gcd(str2.length);
    return str1.substring(0, gcdLength);
  }
}