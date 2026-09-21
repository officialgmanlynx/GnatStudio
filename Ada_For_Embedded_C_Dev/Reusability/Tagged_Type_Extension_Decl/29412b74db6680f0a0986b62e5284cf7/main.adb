with Ada.Text_IO; use Ada.Text_IO;
with P;           use P;

procedure Main is
   X_Rec              : Rec;
   X_New_Rec          : New_Rec;

   X_Tagged_Rec       : aliased Tagged_Rec;
   X_Ext_Tagged_Rec   : aliased Ext_Tagged_Rec;

   X_Tagged_Rec_Array : constant array (1 .. 2) of access Tagged_Rec'Class
                         := (X_Tagged_Rec'Access, X_Ext_Tagged_Rec'Access);
begin
   --
   --  Reset all objects
   --
   Reset (X_Rec);
   Reset (X_New_Rec);
   X_Tagged_Rec.Reset;    --  we could write "Reset (X_Tagged_Rec)" as well
   X_Ext_Tagged_Rec.Reset;

   --
   --  Use new operations when available
   --
   New_Op (X_New_Rec);
   X_Ext_Tagged_Rec.New_Op;

   --
   --  Display all objects
   --
   Display (X_Rec);
   Display (X_New_Rec);
   X_Tagged_Rec.Display;  --  we could write "Display (X_Tagged_Rec)" as well
   X_Ext_Tagged_Rec.Display;

   --
   --  Resetting and display objects of Tagged_Rec'Class
   --
   Put_Line ("Operations on Tagged_Rec'Class");
   Put_Line ("------------------------------");
   for E of X_Tagged_Rec_Array loop
      E.Reset;
      E.Display;
   end loop;
end Main;