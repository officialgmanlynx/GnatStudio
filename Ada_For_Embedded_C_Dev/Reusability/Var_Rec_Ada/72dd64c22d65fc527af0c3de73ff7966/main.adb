with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Float_Int (Use_Float : Boolean) is record
      case Use_Float is
        when True  => F : Float;
        when False => I : Integer;
      end case;
   end record;

   procedure Display (V : Float_Int) is
   begin
      if V.Use_Float then
         Put_Line ("Float value:   " & Float'Image (V.F));
      else
         Put_Line ("Integer value: " & Integer'Image (V.I));
      end if;
   end Display;

   F : constant Float_Int := (Use_Float => True,  F => 10.0);
   I : constant Float_Int := (Use_Float => False, I => 9);

begin
   Display (F);
   Display (I);
end Main;