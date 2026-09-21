with Ada.Text_IO; use Ada.Text_IO;
with Workers;     use Workers;

procedure Show_Tasking_Check_Error is
    W : Worker;
begin
    Put_Line ("W.Start...");
    W.Start;
    Put_Line ("Finished");
end Show_Tasking_Check_Error;