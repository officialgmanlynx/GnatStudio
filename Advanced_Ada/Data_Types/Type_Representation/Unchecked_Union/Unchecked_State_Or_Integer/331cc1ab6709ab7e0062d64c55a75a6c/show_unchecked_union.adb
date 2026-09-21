with States; use States;

procedure Show_Unchecked_Union is
   V : State_Or_Integer (Use_Enum => True);
begin
   V.S := On;
   Display_State_Value
     (Unchecked_State_Or_Integer (V));
end Show_Unchecked_Union;