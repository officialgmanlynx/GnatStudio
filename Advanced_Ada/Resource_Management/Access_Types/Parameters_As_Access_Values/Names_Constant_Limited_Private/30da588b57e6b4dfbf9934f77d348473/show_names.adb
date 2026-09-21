with Names; use Names;

procedure Show_Names is
   N : Name := Init ("John");
begin
   Show (To_Constant_Name (N));
end Show_Names;