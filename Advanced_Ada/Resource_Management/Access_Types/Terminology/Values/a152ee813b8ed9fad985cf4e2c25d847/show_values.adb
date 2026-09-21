procedure Show_Values is

   --  Access-to-object type
   type Integer_Access is access Integer;

   I1, I2, I3 : Integer_Access;

begin
   I1 := new Integer;
   I3 := new Integer;

   --  Copying the access value of I1 to I2
   I2 := I1;

   --  Copying the designated value of I1
   I3.all := I1.all;

end Show_Values;