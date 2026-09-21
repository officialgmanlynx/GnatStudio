with Ada.Text_IO; use Ada.Text_IO;
with Ada.Finalization;

package Loggers is

   type Logger (<>) is
     limited private;

   function Init (Filename : String)
                  return Logger;

   procedure Put_Line (L : Logger;
                       S : String);

private

   type Logger is new
     Ada.Finalization.Limited_Controlled with
      record
         Logfile : File_Type;
      end record;

   procedure Finalize
     (L : in out Logger);

end Loggers;