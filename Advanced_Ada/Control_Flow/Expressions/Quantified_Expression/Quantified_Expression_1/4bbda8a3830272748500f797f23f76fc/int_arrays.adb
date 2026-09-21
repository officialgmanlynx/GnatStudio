with Ada.Text_IO; use Ada.Text_IO;

package body Int_Arrays is

   procedure Display_Array (A    : Integer_Arr;
                            Name : String) is
   begin
      Put (Name & ": ");
      for E of A loop
         Put (E'Image & " ");
      end loop;
      New_Line;
   end Display_Array;

end Int_Arrays;