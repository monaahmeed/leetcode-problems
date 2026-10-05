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
    bool leafSimilar(TreeNode* root1, TreeNode* root2) {
        vector<int> list1;
        vector<int> list2;

        check(root1, list1);
        check(root2, list2);

        return list1 == list2;
    }

private:
    void check(TreeNode* root, vector<int>& list) {
        if (root == nullptr) return;

        if (root->left == nullptr && root->right == nullptr) {
            list.push_back(root->val);
        }

        check(root->left, list);
        check(root->right, list);
    }
};