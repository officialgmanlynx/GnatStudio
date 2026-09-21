with Ada.Text_IO; use Ada.Text_IO;

package body Crc_Defs is

    package Byte_IO is new Modular_IO (Byte);
    package Crc_IO  is new Modular_IO (Crc);

    function Crc_CCITT (A : Byte_Array)
                        return Crc
    is
       X     : Byte;
       Crc_A : Crc := 16#1d0f#;
    begin
       for I in A'Range loop
          X := Byte (Crc_A / 2 ** 8) xor A (I);
          X := X xor (X / 2 ** 4);
          declare
             Crc_X : constant Crc := Crc (X);
          begin
             Crc_A := Crc_A * 2 ** 8  xor
                      Crc_X * 2 ** 12 xor
                      Crc_X * 2 ** 5  xor
                      Crc_X;
          end;
       end loop;

       return Crc_A;
    end Crc_CCITT;

    procedure Display (Crc_A : Crc) is
    begin
       Crc_IO.Put (Crc_A);
       New_Line;
    end Display;

    procedure Display (A : Byte_Array) is
    begin
       for E of A loop
          Byte_IO.Put (E);
          Put (", ");
       end loop;
       New_Line;
    end Display;

begin
   Byte_IO.Default_Width := 1;
   Byte_IO.Default_Base  := 16;
   Crc_IO.Default_Width  := 1;
   Crc_IO.Default_Base   := 16;
end Crc_Defs;