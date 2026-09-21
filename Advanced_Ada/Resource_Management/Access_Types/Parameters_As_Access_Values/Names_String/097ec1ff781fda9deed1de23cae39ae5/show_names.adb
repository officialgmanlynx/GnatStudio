with Names; use Names;

procedure Show_Names is
   N : Name := new String'("John");
begin
   Show (N.all);
end Show_Names;