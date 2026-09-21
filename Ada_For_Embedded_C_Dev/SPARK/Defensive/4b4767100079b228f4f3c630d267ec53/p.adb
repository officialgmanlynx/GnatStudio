package body P is

   procedure Read (V : out Character) is
   begin
      if Index not in Data'Range then
         V := Character'First;
         return;
      end if;

      V := Data (Index);
      Index := Index + 1;
   end Read;
end P;