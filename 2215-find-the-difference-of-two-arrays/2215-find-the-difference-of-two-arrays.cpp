class Solution {
public:
    vector<vector<int>> findDifference(vector<int>& nums1, vector<int>& nums2) {
        std::unordered_set<int> set1(nums1.begin(), nums1.end());
        std::unordered_set<int> set2(nums2.begin(), nums2.end());

        std::vector<int> onlyInNums1;
        std::vector<int> onlyInNums2;

        for (int num : set1) {
            if (!set2.contains(num)) {
                onlyInNums1.push_back(num);
            }
        }
        for (int num : set2) {
            if (!set1.contains(num)) {
                onlyInNums2.push_back(num);
            }
        }

        return {onlyInNums1, onlyInNums2};
    }
};