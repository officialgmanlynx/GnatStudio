package body Some_Generic_Package is

   procedure Process is
      type Arr is
        array (R) of Integer;

      Dummy : Arr := (others => 0);
   begin
      null;
   end Process;

end Some_Generic_Package;