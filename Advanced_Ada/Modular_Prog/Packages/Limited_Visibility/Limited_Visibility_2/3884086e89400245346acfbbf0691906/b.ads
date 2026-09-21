limited with A;

package B is

   type T2 is record
      Ref : access A.T1;
   end record;

end B;