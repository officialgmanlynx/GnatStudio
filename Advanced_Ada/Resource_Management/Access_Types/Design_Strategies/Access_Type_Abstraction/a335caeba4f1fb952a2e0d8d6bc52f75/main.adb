with Ada.Text_IO; use Ada.Text_IO;

with Access_Type_Abstraction;
use  Access_Type_Abstraction;

procedure Main is
   Obj_1 : Info := To_Info ("hello");
   Obj_2 : Info := Copy (Obj_1);
begin
   Put_Line ("TO_INFO / COPY");
   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   Reset (Obj_1);
   Append (Obj_2, " world");

   Put_Line ("RESET / APPEND");
   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   Copy (From => Obj_2,
         To   => Obj_1);

   Put_Line ("COPY");
   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   Destroy (Obj_1);
   Destroy (Obj_2);

   Put_Line ("DESTROY");
   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("Obj_2 : "
             & To_String (Obj_2));
   Put_Line ("----------");

   Append (Obj_1, "hey");

   Put_Line ("APPEND");
   Put_Line ("Obj_1 : "
             & To_String (Obj_1));
   Put_Line ("----------");

   Put_Line ("APPEND");
   Append (Obj_1, " there");
   Put_Line ("Obj_1 : "
             & To_String (Obj_1));

   Destroy (Obj_1);
   Destroy (Obj_2);
end Main;