procedure Show_Illegal_Ada_Code is

   function F (X : in out Integer) return Integer is
      Tmp : constant Integer := X;
   begin
      X := X + 1;
      return Tmp;
   end F;

   Dummy : Integer := 0;

begin
   Dummy := F (Dummy) - F (Dummy); -- ??
end Show_Illegal_Ada_Code;