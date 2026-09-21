with Ada.Text_IO; use Ada.Text_IO;

with Access_To_Subprogram_Types;
use  Access_To_Subprogram_Types;

procedure Show_Access_To_Subprogram_Error is

   procedure Add_One
     (Arr : in out Integer_Array) is
   begin
      for E of Arr loop
         E := E + 1;
      end loop;
   end Add_One;

   procedure Display
     (Arr : in out Integer_Array) is
   begin
      for I in Arr'Range loop
         Put_Line ("Arr (" &
                   Integer'Image (I)
                   & "): "
                  & Integer'Image (Arr (I)));
      end loop;
   end Display;

   Arr : Integer_Array (1 .. 3) := (1, 2, 3);
begin
   Process (Arr, Display'Access);

   Put_Line ("Add_One...");
   Process (Arr, Add_One'Access);

   Process (Arr, Display'Access);
end Show_Access_To_Subprogram_Error;