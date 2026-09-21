with Spinlocks;
use Spinlocks;
use Spinlocks.Lock_Exchange;

procedure Show_Locks is
   L : aliased Lock := False;
begin
   --  Get the lock
   while Atomic_Exchange (Item  => L,
                          Value => True) loop
      null;
   end loop;

   --  At this point, we got the lock.
   --  Do some stuff here...

   --  Release the lock.
   L := False;
end Show_Locks;