with Ada.Text_IO; use Ada.Text_IO;

package body Simple_Controlled_Types is

   function Default_Init return Integer is
   begin
      Put_Line ("Default_Init: Integer...");
      return 42;
   end Default_Init;

   procedure Start_Work (E : T) is
   begin
      --  Starting Worker task:
      E.W.Start;

   end Start_Work;

   procedure Stop_Work (E : T) is
   begin
      --  Stopping Worker task:
      E.W.Stop;
   end Stop_Work;

   procedure Initialize (E : in out T) is
   begin
      Put_Line ("Initialize: T...");
   end Initialize;

end Simple_Controlled_Types;