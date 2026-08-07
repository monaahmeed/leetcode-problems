class Solution {
  String reverseWords(String s) {
    StringBuffer result = StringBuffer();
    int i = s.length - 1;

    while (i >= 0) {
     
      while (i >= 0 && s[i] == ' ') {
        i--;
      }
      
     
      if (i < 0) break;

     
      int end = i;

     
      while (i >= 0 && s[i] != ' ') {
        i--;
      }

     
      if (result.isNotEmpty) {
        result.write(' ');
      }
      
     
      for (int j = i + 1; j <= end; j++) {
        result.write(s[j]);
      }
    }

    return result.toString();
  }
}