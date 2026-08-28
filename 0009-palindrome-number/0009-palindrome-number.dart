class Solution {
  bool isPalindrome(int x) {
    String s=x.toString();
    int n=s.length;
    int j=n-1;
    for(int i=0;i<n/2;i++){
        if(s[i]!=s[j])
            return false;
        j--;
    }
    return true;
  }
}