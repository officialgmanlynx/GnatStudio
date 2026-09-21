with Ada.Text_IO; use Ada.Text_IO;

procedure Primitives is
   package Week is
      type Days is (Monday, Tuesday, Wednesday,
                    Thursday, Friday,
                    Saturday, Sunday);

      --  Print_Day is a primitive
      --  of the type Days
     procedure Print_Day (D : Days);
   end Week;

   package body Week is
      procedure Print_Day (D : Days) is
      begin
         Put_Line (Days'Image (D));
      end Print_Day;
   end Week;

   use Week;
   type Weekend_Days is new
     Days range Saturday .. Sunday;

   --  A procedure Print_Day is automatically
   --  inherited here. It is as if the procedure
   --
   --  procedure Print_Day (D : Weekend_Days);
   --
   --  has been declared with the same body

   Sat : Weekend_Days := Saturday;
begin
   Print_Day (Sat);
end Primitives;