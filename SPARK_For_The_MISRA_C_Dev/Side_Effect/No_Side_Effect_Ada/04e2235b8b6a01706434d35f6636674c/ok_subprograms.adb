package body Ok_Subprograms is

   Value : Integer := 0;

   procedure Set (V : Integer; Prev : out Integer) is
   begin
      Prev := Value;
      Value := V;
   end Set;

   function Get return Integer is (Value);

end Ok_Subprograms;