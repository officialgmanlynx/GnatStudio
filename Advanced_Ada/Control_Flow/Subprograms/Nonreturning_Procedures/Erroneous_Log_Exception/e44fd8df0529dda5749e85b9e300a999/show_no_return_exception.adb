with Ada.Text_IO; use Ada.Text_IO;
with Loggers;     use Loggers;

procedure Show_No_Return_Exception is
   Check_Passed : constant Boolean := False;
begin
   if not Check_Passed then
      Log_And_Raise ("Check failed!");
      Put_Line ("This line will not be reached!");
   end if;
end Show_No_Return_Exception;