//Problem Link: https://practice.geeksforgeeks.org/problems/delete-alternate-nodes/1?utm_source=gfg&utm_medium=article&utm_campaign=bottom_sticky_on_article

//Time Complexity: O(N)
//Space Complexity: O(1)

void deleteAlt(struct Node *head)
{
    Node *tempHead = head;
    while (tempHead && tempHead->next)
    {
        tempHead->next = tempHead->next->next;
        tempHead = tempHead->next;
    }
}