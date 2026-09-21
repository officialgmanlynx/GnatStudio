with Ada.Text_IO; use Ada.Text_IO;

package body Integer_Storage_System is

   protected body Integer_Storage is

      procedure Set (V : Integer) is
      begin
         I := V;
      end Set;

      procedure Show (T : Work_Registry.Work_Id)
      is
         pragma Unreferenced (T);
      begin
         Put_Line ("Value: " & Integer'Image (I));
      end Show;

   end Integer_Storage;

end Integer_Storage_System;