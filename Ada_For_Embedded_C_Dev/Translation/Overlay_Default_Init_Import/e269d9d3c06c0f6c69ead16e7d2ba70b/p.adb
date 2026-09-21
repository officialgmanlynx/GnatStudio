with Ada.Text_IO; use Ada.Text_IO;

package body P is

   procedure Display_Bytes_Increment (V : in out Integer) is
      BF  : Byte_Field (1 .. V'Size / 8)
        with Address => V'Address, Import, Volatile;
   begin
      for B of BF loop
         Put_Line ("Byte = " & Unsigned_8'Image (B));
      end loop;
      Put_Line ("Now incrementing...");
      V := V + 1;
   end Display_Bytes_Increment;

end P;