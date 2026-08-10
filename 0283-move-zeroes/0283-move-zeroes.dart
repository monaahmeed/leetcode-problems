class Solution {
  void moveZeroes(List<int> nums) {
    int writeIndex = 0;
    int n = nums.length;

   for (int i = 0; i < n; i++) {
      if (nums[i] != 0) {
        nums[writeIndex] = nums[i];
        writeIndex++;
      }
    }

   while (writeIndex < n) {
      nums[writeIndex] = 0;
      writeIndex++;
    }
  }
}