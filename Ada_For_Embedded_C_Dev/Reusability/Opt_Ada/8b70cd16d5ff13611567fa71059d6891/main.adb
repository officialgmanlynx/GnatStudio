with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Opt_Float (Success : Boolean) is record
      case Success is
        when False => null;
        when True  => F : Float;
      end case;
   end record;

   function Calculate (F1, F2 : Float) return Opt_Float is
   begin
      if F1 < F2 then
         return (Success => True, F => F2 - F1);
      else
         return (Success => False);
      end if;
   end Calculate;

   procedure Display (V : Opt_Float) is
   begin
      if V.Success then
         Put_Line ("Value = " & Float'Image (V.F));
      else
         Put_Line ("Calculation error!");
      end if;
   end Display;

begin
   Display (Calculate (1.0, 0.5));
   Display (Calculate (0.5, 1.0));
end Main;