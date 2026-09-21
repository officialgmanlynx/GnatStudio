with Devices; use Devices;

procedure Show_Device is
   D : Device;
   I : Device_Info;
begin
   Turn_On (D);

   if D.State = On then
      I := Current_Info (D);
   end if;

   Turn_Off (D);

   if D.State = On then
      I := Current_Info (D);
   end if;
end Show_Device;