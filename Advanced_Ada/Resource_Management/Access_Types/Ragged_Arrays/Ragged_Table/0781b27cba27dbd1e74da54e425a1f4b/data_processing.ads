package Data_Processing is

   type Quality_Level is
     (Simplified, Better, Best);

   type Data is
     array (Positive range <>) of Float;

private

   type Coefficients is access constant Data;

   Calc_Table : constant array (Quality_Level) of
                  Coefficients :=
     (Simplified =>
          new Data'(1 => 0.15),
      Better     =>
          new Data'(0.02, 0.16, 0.27),
      Best       =>
          new Data'(0.01, 0.08, 0.12,
                    0.20, 0.34));

end Data_Processing;