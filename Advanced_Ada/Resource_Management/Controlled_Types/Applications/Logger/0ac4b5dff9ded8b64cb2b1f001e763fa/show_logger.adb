with Loggers;         use Loggers;
with Some_Processing;

procedure Show_Logger is
   Log : constant Logger := Init ("report.log");
begin
   Put_Line (Log, "Some info...");
   Some_Processing (Log);
end Show_Logger;