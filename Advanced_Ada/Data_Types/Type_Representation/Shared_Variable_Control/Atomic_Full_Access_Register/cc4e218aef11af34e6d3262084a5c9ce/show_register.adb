with Registers;   use Registers;

procedure Show_Register is
   WR : Window_Register :=
          (Horizontal_Cnt => 800,
           Vertical_Cnt   => 600,
           Refresh_Needed => True,
           others         => <>);
begin
   WR := (Horizontal_Cnt =>
            WR.Horizontal_Cnt * 2,
          Vertical_Cnt   =>
            Wr.Vertical_Cnt   * 2,
          others         => <>);

   Show (WR);
end Show_Register;