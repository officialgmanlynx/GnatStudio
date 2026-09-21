package body Init is

   procedure F (B : Boolean; P : out Unsigned_16) is
   begin
      if B then
         P := 3;
      end if;
   end F;

   procedure G is
      U : Unsigned_16;
   begin
      F (False, U);

      if U = 3 then
         null;
      end if;
   end G;

end Init;