with P; use P;

procedure Show_Accessibility_Check is

   A : access T'Class := new T;

   procedure P (A : T_Class) is null;

begin
   P (T_Class (A));

end Show_Accessibility_Check;