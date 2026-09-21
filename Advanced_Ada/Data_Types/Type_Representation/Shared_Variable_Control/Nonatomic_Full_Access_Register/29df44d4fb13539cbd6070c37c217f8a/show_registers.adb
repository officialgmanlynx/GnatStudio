with Ada.Text_IO; use Ada.Text_IO;

with Registers;   use Registers;

procedure Show_Registers is
   WR : Window_Register :=
          (Horizontal_Cnt => 800,
           Vertical_Cnt   => 600,
           others         => <>);
begin
   --  Delta assignment
   WR := (WR with delta
               Vertical_Cnt   => 800,
               Refresh_Needed => True);

   Show (WR);
end Show_Registers;