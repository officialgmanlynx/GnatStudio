package body National_Date_Containers is

   function Find (Nat_Dates : National_Dates;
                  Country   : Country_Code)
                  return National_Date_Reference
   is
   begin
      for I in Nat_Dates'Range loop
         if Nat_Dates (I).Country = Country then
            return National_Date_Reference'(
                     Ref => Nat_Dates (I));
            --     ^^^^^^^^^^^^^^^^^^^^^^^^^
            --   Returning reference object with a
            --   reference to the national day we
            --   found.
         end if;
      end loop;

      return
        National_Date_Reference'(Ref => null);
      --  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      --   Returning reference object with a null
      --   reference in case the country wasn't
      --   found. This will trigger an exception
      --   if we try to dereference it.
   end Find;

end National_Date_Containers;