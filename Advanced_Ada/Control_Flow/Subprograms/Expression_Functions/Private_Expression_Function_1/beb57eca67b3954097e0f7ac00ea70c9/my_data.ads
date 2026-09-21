package My_Data is

   type Data is private;

   function Is_Valid (D : Data)
                      return Boolean;

private

   type Data is record
      Valid : Boolean;
   end record;

   function Is_Valid (D : Data)
                      return Boolean is
     (D.Valid);

end My_Data;