class Solution {
  List<int> productExceptSelf(List<int> nums) {
   
    int n = nums.length;
   List<int> p = List.filled(n, 1);
   List<int> pi = List.filled(n, 1);
   List<int> pii = List.filled(n, 1);
    int left=1;
    int right=1;
    for(int i=0;i<n;i++){
        p[i]=left;
        left=left*nums[i];
    }
    for(int i=n-1;i>=0;i--){
        pi[i]=right;
        right=right*nums[i];
    }
     for(int i=0;i<n;i++){
       pii[i]=p[i]*pi[i];
    }
    return pii;
  }
}