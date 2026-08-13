class Solution {
public:
    int maxOperations(std::vector<int>& nums, int k) {
       
        std::ios_base::sync_with_stdio(false);
        std::cin.tie(NULL);

        std::unordered_map<int, int> freq;
        int count = 0;

        for (int num : nums) {
            int complement = k - num;

           if (freq[complement] > 0) {
                count++;
                freq[complement]--;
            } else {
                freq[num]++;
            }
        }

        return count;
    }
};