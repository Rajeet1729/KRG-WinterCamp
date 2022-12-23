// Problem Link: https://leetcode.com/problems/palindrome-linked-list/submissions/

// Time Complexity: O(n)
// Space Complexity: O(1)

/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution
{
private:
    ListNode *reverseTheList(ListNode *head)
    {
        ListNode *curr = head;
        ListNode *prev = NULL;
        ListNode *prevPrev = NULL;
        while (curr)
        {
            prevPrev = prev;
            prev = curr;
            curr = curr->next;
            prev->next = prevPrev;
        }
        return prev;
    }

public:
    bool isPalindrome(ListNode *head)
    {
        ListNode *slow = head;
        ListNode *fast = head;
        while (fast->next && fast->next->next)
        {
            slow = slow->next;
            fast = fast->next->next;
        }
        slow->next = reverseTheList(slow->next);
        slow = slow->next;
        while (slow)
        {
            if (head->val != slow->val)
                return false;
            slow = slow->next;
            head = head->next;
        }
        return true;
    }
};