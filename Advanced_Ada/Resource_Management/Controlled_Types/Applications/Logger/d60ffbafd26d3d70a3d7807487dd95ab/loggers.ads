with Ada.Text_IO; use Ada.Text_IO;
with Ada.Finalization;

package Loggers is

   type Logger (Filename : access String) is
     limited private;

   procedure Put_Line (L : Logger;
                       S : String);

private

   type Logger (Filename : access String) is new
     Ada.Finalization.Limited_Controlled with
      record
         Logfile : File_Type;
      end record;

   procedure Initialize
     (L : in out Logger);

   procedure Finalize
     (L : in out Logger);

end Loggers;