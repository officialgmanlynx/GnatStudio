with Ada.Text_IO;  use Ada.Text_IO;

with Custom_Types; use Custom_Types;

procedure Show_Storage_Check is

   RAV1, RAV2 : UInt_7_Reserved_Access;

begin
   Put_Line ("Allocating RAV1...");
   RAV1 := new UInt_7;

   Put_Line ("Allocating RAV2...");
   RAV2 := new UInt_7;

   New_Line;
end Show_Storage_Check;