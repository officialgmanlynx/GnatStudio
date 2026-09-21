with Custom_Records; use Custom_Records;

procedure Show_Record_Aggregates_Others is
   Dummy : Integer_Float;
begin
   --  OK: components selected by
   --      others have Integer type.
   Dummy := (Y | Z  => 256.0,
             others => 256);
end Show_Record_Aggregates_Others;