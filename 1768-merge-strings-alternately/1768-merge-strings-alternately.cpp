class Solution {
public:
    string mergeAlternately(string word1, string word2) {
        int l1 =0;
        int l2=0;
        
        string s= "";
        while(l1<word1.length() || l2 < word2.length()){
            if(l1<word1.length()){
                s.push_back(word1[l1]);
                l1++;
            }
            if(l2<word2.length()){
               s.push_back(word2[l2]);
                l2++;
            }
        }
        return s;
    }
};