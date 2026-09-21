package Data_Processing is

   type Quality_Level is
     (Simplified, Better, Best);

   type Data is
     array (Positive range <>) of Float;

private

   type Table_Coefficient is record
      Last : Positive;
      Coef : Data (1 .. 5);
   end record;

   Calc_Table : constant array
     (Quality_Level) of Table_Coefficient :=
       (Simplified =>
            (1, (0.15, 0.00, 0.00, 0.00, 0.00)),
        Better     =>
            (3, (0.02, 0.16, 0.27, 0.00, 0.00)),
        Best       =>
            (5, (0.01, 0.08, 0.12, 0.20, 0.34)));

end Data_Processing;