with Ada.Text_IO;    use Ada.Text_IO;

with Simple_Tasking; use Simple_Tasking;

procedure Show_Protected_Task_Image is

   PF : Protected_Float (0);
   PN : Protected_Null;
   T1 : T;

begin
   Put_Line ("PF: " & PF'Image);
   Put_Line ("PN: " & PN'Image);
   Put_Line ("T1: " & T1'Image);

   T1.Start;
end Show_Protected_Task_Image;