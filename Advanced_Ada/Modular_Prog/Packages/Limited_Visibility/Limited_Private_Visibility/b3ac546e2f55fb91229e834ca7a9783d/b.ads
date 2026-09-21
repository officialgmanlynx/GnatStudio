private with A;

package B is

   type T2 is private;

private

   use A;

   --  Here, we have full visibility
   --  of package A

   type T2 is record
      Value : T1;
   end record;

end B;