with Ada.Text_IO; use Ada.Text_IO;

package body Serializer is

   procedure Transmit (B : Bit_Field) is

      procedure Show_Bit (V : Boolean) is
      begin
         case V is
            when False => Put ("0");
            when True  => Put ("1");
         end case;
      end Show_Bit;

   begin
      Put ("Bits: ");
      for E of B loop
         Show_Bit (E);
      end loop;
      New_Line;
   end Transmit;

end Serializer;