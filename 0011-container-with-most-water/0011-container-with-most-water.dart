import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int i = 0;
    int j = height.length - 1;
    int maxA = 0;

    while (i < j) {
     
      int currentArea = (j - i) * min(height[i], height[j]);
      if (currentArea > maxA) {
        maxA = currentArea;
      }

     if (height[i] < height[j]) {
        i++;
      } else {
        j--;
      }
    }

    return maxA;
  }
}