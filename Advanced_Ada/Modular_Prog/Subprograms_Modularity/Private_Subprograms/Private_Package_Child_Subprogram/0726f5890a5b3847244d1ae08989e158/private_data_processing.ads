private package Private_Data_Processing is

   type Data is private;

   procedure Process (D : in out Data);

private

    type Data is record
       F : Float;
    end record;

end Private_Data_Processing;