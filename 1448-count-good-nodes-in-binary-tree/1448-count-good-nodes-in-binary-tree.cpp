/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    int goodNodes(TreeNode* root) {
        return maxCount(root,root->val);
    }
private:
    int maxCount(TreeNode* root, int maxx){
        if(!root){
            return 0;
        }
        int count = (root->val >= maxx);
        maxx=max(root->val,maxx);
        count+=maxCount(root->left,maxx);
        count+=maxCount(root->right,maxx);
        return count;
    }
};