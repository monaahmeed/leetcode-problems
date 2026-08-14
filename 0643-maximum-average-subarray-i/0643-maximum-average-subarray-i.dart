class Solution {
  double findMaxAverage(List<int> nums, int k) {
    double currentSum = 0;
    for (int i = 0; i < k; i++) {
      currentSum += nums[i];
    }

    double maxSum = currentSum;
    for (int i = k; i < nums.length; i++) {
      currentSum += nums[i] - nums[i - k];
      maxSum = max(maxSum, currentSum);
    }

    return maxSum/k;
  }
}