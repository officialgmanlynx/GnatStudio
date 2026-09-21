with Ada.Numerics.Elementary_Functions;  use Ada.Numerics.Elementary_Functions;

procedure Compute_Offset (K : Float; Z : out Integer; Flag : out Boolean) is
   X : constant Float := Sin (K);
begin
   if X < 0.0 then
      Z := 0;
      Flag := True;
   elsif X > 0.0 then
      Z := 1;
      Flag := True;
   else
      Flag := False;
   end if;
end Compute_Offset;