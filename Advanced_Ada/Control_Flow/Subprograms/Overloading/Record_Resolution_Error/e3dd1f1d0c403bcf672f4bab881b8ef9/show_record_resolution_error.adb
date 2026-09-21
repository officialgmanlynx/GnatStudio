procedure Show_Record_Resolution_Error is

   type Complex is record
      Re, Im : Float;
   end record;

   procedure Grind (X : Complex) is null;
   procedure Grind (X : String) is null;
begin
   Grind (X => (Re => 1.0, Im => 1.0));
   --  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   --  Illegal!
end Show_Record_Resolution_Error;