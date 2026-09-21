package Data_Processing is

   type Data is private;

   procedure Process (D : in out Data);

private

   type Data is null record;

end Data_Processing;