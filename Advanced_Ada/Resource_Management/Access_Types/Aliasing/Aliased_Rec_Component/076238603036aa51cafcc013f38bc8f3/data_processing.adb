with Ada.Text_IO; use Ada.Text_IO;

package body Data_Processing is

   procedure Show (I : aliased Integer) is
      --               ^ equivalent to
      --                 "aliased in Integer"

      type Integer_Constant_Access is
        access constant Integer;

      A : constant Integer_Constant_Access
            := I'Access;
   begin
      Put_Line ("Value : I "
                & Integer'Image (A.all));
   end Show;

   procedure Set_One (I : aliased out Integer) is

      type Integer_Access is access all Integer;

      procedure Local_Set_One (A : Integer_Access)
      is
      begin
         A.all := 1;
      end Local_Set_One;

   begin
      Local_Set_One (I'Access);
   end Set_One;

   procedure Proc (I : aliased in out Integer) is

      type Integer_Access is access all Integer;

      procedure Add_One (A : Integer_Access) is
      begin
         A.all := A.all + 1;
      end Add_One;

   begin
      Show (I);
      Add_One (I'Access);
      Show (I);
   end Proc;

end Data_Processing;