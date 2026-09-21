procedure Bad_Conversions is
   pragma Warnings (Off);
   F : Float := 0.0;
   I : Integer := 0;
   type Animal is (Ape, Bee, Cat);
   type My_Animal is new Animal; -- derived type
   A : Animal := Cat;
   M : My_Animal := Bee;
   B : Boolean := True;
   C : Character := 'a';
begin
   F := I;  --  ERROR
   I := A;  --  ERROR
   A := B;  --  ERROR
   M := A;  --  ERROR
   B := C;  --  ERROR
   C := F;  --  ERROR
end Bad_Conversions;