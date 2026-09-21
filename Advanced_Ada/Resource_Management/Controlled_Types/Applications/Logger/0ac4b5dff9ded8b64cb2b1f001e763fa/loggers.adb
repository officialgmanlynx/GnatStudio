package body Loggers is

   --
   --  SUBPROGRAMS
   --

   function Init (Filename : String)
                  return Logger is
   begin
      return L : Logger do
         Create (L.Logfile, Out_File, Filename);
      end return;
   end Init;

   procedure Put_Line (L : Logger;
                       S : String) is
   begin
      Put_Line ("Logger: Put_Line");
      Put_Line (L.Logfile, S);
   end Put_Line;

   --
   --  PRIVATE SUBPROGRAMS
   --

   procedure Finalize
     (L : in out Logger) is
   begin
      Put_Line ("Finalizing Logger...");
      if Is_Open (L.Logfile) then
         Close (L.Logfile);
      end if;
   end Finalize;

end Loggers;