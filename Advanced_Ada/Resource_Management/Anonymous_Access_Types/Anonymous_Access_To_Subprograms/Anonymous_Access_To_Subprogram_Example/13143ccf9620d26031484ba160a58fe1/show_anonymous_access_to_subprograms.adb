with Anonymous_Access_To_Subprogram;
use  Anonymous_Access_To_Subprogram;

with Add_Ten;

procedure Show_Anonymous_Access_To_Subprograms is
begin
   Proc (Add_Ten'Access);
   --            ^ Getting access to Add_Ten
   --              procedure and passing it
   --              to Proc
end Show_Anonymous_Access_To_Subprograms;