with Ada.Text_IO; use Ada.Text_IO;

package body Simple_Storage is

   procedure Set (S : in out Integer_Storage;
                  V :        String) is
   begin
      S.V := Integer'Value (V);
   end Set;

   procedure Display (S : Integer_Storage) is
   begin
      Put_Line ("Value: " & S.V'Image);
   end Display;

end Simple_Storage;