with Ada.Text_IO;   use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

with Gen_Show_Info;

procedure Show_Machine_Repr_Delta_Vs_Size
is
   procedure Show_Info is new
     Gen_Show_Info (T_Fixed     => TQ31,
                    T_Int_Fixed => Int_TQ31);
   procedure Show_Info is new
     Gen_Show_Info (T_Fixed     => TQ7_24,
                    T_Int_Fixed => Int_TQ7_24);
begin
   Show_Info (TQ31'First,
              "TQ31'First    ");
   Show_Info (TQ31'(0.25),
              "0.25          ");
   Show_Info (TQ31'(0.50),
              "0.50          ");
   Show_Info (TQ31'Last,
              "TQ31'Last     ");
   Put_Line
      ("-----------------------------");

   Show_Info (TQ7_24'First,
              "TQ7_24'First ");
   Show_Info (TQ7_24'(-1.0),
              "-1.0         ");
   Show_Info (TQ7_24'(0.25),
              "0.25         ");
   Show_Info (TQ7_24'(0.50),
              "0.50         ");
   Show_Info (TQ7_24'Last,
              "TQ7_24'Last  ");
   Put_Line
      ("-----------------------------");

end Show_Machine_Repr_Delta_Vs_Size;