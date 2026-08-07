class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int n = nums.length;
    List<int> res = List.filled(n, 1);
    
    int left = 1;
    for (int i = 0; i < n; i++) {
      res[i] = left;
      left *= nums[i];
    }

   int right = 1;
    for (int i = n - 1; i >= 0; i--) {
      res[i] *= right;
      right *= nums[i];
    }

    return res;
  }
}