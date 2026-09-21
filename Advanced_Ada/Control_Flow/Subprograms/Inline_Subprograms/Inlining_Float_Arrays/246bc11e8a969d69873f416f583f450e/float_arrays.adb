package body Float_Arrays is

   function Average (Data : Float_Array)
                     return Float
   is
      Total : Float := 0.0;
   begin
      for Value of Data loop
         Total := Total + Value;
      end loop;
      return Total / Float (Data'Length);
   end Average;

end Float_Arrays;