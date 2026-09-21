with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   task After is
      entry Go;
   end After;

   task body After is
   begin
      accept Go;
      Put_Line ("After");
   end After;

begin
   Put_Line ("Before");
   After.Go;
end Main;