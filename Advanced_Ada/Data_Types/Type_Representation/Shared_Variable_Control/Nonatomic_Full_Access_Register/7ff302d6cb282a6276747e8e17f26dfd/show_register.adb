with Registers;   use Registers;

procedure Show_Register is
   WR : Window_Register;
begin
   --  Nonatomic full-access assignments
   WR.Horizontal_Cnt := 800;
   WR.Vertical_Cnt   := 600;
   WR.Refresh_Needed := True;

   Show (WR);
end Show_Register;