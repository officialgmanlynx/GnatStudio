procedure Main is
   type Arr is array (Integer range <>) of Integer;

   type S (Last : Integer) is record
      A : Arr (0 .. Last);
   end record;

   V : S (9);
begin
   null;
end Main;