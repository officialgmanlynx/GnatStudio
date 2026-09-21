package body Work_Registry is

   protected body Work_Handler_Registry is

      procedure Register (T : Valid_Work_Handler)
      is
      begin
         if Curr < Last then
            Curr := Curr + 1;
            D (Curr) := T;
         end if;
      end Register;

      procedure Reset is
      begin
         Curr := 0;
      end Reset;

      procedure Process_All is
         Dummy_ID : Work_Id;
      begin
         for I in D'First .. Curr loop
            D (I).all (Dummy_ID);
         end loop;
      end Process_All;

   end Work_Handler_Registry;

end Work_Registry;