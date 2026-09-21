with Ada.Text_IO; use Ada.Text_IO;
with System;      use System;

with System.Address_To_Access_Conversions;
with System.Address_Image;

procedure Show_Address_Conversion is

   package String_AAC is
     new System.Address_To_Access_Conversions
       (Object => String);
   use String_AAC;

   subtype Integer_Access is
     String_AAC.Object_Pointer;

   S          : aliased String := "Hello";
   AI_1, AI_2 : Integer_Access;
   A          : Address;
begin
   AI_1 := S'Access;
   A    := To_Address (AI_1);

   AI_2 := To_Pointer (A);
   --      ^^^^^^^^^^^^^^
   --   WARNING: Result might not have bounds

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

   Put_Line ("AI_1: " & AI_1.all);
   Put_Line ("AI_2: " & AI_2.all);
   --                 ^^^^^^^^^^
   --   WARNING: As AI_2 might not have bounds
   --            due to the call to To_Pointer
   --            the behavior of this call to
   --            the "&" operator is
   --            unpredictable.
end Show_Address_Conversion;