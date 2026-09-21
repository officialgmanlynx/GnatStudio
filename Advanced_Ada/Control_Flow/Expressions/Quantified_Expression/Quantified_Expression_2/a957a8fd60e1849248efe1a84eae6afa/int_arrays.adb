with Ada.Text_IO; use Ada.Text_IO;

package body Int_Arrays is

   function Is_Zero (A : Integer_Arr)
                     return Boolean is
   begin
      for I in A'Range loop
         if A (I) /= 0 then
            return False;
         end if;
      end loop;

      return True;
   end Is_Zero;

   function Has_Zero (A : Integer_Arr)
                      return Boolean is
   begin
      for I in A'Range loop
        if A (I) = 0 then
           return True;
        end if;
      end loop;

      return False;
   end Has_Zero;

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