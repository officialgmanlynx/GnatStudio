package Serializer is

   type Bit_Field is array (Natural range <>) of Boolean with Pack;

   procedure Transmit (B : Bit_Field);

end Serializer;