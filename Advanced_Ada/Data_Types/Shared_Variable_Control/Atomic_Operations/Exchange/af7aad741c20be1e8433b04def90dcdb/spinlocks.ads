with System.Atomic_Operations.Exchange;

package Spinlocks is

   type Lock is new Boolean with Atomic;

   package Lock_Exchange is new
     System.Atomic_Operations.Exchange (Lock);

end Spinlocks;