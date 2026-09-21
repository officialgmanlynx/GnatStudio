with System.Atomic_Operations.Modular_Arithmetic;

package Atomic_Modulars is

   type Atomic_Modular is mod 100
     with Atomic;

   package Atomic_Modular_Arithmetic is new
     System.Atomic_Operations.Modular_Arithmetic
       (Atomic_Modular);

end Atomic_Modulars;