package Data_Processing is

   type Quality_Level is
     (Simplified, Better, Best);

private

   Calc_Table : constant array
     (Quality_Level, 1 .. 5) of Float :=
       (Simplified =>
            (0.15, 0.00, 0.00, 0.00, 0.00),
        Better     =>
            (0.02, 0.16, 0.27, 0.00, 0.00),
        Best       =>
            (0.01, 0.08, 0.12, 0.20, 0.34));

   Last : constant array
     (Quality_Level) of Positive :=
       (Simplified => 1,
        Better     => 3,
        Best       => 5);

end Data_Processing;