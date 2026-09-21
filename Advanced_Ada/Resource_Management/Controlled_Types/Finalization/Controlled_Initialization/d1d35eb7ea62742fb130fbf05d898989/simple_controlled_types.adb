with Ada.Text_IO; use Ada.Text_IO;

package body Simple_Controlled_Types is

   procedure Dummy (E : T) is
   begin
      Put_Line ("(Dummy: T...)");
   end Dummy;

   procedure Finalize (E : in out T) is
   begin
      Put_Line ("Finalize: T...");
   end Finalize;

end Simple_Controlled_Types;