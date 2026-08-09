class Solution {
  int compress(List<String> chars) {
    int write = 0;
    int read = 0; 
    int n = chars.length;

    while (read < n) {
      String currentChar = chars[read];
      int startPos = read;

     
      while (read < n && chars[read] == currentChar) {
        read++;
      }

      int count = read - startPos;
      chars[write++] = currentChar;

     if (count > 1) {
       
        for (String digit in count.toString().split('')) {
          chars[write++] = digit;
        }
      }
    }

    return write;
  }
}