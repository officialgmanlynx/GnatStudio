package body Ring_Buffer is

   subtype Length_Range is Natural range 0 .. Max_Size;
   subtype Index_Range  is Natural range 1 .. Max_Size;

   Content : Nat_Array (1 .. Max_Size) := (others => 0);
   First   : Index_Range               := 1;
   Length  : Length_Range              := 0;

   function Get_Model return Nat_Array with
     Refined_Post => Get_Model'Result'Length = Length
   is
      Size   : constant Length_Range := Length;
      Result : Nat_Array (1 .. Size) := (others => 0);
   begin
      if First + Length - 1 <= Max_Size then
         Result := Content (First .. First + Length - 1);
      else
         declare
            Len : constant Length_Range := Max_Size - First + 1;
         begin
            Result (1 .. Len) := Content (First .. Max_Size);
            Result (Len + 1 .. Length) := Content (1 .. Length - Len);
         end;
      end if;
      return Result;
   end Get_Model;

   procedure Push_Last (E : Natural) is
   begin
      if First + Length <= Max_Size then
         Content (First + Length) := E;
      else
         Content (Length - Max_Size + First) := E;
      end if;
      Length := Length + 1;
   end Push_Last;

end Ring_Buffer;