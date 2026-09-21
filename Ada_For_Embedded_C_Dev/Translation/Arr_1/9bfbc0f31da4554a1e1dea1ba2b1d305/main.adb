procedure Main is
   type Arr is array (Integer range <>) of Integer;

   procedure P (V : Arr; Length : Integer);
   pragma Import (C, P);

   X : Arr (5 .. 15);
begin
   P (X, X'Length);
end Main;