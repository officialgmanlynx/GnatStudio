with Arbitrary_Types;

procedure Serialize_Data (Some_Object : Arbitrary_Types.Arbitrary_Record) is
   type UByte is new Natural range 0 .. 255
     with Size => 8;

   type UByte_Array is array (Positive range <>) of UByte;

   --
   --  We can access the serialized data in Raw_TX, which is our overlay
   --
   Raw_TX : UByte_Array (1 .. Some_Object'Size / 8)
     with Address => Some_Object'Address;
begin
   null;
   --
   --  Now, we could stream the data from Some_Object.
   --
   --  For example, we could send the bytes (from Raw_TX) via the
   --  serial port.
   --
end Serialize_Data;