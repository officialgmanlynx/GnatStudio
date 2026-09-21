with Ada.Text_IO;   use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

with Gen_Show_Info;

procedure Show_Machine_Representation
is
   procedure Show_Info is new
     Gen_Show_Info (T_Fixed     => TQ31,
                    T_Int_Fixed => Int_TQ31);
   procedure Show_Info is new
     Gen_Show_Info (T_Fixed     => TQ15,
                    T_Int_Fixed => Int_TQ15);
begin
   Show_Info (TQ15'First,     "TQ15'First  ");
   Show_Info (TQ15'(0.25),    "0.25        ");
   Show_Info (TQ15'(0.50),    "0.50        ");
   Show_Info (TQ15'Last,      "TQ15'Last   ");
   Put_Line ("-----------------------------");

   Show_Info (TQ31'First,     "TQ31'First  ");
   Show_Info (TQ31'(0.25),    "0.25        ");
   Show_Info (TQ31'(0.50),    "0.50        ");
   Show_Info (TQ31'Last,      "TQ31'Last   ");
   Put_Line ("-----------------------------");
end Show_Machine_Representation;