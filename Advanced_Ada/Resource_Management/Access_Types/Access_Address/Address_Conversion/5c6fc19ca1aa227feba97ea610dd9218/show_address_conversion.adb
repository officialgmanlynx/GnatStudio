with Ada.Text_IO; use Ada.Text_IO;
with System;      use System;

with System.Address_To_Access_Conversions;
with System.Address_Image;

procedure Show_Address_Conversion is

   package Integer_AAC is
     new System.Address_To_Access_Conversions
       (Object => Integer);
   use Integer_AAC;

   subtype Integer_Access is
     Integer_AAC.Object_Pointer;

   I          : aliased Integer := 5;
   AI_1, AI_2 : Integer_Access;
   A          : Address;
begin
   AI_1 := I'Access;
   A    := To_Address (AI_1);
   AI_2 := To_Pointer (A);

   Put_Line ("AI_1.all'Address : "
             & System.Address_Image
                 (AI_1.all'Address));
   Put_Line ("AI_2.all'Address : "
             & System.Address_Image
                 (AI_2.all'Address));

   if AI_1 = AI_2 then
      Put_Line ("AI_1 = AI_2");
   else
      Put_Line ("AI_1 /= AI_2");
   end if;
end Show_Address_Conversion;