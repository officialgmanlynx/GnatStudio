with Names; use Names;

procedure Show_Names is
   N : Name := new String'("John");
begin
   Show (Constant_Name (N));
end Show_Names;