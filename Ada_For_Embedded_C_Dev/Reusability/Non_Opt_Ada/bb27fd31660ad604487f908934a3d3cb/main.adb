with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   function Calculate (F1, F2  : Float;
                       Success : out Boolean) return Float is
   begin
      if F1 < F2 then
         Success := True;
         return F2 - F1;
      else
        Success := False;
        return 0.0;
      end if;
   end Calculate;

   procedure Display (V : Float; Success : Boolean) is
   begin
      if Success then
         Put_Line ("Value = " & Float'Image (V));
      else
         Put_Line ("Calculation error!");
      end if;
   end Display;

   F       : Float;
   Success : Boolean;
begin
   F := Calculate (1.0, 0.5, Success);
   Display (F, Success);

   F := Calculate (0.5, 1.0, Success);
   Display (F, Success);
end Main;