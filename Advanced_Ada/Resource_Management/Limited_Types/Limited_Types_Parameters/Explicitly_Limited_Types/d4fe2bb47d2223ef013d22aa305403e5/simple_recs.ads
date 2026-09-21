with System;

package Simple_Recs is

   type Rec is limited record
      I : Integer;
   end record;

   procedure Proc (R : in out Rec;
                   A :    out System.Address);

end Simple_Recs;