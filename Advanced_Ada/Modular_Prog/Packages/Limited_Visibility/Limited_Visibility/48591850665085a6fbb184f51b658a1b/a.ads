limited with B;

package A is

   type T1 is record
      Ref : access B.T2;
   end record;

end A;