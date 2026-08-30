class Solution {
public:
    string removeStars(string s) {
        int k = 0;
        for (int i = 0; i < s.length(); i++) {
            if (s[i] == '*') {
                k--;
            } else {
                s[k++] = s[i];
            }
        }
        return s.substr(0, k);
    }
};