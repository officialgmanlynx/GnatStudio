with States; use States;

procedure Show_Variant_Rec_Error is
   V : State_Or_Integer (Use_Enum => True);
begin
   V.I := 4;
   --  Error: V.I cannot be accessed because
   --         Use_Enum is set to True.
end Show_Variant_Rec_Error;