with National_Date_Info; use National_Date_Info;

package National_Date_Containers is

   --  Reference type:
   type National_Date_Reference
     (Ref : access National_Date) is
       tagged limited null record
         with Implicit_Dereference => Ref;

   --  Container (as an array):
   type National_Dates is
     array (Positive range <>) of
       National_Date_Access;

   --  The Find function scans the container to
   --  find a specific country, which is returned
   --  as a reference object.
   function Find (Nat_Dates : National_Dates;
                  Country   : Country_Code)
                  return National_Date_Reference;

end National_Date_Containers;