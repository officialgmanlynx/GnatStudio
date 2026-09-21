with Ada.Text_IO; use Ada.Text_IO;

procedure Show_String_Construct is

   function Make_String
     (S          : String;
      Prefix     : String;
      Use_Prefix : Boolean) return String
   is
      Length : Natural := S'Length;
   begin
      if Use_Prefix then
         Length := Length + Prefix'Length;
      end if;

      return Result : String (1 .. Length) do

         --  fill in the characters
         if Use_Prefix then
            Result
              (1 .. Prefix'Length) := Prefix;

            Result
              (Prefix'Length + 1 .. Length) := S;
         else
            Result := S;
         end if;

      end return;
   end Make_String;

   S1 : String := "Ada";
   S2 : String := "Make_With_";
begin
   Put_Line ("No prefix:   "
             & Make_String (S1, S2, False));
   Put_Line ("With prefix: "
             & Make_String (S1, S2, True));
end Show_String_Construct;