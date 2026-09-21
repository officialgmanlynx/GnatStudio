with Devices; use Devices;

procedure Show_Device is
   D : Device;
   I : Device_Info;
begin
   Turn_On (D);
   I := Current_Info (D);

   Turn_Off (D);

   --  The following call raises
   --  an exception at runtime
   --  because D is turned off.
   I := Current_Info (D);
end Show_Device;