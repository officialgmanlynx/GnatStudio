with Ada.Text_IO;      use Ada.Text_IO;

package body Measurement_Defs is

   procedure Show_Indices (M : Measurements) is
   begin
      Put_Line ("---- Indices ----");

      for D in M'Range loop
         Put (D'Image & " ");

         for H in M (D)'First ..
                  M (D)'Last - 1
         loop
            Put (H'Image & " ");
         end loop;
         Put_Line (M (D)'Last'Image);
      end loop;
   end Show_Indices;

   procedure Show_Values (M : Measurements) is
      package H_IO is
        new Ada.Text_IO.Integer_IO (Hours);
      package M_IO is
        new Ada.Text_IO.Float_IO (Measurement);

        procedure Set_IO_Defaults is
        begin
           H_IO.Default_Width := 5;

           M_IO.Default_Fore  := 1;
           M_IO.Default_Aft   := 2;
           M_IO.Default_Exp   := 0;
        end Set_IO_Defaults;
   begin
      Set_IO_Defaults;

      Put_Line ("---- Values ----");
      Put ("   ");
      for H in M (M'First)'Range loop
         H_IO.Put (H);
      end loop;
      New_Line;

      for D in M'Range loop
         Put (D'Image & " ");

         for H in M (D)'Range loop
            M_IO.Put (M (D) (H));
            Put (" ");
         end loop;
         New_Line;
      end loop;
   end Show_Values;

   procedure Reset (M : out Measurements) is
   begin
      M := (others => (others => 0.0));
   end Reset;

end Measurement_Defs;