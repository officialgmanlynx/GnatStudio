with Many_Devices; use Many_Devices;

procedure Show_Derived_Device is
   A : Device;
   B : Derived_Device;
   C : Device_Config;
begin
   A := Create (Config => C);
   B := Create (Config => C);

   Process (B);
end Show_Derived_Device;