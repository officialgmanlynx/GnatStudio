package Simple_Storage is

   type Storage_Model is null record;

   procedure Set (S : in out Storage_Model;
                  V :        String) is null;
   procedure Display (S : Storage_Model) is null;

   type Integer_Storage is private;

   procedure Set (S : in out Integer_Storage;
                  V :        String);
   procedure Display (S : Integer_Storage);

private

   type Integer_Storage is record
      V : Integer := 0;
   end record;

end Simple_Storage;