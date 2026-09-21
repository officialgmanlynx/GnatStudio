package body Ring_Buffer is

   Content : Nat_Array (1 .. Max_Size) := (others => 0);
   First   : Index_Range               := 1;
   Length  : Length_Range              := 0;

   function Valid_Model return Boolean is
      (Model.Content'Length = Length);

   procedure Push_Last (E : Natural) is

      procedure Update_Model with Ghost is
         New_Length : constant Length_Range := Model.Length + 1;
      begin
         Model := (Length  => New_Length,
                   Content => Model.Content & E);
      end Update_Model;

   begin
      if First + Length <= Max_Size then
         Content (First + Length) := E;
      else
         Content (Length - Max_Size + First) := E;
      end if;
      Length := Length + 1;
      Update_Model;
   end Push_Last;

end Ring_Buffer;