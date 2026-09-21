with Ada.Wide_Wide_Text_IO;
with Ada.Characters.Conversions;

procedure Main is

   type My_Type (Length : Natural) is record
      Value : Wide_Wide_String (1 .. Length);
   end record
     with String_Literal => From_String,
       Real_Literal      => From_Real,
       Integer_Literal   => From_Integer;

   function "+" (Left, Right : My_Type) return My_Type is
     (Left.Length + Right.Length, Left.Value & Right.Value);

   function From_String (Value : Wide_Wide_String) return My_Type is
      ((Length => Value'Length, Value => Value));

   function From_Real (Value : String) return My_Type is
      ((Length => Value'Length,
        Value  => Ada.Characters.Conversions.To_Wide_Wide_String (Value)));

   function From_Integer (Value : String) return My_Type renames From_Real;

   procedure Print (Self : My_Type) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line (Self.Value);
   end Print;

begin
   Print ("5" + 3);
end Main;