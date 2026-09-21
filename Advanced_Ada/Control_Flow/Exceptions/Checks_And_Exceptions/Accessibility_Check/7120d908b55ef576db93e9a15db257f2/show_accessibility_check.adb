with P; use P;

procedure Show_Accessibility_Check is

   A1 : access T'Class := new T;
   A2 : T_Class;

begin
   A2 := T_Class (A1);

end Show_Accessibility_Check;