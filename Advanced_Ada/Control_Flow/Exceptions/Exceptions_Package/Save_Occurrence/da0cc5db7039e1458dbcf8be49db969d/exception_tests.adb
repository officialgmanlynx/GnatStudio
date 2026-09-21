package body Exception_Tests is

   procedure Save_To_List
     (E          :        Exception_Occurrence;
      All_Occur  : in out All_Exception_Occur;
      Last_Occur : in out Integer)
   is
      L : Integer renames Last_Occur;
      O : All_Exception_Occur renames All_Occur;
   begin
      L := L + 1;
      if L > O'Last then
         raise Constraint_Error
           with "Cannot save occurrence";
      end if;

      Save_Occurrence (Target => O (L),
                       Source => E);
   end Save_To_List;

   procedure Test_Exceptions
     (All_Occur  : in out All_Exception_Occur;
      Last_Occur :    out Integer)
   is

      procedure Nested_1 is
      begin
         raise Custom_Exception
           with "We got a problem";
      exception
         when E : others =>
            Save_To_List (E,
                          All_Occur,
                          Last_Occur);
      end Nested_1;

      procedure Nested_2 is
      begin
         raise Constraint_Error
           with "Constraint is not correct";
      exception
         when E : others =>
            Save_To_List (E,
                          All_Occur,
                          Last_Occur);
      end Nested_2;

   begin
      Last_Occur := 0;

      Nested_1;
      Nested_2;
   end Test_Exceptions;

end Exception_Tests;