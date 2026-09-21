package body P is

   procedure Read (V : out Character) is
   begin
      V := Data (Index);
      Index := Index + 1;
   end Read;

end P;