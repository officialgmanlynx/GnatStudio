with Ada.Text_IO; use Ada.Text_IO;

package body States is

   procedure Read_Display_States
     (File_Name : String)
   is
      use State_Sequential_IO;

      F : State_Sequential_IO.File_Type;
      S : State;

      procedure Display_State (S : State) is
      begin
         --  Before displaying the value,
         --  check whether it's valid or not.
         if S'Valid then
            Put_Line (S'Image);
         else
            Put_Line ("Invalid value detected!");
         end if;
      end Display_State;

   begin
      Open (F, In_File, File_Name);

      while not End_Of_File (F) loop
         Read (F, S);
         Display_State (S);
      end loop;

      Close (F);
   end Read_Display_States;

end States;