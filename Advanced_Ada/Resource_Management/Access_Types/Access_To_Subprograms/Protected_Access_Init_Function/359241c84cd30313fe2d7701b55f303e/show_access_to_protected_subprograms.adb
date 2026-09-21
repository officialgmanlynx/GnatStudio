with Work_Registry;
use  Work_Registry;

with Integer_Storage_System;
use  Integer_Storage_System;

procedure Show_Access_To_Protected_Subprograms
is
   WHR      : Work_Handler_Registry (5);

   Int_Stor : array (1 .. 3) of Integer_Storage;

begin
   --  Allocate and initialize integer storage
   --
   --  (For the initialization, we're just
   --  assigning the index here, but we could
   --  really have used any integer value.)

   for I in Int_Stor'Range loop
      --  Int_Stor (I) := new Integer_Storage;
      Int_Stor (I).Set (I);
   end loop;

   --  Register handlers

   for I in Int_Stor'Range loop
      WHR.Register (Int_Stor (I).Show'Access);
      --            ^ ERROR!
   end loop;

   --  Now, call the handlers
   --  (i.e. the Show procedure of each
   --   protected object).

   WHR.Process_All;

end Show_Access_To_Protected_Subprograms;