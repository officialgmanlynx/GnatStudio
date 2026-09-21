with Memories; use Memories;

procedure Read_Record (Memory : Chunk; From : Integer)
  with SPARK_Mode => On,
       Pre => From in Memory'First .. Memory'Last - 2
is
   function Read_One (First : Integer; Offset : Integer) return Integer is
      Value : Integer := Memory (First + Offset);
   begin
      if Is_Too_Coarse (Value) then
         Treat_Value (Value);
      end if;
      return Value;
   end Read_One;

   Data1, Data2 : Integer;

begin
   Data1 := Read_One (From, 1);
   Data2 := Read_One (From, 2);
end Read_Record;