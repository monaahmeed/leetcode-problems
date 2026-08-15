class Solution {
public:
    int maxVowels(std::string s, int k) {
      
        std::ios_base::sync_with_stdio(false);
        std::cin.tie(NULL);

        int count = 0;
        auto isVowel = [](char ch) {
            return ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u';
        };

       for (int i = 0; i < k; i++) {
            if (isVowel(s[i])) {
                count++;
            }
        }

        int maxCount = count;

       for (int i = k; i < s.length(); i++) {
           
            if (isVowel(s[i - k])) {
                count--;
            }
           
            if (isVowel(s[i])) {
                count++;
            }

            maxCount = std::max(maxCount, count);

           
            if (maxCount == k) return k;
        }

        return maxCount;
    }
};