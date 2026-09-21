with Ada.Text_IO; use Ada.Text_IO;

procedure Ok_Arith is

   B1 : constant Boolean := False;
   B2 : constant Boolean := Boolean'Succ (B1);
   B3 : constant Boolean := Boolean'Pred (B2);

   type Fruit is (Apple, Orange);
   F1 : constant Fruit := Apple;
   F2 : constant Fruit := Fruit'Succ (F1);
   F3 : constant Fruit := Fruit'Pred (F2);

begin
   pragma Assert (B1 = B3);
   pragma Assert (F1 = F3);

   for B in Boolean loop
      Put_Line (B'Img);
   end loop;

   for F in Fruit loop
      Put_Line (F'Img);
   end loop;
end Ok_Arith;