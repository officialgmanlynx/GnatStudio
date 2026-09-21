with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Precision is
   Delta_3 : constant := 10.0 ** (-3);

   --  Decimal fixed-point type:
   --  small = delta = 10^(-3)
   --  (exact decimal scaling)
   type T3_D6 is
     delta Delta_3
     digits 6;

   --  Ordinary fixed-point type
   --  (default binary small):
   --  small = largest power of two <= delta
   --        = 2^(-10) ~= 9.77e-04
   --            (< delta = 10^(-3))
   type T3_Fixed is
     delta Delta_3
     range -999.999 .. 999.999;

   --  Ordinary fixed-point type with
   --  explicit non-binary small:
   --  small = delta = 10^(-3)
   --  (forced via Small aspect)
   type T3_Fake_Dec is
     delta Delta_3
     range -999.999 .. 999.999
     with Small => Delta_3;
begin
   Put_Line ("The small          of "
             & "T3_D6       is "
             & T3_D6'Small'Image);
   Put_Line ("The delta    value of "
             & "T3_D6       is "
             & T3_D6'Delta'Image);
   Put_Line ("The minimum  value of "
             & "T3_D6       is "
             & T3_D6'First'Image);
   Put_Line ("The maximum  value of "
             & "T3_D6       is "
             & T3_D6'Last'Image);
   New_Line;

   Put_Line ("------------------------------");

   Put_Line ("The small          of "
             & "T3_Fixed    is "
             & T3_Fixed'Small'Image);
   Put_Line ("The delta    value of "
             & "T3_Fixed    is "
             & T3_Fixed'Delta'Image);
   Put_Line ("The minimum  value of "
             & "T3_Fixed    is "
             & T3_Fixed'First'Image);
   Put_Line ("The maximum  value of "
             & "T3_Fixed    is "
             & T3_Fixed'Last'Image);

   Put_Line ("------------------------------");

   Put_Line ("The small          of "
             & "T3_Fake_Dec is "
             & T3_Fake_Dec'Small'Image);
   Put_Line ("The delta    value of "
             & "T3_Fake_Dec is "
             & T3_Fake_Dec'Delta'Image);
   Put_Line ("The minimum  value of "
             & "T3_Fake_Dec is "
             & T3_Fake_Dec'First'Image);
   Put_Line ("The maximum  value of "
             & "T3_Fake_Dec is "
             & T3_Fake_Dec'Last'Image);
end Show_Decimal_Precision;