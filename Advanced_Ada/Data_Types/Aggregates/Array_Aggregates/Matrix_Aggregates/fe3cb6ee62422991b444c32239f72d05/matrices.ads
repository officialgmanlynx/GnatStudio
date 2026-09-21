package Matrices is

   type Matrix is array (Positive range <>,
                         Positive range <>)
                         of Integer;

   procedure Display (M : Matrix);

end Matrices;