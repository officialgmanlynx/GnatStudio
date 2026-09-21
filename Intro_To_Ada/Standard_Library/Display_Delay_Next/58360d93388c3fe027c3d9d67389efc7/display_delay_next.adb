with Ada.Calendar; use Ada.Calendar;
with Ada.Text_IO;  use Ada.Text_IO;

procedure Display_Delay_Next is
   D    : Duration := 5.0;
   --                 ^ seconds
   Now  : Time     := Clock;
   Next : Time     := Now + D;
   --                       ^ use duration to
   --                         specify next
   --                         point in time
begin
   Put_Line ("Let's wait "
             & Duration'Image (D)
             & " seconds...");
   delay until Next;
   Put_Line ("Enough waiting!");
end Display_Delay_Next;