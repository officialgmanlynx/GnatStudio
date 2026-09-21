with Serializer;  use Serializer;
with My_Recs;     use My_Recs;

procedure Main is
   R : Rec := (5, "abc");
   B : Bit_Field (0 .. R'Size - 1)
     with Address => R'Address, Import, Volatile;
begin
   Transmit (B);
end Main;