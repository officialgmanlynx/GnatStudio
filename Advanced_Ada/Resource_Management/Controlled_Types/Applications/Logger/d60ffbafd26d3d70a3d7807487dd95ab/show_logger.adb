with Loggers;         use Loggers;
with Some_Processing;

procedure Show_Logger is
   Name : aliased String := "report.log";
   Log : Logger (Name'Access);
begin
   Put_Line (Log, "Some info...");
   Some_Processing (Log);
end Show_Logger;