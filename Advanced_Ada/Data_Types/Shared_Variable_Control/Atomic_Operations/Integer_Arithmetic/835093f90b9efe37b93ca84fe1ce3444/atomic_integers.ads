with System.Atomic_Operations.Integer_Arithmetic;

package Atomic_Integers is

   type Atomic_Integer is new Integer
     with Atomic;

   package Atomic_Integer_Arithmetic is new
     System.Atomic_Operations.Integer_Arithmetic
       (Atomic_Integer);

end Atomic_Integers;