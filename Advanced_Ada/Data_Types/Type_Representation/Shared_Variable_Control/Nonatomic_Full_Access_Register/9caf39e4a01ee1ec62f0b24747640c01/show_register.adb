with Ada.Text_IO; use Ada.Text_IO;

with Registers;   use Registers;

procedure Show_Register is
   WR : Window_Register;
begin
   --  Nonatomic full-access assignment
   --  using an aggregate:
   WR := (Horizontal_Cnt => 800,
          Vertical_Cnt   => 600,
          Refresh_Needed => True,
          others         => <>);

   Show (WR);
end Show_Register;