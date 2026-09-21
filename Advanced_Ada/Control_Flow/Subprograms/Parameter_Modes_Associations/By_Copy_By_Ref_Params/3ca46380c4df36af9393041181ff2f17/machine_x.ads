with System;

package Machine_X is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Rec is record
      A : Integer;
   end record;

   type Rec_Array is record
      A   : Integer;
      Arr : Integer_Array (1 .. 100);
   end record;

   type Tagged_Rec is tagged record
      A : Integer;
   end record;

   procedure Update_Value
     (R  : in out Rec;
      AR :        System.Address);

   procedure Update_Value
     (RA  : in out Rec_Array;
      ARA :        System.Address);

   procedure Update_Value
     (R  : in out Tagged_Rec;
      AR :        System.Address);

end Machine_X;