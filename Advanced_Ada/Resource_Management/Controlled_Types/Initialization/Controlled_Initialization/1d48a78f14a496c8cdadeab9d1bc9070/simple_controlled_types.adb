with Ada.Text_IO; use Ada.Text_IO;

package body Simple_Controlled_Types is

   function Default_Init return Integer is
   begin
      Put_Line ("Default_Init: Integer...");
      return 42;
   end Default_Init;

   procedure Dummy (E : T) is
   begin
      Put_Line ("(Dummy: T...)");
   end Dummy;

   procedure Initialize (E : in out T) is
   begin
      Put_Line ("Initialize: T...");
   end Initialize;

end Simple_Controlled_Types;