package body P with
   Refined_State => (State => Hidden_Nested.Hidden_State)
is
   package Hidden_Nested with
      Abstract_State => Hidden_State,
      Initializes    => Hidden_State
   is
      function Get return Integer;
   end Hidden_Nested;

   package body Hidden_Nested with
      Refined_State => (Hidden_State => Cnt)
   is
      Cnt : Integer := 0;

      function Get return Integer is (Cnt);
   end Hidden_Nested;

   package body Visible_Nested with
      Refined_State => (Visible_State => Checked)
   is
      Checked : Boolean := False;

      procedure Get (E : out Integer) is
      begin
         Checked := True;
         E := Hidden_Nested.Get;
      end Get;
   end Visible_Nested;
end P;