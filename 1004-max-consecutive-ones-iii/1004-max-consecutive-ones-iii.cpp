class Solution {
public:
    int longestOnes(vector<int>& nums, int k) {
        std::ios_base::sync_with_stdio(false);
        std::cin.tie(NULL);
        int a = 0;
        int zeros = 0;
        int left = 0;
        for (int right = 0; right < nums.size(); right++) {
            if (nums[right] == 0) {
                zeros++;
            }
                while (zeros > k) {
                    if (nums[left] == 0) {
                        zeros--;
                    }
                    left++;
                }
            

            a = max(a, right - left + 1);
        }
        return a;
    }
};