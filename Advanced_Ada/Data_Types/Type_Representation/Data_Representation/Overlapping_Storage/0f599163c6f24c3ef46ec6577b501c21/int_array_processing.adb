with Ada.Text_IO; use Ada.Text_IO;

package body Int_Array_Processing is

   procedure Show_Storage (X : Int_Array;
                           Y : Int_Array) is
   begin
      if X'Has_Same_Storage (Y) then
         Put_Line
         ("Info: X and Y have the same storage.");
      else
         Put_Line
           ("Info: X and Y don't have"
            & "the same storage.");
      end if;
      if X'Overlaps_Storage (Y) then
         Put_Line
           ("Info: X and Y overlap.");
      else
         Put_Line
           ("Info: X and Y don't overlap.");
      end if;
   end Show_Storage;

   procedure Process (X :     Int_Array;
                      Y : out Int_Array) is
   begin
      Put_Line ("==== PROCESS ====");
      Show_Storage (X, Y);

      if X'Has_Same_Storage (Y) then
         Put_Line ("In-place processing...");
      else
         if not X'Overlaps_Storage (Y) then
            Put_Line
              ("Out-of-place processing...");
         else
            Put_Line
              ("Cannot process "
               & "overlapping arrays...");
         end if;
      end if;
      New_Line;
   end Process;

end Int_Array_Processing;