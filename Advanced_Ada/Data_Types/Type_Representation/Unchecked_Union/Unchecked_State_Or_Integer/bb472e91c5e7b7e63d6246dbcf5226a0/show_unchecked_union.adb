with States; use States;

procedure Show_Unchecked_Union is
   V : Unchecked_State_Or_Integer
         (Use_Enum => True);
begin
   V := (Use_Enum => True, S => On);
   Display_State_Value (V);

   V := (Use_Enum => False, I => 4);
   Display_State_Value (V);
end Show_Unchecked_Union;