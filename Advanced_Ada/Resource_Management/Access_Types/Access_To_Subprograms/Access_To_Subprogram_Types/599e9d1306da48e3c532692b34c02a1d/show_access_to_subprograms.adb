with Access_To_Subprogram_Params;
use  Access_To_Subprogram_Params;

with Add_Ten;

procedure Show_Access_To_Subprograms is
begin
   Proc (Add_Ten'Access);
   --            ^ Getting access to Add_Ten
   --              procedure and passing it
   --              to Proc
end Show_Access_To_Subprograms;