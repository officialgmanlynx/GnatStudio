with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Succ_Pred_Discrete is
   type State is (Idle, Started,
                  Processing, Stopped);

   Machine_State : constant State := Started;

   I : constant Integer := 2;
begin
   Put_Line ("State                     : "
             & Machine_State'Image);
   Put_Line ("State'Pred (Machine_State): "
             & State'Pred (Machine_State)'Image);
   Put_Line ("State'Succ (Machine_State): "
             & State'Succ (Machine_State)'Image);
   Put_Line ("----------");

   Put_Line ("I               : "
             & I'Image);
   Put_Line ("Integer'Pred (I): "
             & Integer'Pred (I)'Image);
   Put_Line ("Integer'Succ (I): "
             & Integer'Succ (I)'Image);
end Show_Succ_Pred_Discrete;