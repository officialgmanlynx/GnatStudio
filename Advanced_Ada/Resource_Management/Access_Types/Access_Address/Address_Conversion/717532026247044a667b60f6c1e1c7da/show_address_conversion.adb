with Ada.Text_IO; use Ada.Text_IO;

with System.Address_To_Access_Conversions;
with System.Address_Image;

procedure Show_Address_Conversion is

   package Integer_AAC is
     new System.Address_To_Access_Conversions
       (Object => Integer);
   use Integer_AAC;

   subtype Integer_Access is
     Integer_AAC.Object_Pointer;
   --  This is similar to:
   --
   --  type Integer_Access is access all Integer;

   I  : aliased Integer := 5;
   AI : Integer_Access  := I'Access;
begin
   Put_Line ("I'Address : "
             & System.Address_Image (I'Address));

   Put_Line ("AI.all'Address : "
             & System.Address_Image
                 (AI.all'Address));

   Put_Line ("To_Address (AI) : "
             & System.Address_Image
                 (To_Address (AI)));
end Show_Address_Conversion;