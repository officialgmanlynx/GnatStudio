package body Init is

   procedure F (B : Boolean) is
   begin
      if B then
         U := 3;
      end if;
   end F;

   procedure G is
   begin
      F (False);

      if U = 3 then
         null;
      end if;
   end G;

end Init;