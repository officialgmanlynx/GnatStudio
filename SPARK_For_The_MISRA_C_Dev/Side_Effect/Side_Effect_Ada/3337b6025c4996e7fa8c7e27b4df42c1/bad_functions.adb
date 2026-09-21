package body Bad_Functions is

   Value : Integer := 0;

   function Set (V : Integer) return Integer is
      Previous : constant Integer := Value;
   begin
      Value := V;  --  ERROR
      return Previous;
   end Set;

   function Get return Integer is (Value);

end Bad_Functions;