with Names; use Names;

procedure Show_Names is
   S : Name := new String'("John");
begin
   Show (Constant_Name (S));
end Show_Names;