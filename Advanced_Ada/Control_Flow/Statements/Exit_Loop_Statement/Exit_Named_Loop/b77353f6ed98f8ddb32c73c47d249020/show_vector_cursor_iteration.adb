with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Show_Vector_Cursor_Iteration is

   package Integer_Vectors is new
     Ada.Containers.Vectors
       (Index_Type   => Positive,
        Element_Type => Integer);

   use Integer_Vectors;

   V : constant Vector := 20 & 10 & 0 & 13;
   C : Cursor;
begin
   C := V.First;
   Put_Line ("Vector elements are: ");

   Show_Elements :
      loop
         exit Show_Elements when C = No_Element;

         Put_Line ("Element: "
                   & Integer'Image (V (C)));
         C := Next (C);
      end loop Show_Elements;

end Show_Vector_Cursor_Iteration;