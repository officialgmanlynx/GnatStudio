package body Type_Defaults is

   Object_100 : constant T := (Count  => 100,
                               others => <>);

   procedure Do_Something is null;

end Type_Defaults;