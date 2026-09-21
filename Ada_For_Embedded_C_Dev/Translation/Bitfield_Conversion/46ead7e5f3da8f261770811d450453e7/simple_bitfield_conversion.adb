with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Unchecked_Conversion;

procedure Simple_Bitfield_Conversion is
   type Bit_Field is array (Natural range <>) of Boolean with Pack;

   V : Integer := 4;

   --  Declaring subtype that takes the size of V into account.
   --
   subtype Integer_Bit_Field is Bit_Field (0 .. V'Size - 1);

   --  NOTE: we could also use the Integer type in the declaration:
   --
   --    subtype Integer_Bit_Field is Bit_Field (0 .. Integer'Size - 1);
   --

   --  Using the Integer_Bit_Field subtype as the target
   function As_Bit_Field is new
     Ada.Unchecked_Conversion (Source => Integer,
                               Target => Integer_Bit_Field);

   B : Integer_Bit_Field;
begin
   B := As_Bit_Field (V);

   Put_Line ("V = " & Integer'Image (V));
end Simple_Bitfield_Conversion;