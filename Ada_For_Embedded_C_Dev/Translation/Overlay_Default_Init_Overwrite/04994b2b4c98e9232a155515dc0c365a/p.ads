package P is

   type Unsigned_8 is mod 2 ** 8 with Default_Value => 0;

   type Byte_Field is array (Natural range <>) of Unsigned_8;

   procedure Display_Bytes_Increment (V : in out Integer);
end P;