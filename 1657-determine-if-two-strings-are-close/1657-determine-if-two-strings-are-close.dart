class Solution {
  bool closeStrings(String word1, String word2) {
    if (word1.length != word2.length) return false;

    List<int> freq1 = List.filled(26, 0);
    List<int> freq2 = List.filled(26, 0);

    int codeA = 'a'.codeUnitAt(0);

    for (int i = 0; i < word1.length; i++) {
      freq1[word1.codeUnitAt(i) - codeA]++;
      freq2[word2.codeUnitAt(i) - codeA]++;
    }

    for (int i = 0; i < 26; i++) {
      if ((freq1[i] == 0 && freq2[i] > 0) || (freq1[i] > 0 && freq2[i] == 0)) {
        return false;
      }
    }

    freq1.sort();
    freq2.sort();

    for (int i = 0; i < 26; i++) {
      if (freq1[i] != freq2[i]) {
        return false;
      }
    }

    return true;
  }
}