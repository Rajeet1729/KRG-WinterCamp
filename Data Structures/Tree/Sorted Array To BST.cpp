// Problem Link: https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/submissions/863157156/

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
class Solution
{
private:
    TreeNode *helper(int low, int high, vector<int> &nums)
    {
        if (low > high)
            return NULL;
        int mid = low + (high - low) / 2;
        TreeNode *root = new TreeNode(nums[mid]);
        root->left = helper(low, mid - 1, nums);
        root->right = helper(mid + 1, high, nums);
        return root;
    }

public:
    TreeNode *sortedArrayToBST(vector<int> &nums)
    {
        int n = nums.size();
        TreeNode *root = helper(0, n - 1, nums);
        return root;
    }
};