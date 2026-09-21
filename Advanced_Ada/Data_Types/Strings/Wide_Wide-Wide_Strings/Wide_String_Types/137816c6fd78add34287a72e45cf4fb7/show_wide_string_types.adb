with Ada.Text_IO;
with Ada.Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

procedure Show_Wide_String_Types is
   package TI   renames Ada.Text_IO;
   package WTI  renames Ada.Wide_Text_IO;
   package WWTI renames Ada.Wide_Wide_Text_IO;

   S   : constant String           := "hello";
   WS  : constant Wide_String      := "hello";
   WWS : constant Wide_Wide_String := "hello";
begin
   TI.Put_Line ("String:           " & S);
   TI.Put_Line ("Length:           "
                & Integer'Image (S'Length));
   TI.Put_Line ("Size:             "
                & Integer'Image (S'Size));
   TI.Put_Line ("Component_Size:   "
                & Integer'Image
                    (S'Component_Size));
   TI.Put_Line ("------------------------");

   WTI.Put_Line ("Wide string:      " & WS);
   TI.Put_Line ("Length:           "
                & Integer'Image (WS'Length));
   TI.Put_Line ("Size:             "
                & Integer'Image (WS'Size));
   TI.Put_Line ("Component_Size:   "
                & Integer'Image
                    (WS'Component_Size));
   TI.Put_Line ("------------------------");

   WWTI.Put_Line ("Wide-wide string: " & WWS);
   TI.Put_Line ("Length:           "
                & Integer'Image (WWS'Length));
   TI.Put_Line ("Size:             "
                & Integer'Image (WWS'Size));
   TI.Put_Line ("Component_Size:   "
                & Integer'Image
                    (WWS'Component_Size));
   TI.Put_Line ("------------------------");
end Show_Wide_String_Types;