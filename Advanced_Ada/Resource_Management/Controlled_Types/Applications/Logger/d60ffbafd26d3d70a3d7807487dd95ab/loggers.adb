package body Loggers is

   --
   --  SUBPROGRAMS
   --

   procedure Put_Line (L : Logger;
                       S : String) is
   begin
      Put_Line ("Logger: Put_Line");
      Put_Line (L.Logfile, S);
   end Put_Line;

   --
   --  PRIVATE SUBPROGRAMS
   --

   procedure Initialize
     (L : in out Logger) is
   begin
      Create (L.Logfile,
              Out_File,
              L.Filename.all);
   end Initialize;

   procedure Finalize
     (L : in out Logger) is
   begin
      Put_Line ("Finalizing Logger...");
      if Is_Open (L.Logfile) then
         Close (L.Logfile);
      end if;
   end Finalize;

end Loggers;