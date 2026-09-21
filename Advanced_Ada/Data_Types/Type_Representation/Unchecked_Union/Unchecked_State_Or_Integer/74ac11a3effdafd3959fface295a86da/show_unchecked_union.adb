with States; use States;

procedure Show_Unchecked_Union is
   V : Unchecked_State_Or_Integer
         (Use_Enum => True);
begin
   V.S := On;
   Display_State_Value (V);

   V.I := 4;
   --  Error: cannot directly assign to V.I,
   --         as Use_Enum is set to True.

   Display_State_Value (V);
end Show_Unchecked_Union;