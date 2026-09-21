with Arbitrary_Types;
with Serialize_Data;

procedure Data_Stream_Declaration is
   Dummy_Object : Arbitrary_Types.Arbitrary_Record;

begin
    Serialize_Data (Dummy_Object);
end Data_Stream_Declaration;