import 'dart:collection';

class Solution {
  String predictPartyVictory(String senate) {
    int n = senate.length;
    Queue<int> rQ = Queue<int>();
    Queue<int> dQ = Queue<int>();
    for (int i = 0; i < n; i++) {
      if (senate[i] == 'R') {
        rQ.add(i);
      } else {
        dQ.add(i);
      }
    }

    while (rQ.isNotEmpty && dQ.isNotEmpty) {
      int rIndex = rQ.removeFirst();
      int dIndex = dQ.removeFirst();

      if (rIndex < dIndex) {
        rQ.add(rIndex + n);
      } else {
        dQ.add(dIndex + n);
      }
    }

    return rQ.isEmpty ? "Dire" : "Radiant";
  }
}