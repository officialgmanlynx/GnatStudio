with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Succ_Pred_Real is
   subtype My_Float is
     Float range 0.0 .. 0.5;

   type Decimal is
     delta 0.1 digits 2
     range 0.0 .. 0.5;

   D : Decimal;
   N : My_Float;
begin
   Put_Line ("---- DECIMAL -----");
   Put_Line ("Small: " & Decimal'Small'Image);
   Put_Line ("----- Succ -------");
   D := Decimal'First;
   loop
      Put_Line (D'Image);
      D := Decimal'Succ (D);

      exit when D = Decimal'Last;
   end loop;
   Put_Line ("----- Pred -------");

   D := Decimal'Last;
   loop
      Put_Line (D'Image);
      D := Decimal'Pred (D);

      exit when D = Decimal'First;
   end loop;
   Put_Line ("==================");

   Put_Line ("---- MY_FLOAT ----");
   Put_Line ("----- Succ -------");
   N := My_Float'First;
   for I in 1 .. 5 loop
      Put_Line (N'Image);
      N := My_Float'Succ (N);
   end loop;
   Put_Line ("----- Pred -------");

   for I in 1 .. 5 loop
      Put_Line (N'Image);
      N := My_Float'Pred (N);
   end loop;
end Show_Succ_Pred_Real;