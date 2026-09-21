with System;      use System;

with System.Storage_Elements;
use  System.Storage_Elements;

with System.Address_Image;

with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Address is

   Arr : array (1 .. 10) of Integer;
   A   : Address := Arr'Address;
   --               ^^^^^^^^^^^
   --   Initializing address object with
   --   address of the first component of Arr.
   --
   --   We could write this as well:
   --   ___ := Arr (1)'Address

begin
   for I in Arr'Range loop
      declare
         Curr : Integer
                  with Address => A;
      begin
         Curr := I;
         Put_Line ("Curr'Address : "
                   & System.Address_Image
                       (Curr'Address));
      end;

      --
      --  Address arithmetic
      --
      A := A + Storage_Offset (Integer'Size)
                 / Storage_Unit;
      --     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      --       Moving to next component
   end loop;

   for I in Arr'Range loop
     Put_Line ("Arr ("
               & Integer'Image (I)
               & ") :"
               & Integer'Image (Arr (I)));
   end loop;
end Show_Address;