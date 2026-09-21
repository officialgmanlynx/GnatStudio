package Array_Definition is
   type Arr is array (Integer range <>) of Integer;

   type S (Last : Integer) is private;

private
   type S (Last : Integer) is record
      A : Arr (0 .. Last);
   end record;

end Array_Definition;