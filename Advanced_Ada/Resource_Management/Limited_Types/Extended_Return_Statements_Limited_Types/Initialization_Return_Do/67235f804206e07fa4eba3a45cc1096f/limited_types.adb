with Ada.Text_IO;           use Ada.Text_IO;
with System;
with System.Address_Image;

package body Limited_Types is

   function Init (I : Integer) return Simple_Rec
   is
   begin
      return E : Simple_Rec do
         E.V := new Integer'(I);

         Put_Line ("E'Address (Init):  "
                   & System.Address_Image
                       (E'Address));
      end return;
   end Init;

end Limited_Types;