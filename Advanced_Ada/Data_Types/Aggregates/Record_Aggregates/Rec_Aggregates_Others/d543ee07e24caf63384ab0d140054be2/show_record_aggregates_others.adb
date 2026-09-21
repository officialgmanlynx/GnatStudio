with Custom_Records; use Custom_Records;

procedure Show_Record_Aggregates_Others is
   Dummy : Integer_Float;
begin
   --  ERROR: components selected by
   --         others must be of same
   --         type.
   Dummy := (others => 256);
end Show_Record_Aggregates_Others;