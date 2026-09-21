with System;

package Machine_X is

   type Rec is record
      A : Integer;
   end record;

   Global_R : Rec := (A => 0);

   procedure Update_Value
     (R  : in out Rec;
      AR :        System.Address);

end Machine_X;