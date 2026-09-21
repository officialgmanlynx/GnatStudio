with Ada.Text_IO;     use Ada.Text_IO;
with Signal_Handlers;

procedure Test_Quit_Handler is
   Quit : Signal_Handlers.Quit_Handler;

begin
   while True loop
      delay 1.0;
      exit when Quit.Requested;
   end loop;

   Put_Line ("Exiting application...");
end Test_Quit_Handler;