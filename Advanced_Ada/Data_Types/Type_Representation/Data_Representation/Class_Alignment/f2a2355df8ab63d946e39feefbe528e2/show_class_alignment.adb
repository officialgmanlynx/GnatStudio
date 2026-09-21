with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Class_Alignment is

   type Point_1D is tagged record
      X : Integer;
   end record;

   type Point_2D is new Point_1D with record
      Y : Integer;
   end record
     with Alignment => 16;

   type Point_3D is new Point_2D with record
      Z : Integer;
   end record;

begin
   Put_Line ("1D_Point'Alignment:       "
             & Point_1D'Alignment'Image);
   Put_Line ("1D_Point'Class'Alignment: "
             & Point_1D'Class'Alignment'Image);
   Put_Line ("2D_Point'Alignment:       "
             & Point_2D'Alignment'Image);
   Put_Line ("2D_Point'Class'Alignment: "
             & Point_2D'Class'Alignment'Image);
   Put_Line ("3D_Point'Alignment:       "
             & Point_3D'Alignment'Image);
   Put_Line ("3D_Point'Class'Alignment: "
             & Point_3D'Class'Alignment'Image);
end Show_Class_Alignment;