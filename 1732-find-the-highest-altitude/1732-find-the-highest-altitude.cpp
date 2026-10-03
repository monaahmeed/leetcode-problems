class Solution {
public:
    int largestAltitude(vector<int>& gain) {
     int cur=0;
     int maxx=0;
     for(int i : gain){
        cur+=i;
        maxx=max(cur,maxx);
     }
     return maxx;
    }

};