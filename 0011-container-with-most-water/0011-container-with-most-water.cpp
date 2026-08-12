#include <vector>
#include <algorithm>

class Solution {
public:
    int maxArea(std::vector<int>& height) {
       std::ios_base::sync_with_stdio(false);
        std::cin.tie(NULL);

        int i = 0;
        int j = height.size() - 1;
        int maxA = 0;

        while (i < j) {
           
            int currentArea = (j - i) * std::min(height[i], height[j]);
            maxA = std::max(maxA, currentArea);
            
            if (height[i] < height[j]) {
                i++;
            } else {
                j--;
            }
        }

        return maxA;
    }
};