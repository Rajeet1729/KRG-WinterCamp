// Problem Link: https://leetcode.com/problems/remove-nth-node-from-end-of-list/description/

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
    int findLen(ListNode *head)
    {
        int len = 0;
        while (head)
        {
            head = head->next;
            len++;
        }
        return len;
    }

public:
    ListNode *removeNthFromEnd(ListNode *head, int n)
    {
        int nFront = findLen(head) - n;
        if (nFront == 0)
        {
            head = head->next;
            return head;
        }
        nFront--;
        ListNode *tHead = head;
        while (nFront > 0 && tHead)
            tHead = tHead->next, nFront--;
        if (tHead && tHead->next)
            tHead->next = tHead->next->next;
        else if (tHead && !tHead->next)
            return NULL;
        return head;
    }
};