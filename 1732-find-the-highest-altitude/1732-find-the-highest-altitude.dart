class Solution {
  int largestAltitude(List<int> gain) {
    int cur=0;
    int maxx=0;
    for(int i in gain){
        cur+=i;
        maxx=max(cur,maxx);
    }
    return maxx;
  }
}