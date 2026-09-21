package Show_Ghost is

   type T is record
      A, B, C, D, E : Boolean;
   end record;

   function Formula (X : T) return Boolean is
     ((X.A and X.B) or (X.C and (X.D or X.E)));

   function Is_Correct (X, Y : T) return Boolean is
     (Formula (X) = Formula (Y));

   procedure Do_Something (X : in out T);

end Show_Ghost;