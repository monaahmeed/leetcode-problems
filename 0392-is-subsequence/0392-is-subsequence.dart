class Solution {
  bool isSubsequence(String s, String t) {
    int len=0;
    if(s.isEmpty)
        return true;
        if(s.length>t.length)
            return false;
    for(int i=0;i<t.length;i++){
        if(s[len]==t[i])
            len++;
        if(len==s.length)
            return true;
    }
    return false;
  }
}