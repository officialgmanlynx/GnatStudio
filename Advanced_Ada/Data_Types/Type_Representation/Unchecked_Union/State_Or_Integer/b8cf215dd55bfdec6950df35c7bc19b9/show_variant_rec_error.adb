with States; use States;

procedure Show_Variant_Rec_Error is
   V : State_Or_Integer (Use_Enum => True);
begin
   V.S := On;
   Display_State_Value (V);
end Show_Variant_Rec_Error;