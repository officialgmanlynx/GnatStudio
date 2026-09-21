with System.Atomic_Operations.Exchange;
with Ada.Numerics.Discrete_Random;

package Lazy_Initialization is

   subtype Lazy_Value_Total_Range is
     Integer range 99 .. 1000;

   Lazy_Value_Default_Value : constant
      := Lazy_Value_Total_Range'First;

   subtype Lazy_Value_Range is Integer
     range Lazy_Value_Default_Value + 1 ..
           Lazy_Value_Total_Range'Last;

   type Lazy_Value is new Lazy_Value_Total_Range
     with Atomic,
          Default_Value =>
            Lazy_Value_Default_Value;

   package Value_Exchange is new
     System.Atomic_Operations.Exchange
       (Lazy_Value);

   package Lazy_Value_Random is new
     Ada.Numerics.Discrete_Random
       (Lazy_Value_Range);

end Lazy_Initialization;