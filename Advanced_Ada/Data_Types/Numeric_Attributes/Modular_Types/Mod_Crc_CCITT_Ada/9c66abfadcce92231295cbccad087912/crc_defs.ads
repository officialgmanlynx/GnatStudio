package Crc_Defs is

    type Byte is mod 2 ** 8;
    type Crc  is mod 2 ** 16;

    type Byte_Array is
      array (Positive range <>) of Byte;

    function Crc_CCITT (A : Byte_Array)
                        return Crc;

    procedure Display (Crc_A : Crc);

    procedure Display (A : Byte_Array);

end Crc_Defs;