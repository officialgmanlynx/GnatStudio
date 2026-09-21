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
   F := Float (I);       --  OK
   I := Integer (A);     --  ERROR
   A := Animal (B);      --  ERROR
   M := My_Animal (A);   --  OK
   B := Boolean (C);     --  ERROR
   C := Character (F);   --  ERROR
end Bad_Conversions;