package Register_Interface is
   procedure Initialize (Size : Integer)
     with Import     => True,
          Convention => C,
          External_Name => "registerInterface_Initialize";

end Register_Interface;