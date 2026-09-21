with Ada.Text_IO; use Ada.Text_IO;

with Scales;      use Scales;

procedure Show_Case_Statement_Expression is
   Score : constant Scale := 0;
begin
   Put_Line ("Score: "
             & Scale'Image (Score)
             & Satisfaction_Scale'Image (
                 To_Satisfaction_Scale (Score)));

end Show_Case_Statement_Expression;