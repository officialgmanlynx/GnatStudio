package Ring_Buffer is

   Max_Size : constant := 100;

   type Nat_Array is array (Positive range <>) of Natural;

   function Get_Model return Nat_Array with Ghost;

   procedure Push_Last (E : Natural) with
     Pre  => Get_Model'Length < Max_Size,
     Post => Get_Model'Length = Get_Model'Old'Length + 1;

end Ring_Buffer;