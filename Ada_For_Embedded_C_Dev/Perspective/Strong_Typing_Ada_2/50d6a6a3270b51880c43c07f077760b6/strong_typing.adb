with Ada.Text_IO; use Ada.Text_IO;

procedure Strong_Typing is
   Alpha  : constant Integer := 1;
   Beta   : constant Integer := 10;
   Result : Float;
begin
   Result := Float (Alpha / Beta);

   Put_Line (Float'Image (Result));
end Strong_Typing;