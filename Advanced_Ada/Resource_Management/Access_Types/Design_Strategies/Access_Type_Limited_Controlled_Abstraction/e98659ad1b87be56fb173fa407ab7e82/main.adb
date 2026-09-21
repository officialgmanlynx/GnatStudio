with Ada.Text_IO; use Ada.Text_IO;

with Access_Type_Abstraction;
use  Access_Type_Abstraction;

procedure Main is
   Obj_1 : Info := To_Info ("hello");
   Obj_2 : Info := Copy (Obj_1);
begin
   --
   --  TO_INFO / COPY
   --
   Put_Line ("TO_INFO / COPY");

   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   --
   --  RESET:  Obj_1
   --  APPEND: Obj_2
   --
   Put_Line ("RESET / APPEND");

   Reset (Obj_1);
   Append (Obj_2, " world");

   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   --
   --  COPY: Obj_2 => Obj_1
   --
   Put_Line ("COPY");

   Copy (From => Obj_2,
         To   => Obj_1);

   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   --
   --  RESET: Obj_1, Obj_2
   --
   Put_Line ("RESET");

   Reset (Obj_1);
   Reset (Obj_2);

   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   --
   --  COPY: Obj_2 => Obj_1
   --
   Put_Line ("COPY");

   Copy (From => Obj_2,
         To   => Obj_1);

   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   --
   --  APPEND: Obj_1 with "hey"
   --
   Put_Line ("APPEND");

   Append (Obj_1, "hey");

   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("----------");

   --
   --  APPEND: Obj_1 with "there"
   --
   Put_Line ("APPEND");

   Append (Obj_1, " there");

   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
end Main;