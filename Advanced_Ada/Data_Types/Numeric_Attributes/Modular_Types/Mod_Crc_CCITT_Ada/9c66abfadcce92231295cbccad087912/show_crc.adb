with Ada.Text_IO; use Ada.Text_IO;
with Crc_Defs;    use Crc_Defs;

procedure Show_Crc is
   AA    : constant Byte_Array :=
             (16#0#, 16#20#, 16#30#);
   Crc_A : Crc;
begin
   Crc_A := Crc_CCITT (AA);

   Put ("Input array: ");
   Display (AA);

   Put ("CRC-CCITT: ");
   Display (Crc_A);
end Show_Crc;