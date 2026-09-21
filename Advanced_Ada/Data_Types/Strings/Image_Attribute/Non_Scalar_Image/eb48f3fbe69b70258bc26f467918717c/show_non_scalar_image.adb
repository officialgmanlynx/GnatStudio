with Ada.Text_IO; use Ada.Text_IO;
with Ada.Unchecked_Deallocation;

with Simple_Records;
use  Simple_Records;

procedure Show_Non_Scalar_Image is

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Rec,
        Name   => Rec_Access);

   R_A : Rec_Access :=
     new Rec'(Init);

   N_R : Null_Rec :=
     (null record);
begin
   R_A := new Rec'(Init);
   N_R := (null record);

   Put_Line ("R_A:     " & R_A'Image);
   Put_Line ("R_A.all: " & R_A.all'Image);
   Put_Line ("N_R:     " & N_R'Image);

   Free (R_A);
   Put_Line ("R_A:     " & R_A'Image);
end Show_Non_Scalar_Image;