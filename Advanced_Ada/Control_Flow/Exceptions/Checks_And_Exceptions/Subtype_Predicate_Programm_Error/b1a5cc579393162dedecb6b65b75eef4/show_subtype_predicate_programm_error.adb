with Some_Generic_Package;

procedure Show_Subtype_Predicate_Programm_Error is

   type Custom_Range is range 1 .. 5
     with Dynamic_Predicate =>
            4 not in Custom_Range;

   package P is new
     Some_Generic_Package (Custom_Range);
   use P;
begin
   Process;
end Show_Subtype_Predicate_Programm_Error;