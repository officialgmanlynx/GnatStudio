with Gen_Custom_Processing;

with Add_Ten;

with Ada.Text_IO; use Ada.Text_IO;

procedure
  Show_Access_To_Subprogram_As_Formal_Parameter
is
   type Integer_Processing is
     access procedure (I : in out Integer);

   package Custom_Processing is new
     Gen_Custom_Processing
       (T            => Integer,
        T_Processing => Integer_Processing,
        --              ^^^^^^^^^^^^^^^^^^
        --              access-to-subprogram type
        Proc         => Add_Ten'Access,
        --              ^^^^^^^^^^^^^^^^^^
        --              access-to-subprogram
        Image_T      => Integer'Image);
   use Custom_Processing;

   R_Add_Ten  : Rec;

begin
   Init (R_Add_Ten,  1);

   Put_Line ("---- R_Add_Ten ----");
   Show (R_Add_Ten);

   Put_Line ("Calling Process procedure...");
   Process (R_Add_Ten);
   Show (R_Add_Ten);
end Show_Access_To_Subprogram_As_Formal_Parameter;