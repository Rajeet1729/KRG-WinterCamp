ListNode* commonElement(ListNode* A, ListNode* b, ListNode* c)
{
    ListNdoe* res = new ListNode(-1);

    while (A && B && C)
    {

        if (A->next == B->next && C->next == B->next){
            res->next = A;
            res = res->next;
            A = A->next;
            B = B->next;
            C = C->next;
        }

        else if (A->val < B->val) 
             A = A->next; 
  
        else if (B->val < C->val) 
             B = B->next; 
  
         else
             C = C->next; 
    }
}
