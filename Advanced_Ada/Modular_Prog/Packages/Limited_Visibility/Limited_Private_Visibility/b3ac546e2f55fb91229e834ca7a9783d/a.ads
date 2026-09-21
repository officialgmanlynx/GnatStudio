limited private with B;

package A is

   type T1 is private;

private

   --  Here, we have limited visibility
   --  of package B

   type T1 is record
      Ref : access B.T2;
   end record;

end A;