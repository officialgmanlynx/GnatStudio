package Simple_Storage is

   type Storage_Model is null record;

   procedure Set (S : in out Storage_Model;
                  V :        String) is null;
   procedure Display (S : Storage_Model) is null;

end Simple_Storage;