with Work_Registry;

package Integer_Storage_System is

   protected type Integer_Storage is

      procedure Set (V : Integer);

      procedure Show (T : Work_Registry.Work_Id);

   private

      I : Integer := 0;

   end Integer_Storage;

   type Integer_Storage_Access is
     access Integer_Storage;

   type Integer_Storage_Array is
     array (Positive range <>) of
       Integer_Storage_Access;

end Integer_Storage_System;