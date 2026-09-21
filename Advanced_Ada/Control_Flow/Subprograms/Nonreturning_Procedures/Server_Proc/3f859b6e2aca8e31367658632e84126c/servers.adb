package body Servers is

   procedure Run_Server is
   begin
      pragma Warnings
        (Off,
         "implied return after this statement");
      while True loop
         --  Processing happens here...
         null;
      end loop;
   end Run_Server;

end Servers;