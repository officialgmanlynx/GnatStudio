pragma Restrictions (No_Anonymous_Allocators);

procedure Show_Dangerous_Allocation is
   IA : access Integer;
begin
   IA := new Integer;
   IA.all := 30;
end Show_Dangerous_Allocation;