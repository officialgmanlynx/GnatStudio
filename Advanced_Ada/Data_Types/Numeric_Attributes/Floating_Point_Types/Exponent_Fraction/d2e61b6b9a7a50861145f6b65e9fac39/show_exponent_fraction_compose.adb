with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Exponent_Fraction_Compose is
begin
   Put_Line
     ("Float'Fraction (1.0):     "
      & Float'Fraction (1.0)'Image);
   Put_Line
     ("Float'Fraction (0.25):    "
      & Float'Fraction (0.25)'Image);
   Put_Line
     ("Float'Fraction (1.0e-25): "
      & Float'Fraction (1.0e-25)'Image);
   Put_Line
     ("Float'Exponent (1.0):     "
      & Float'Exponent (1.0)'Image);
   Put_Line
     ("Float'Exponent (0.25):    "
      & Float'Exponent (0.25)'Image);
   Put_Line
     ("Float'Exponent (1.0e-25): "
      & Float'Exponent (1.0e-25)'Image);
   Put_Line
     ("Float'Compose (5.00000e-01, 1):   "
      & Float'Compose (5.00000e-01, 1)'Image);
   Put_Line
     ("Float'Compose (5.00000e-01, -1):  "
      & Float'Compose (5.00000e-01, -1)'Image);
   Put_Line
     ("Float'Compose (9.67141E-01, -83): "
      & Float'Compose (9.67141E-01, -83)'Image);
end Show_Exponent_Fraction_Compose;