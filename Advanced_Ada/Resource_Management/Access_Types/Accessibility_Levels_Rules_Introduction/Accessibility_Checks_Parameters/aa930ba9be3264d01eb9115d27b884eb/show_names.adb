with Names; use Names;

procedure Show_Names is
   S : aliased String := "John";
begin
   Show (S'Access);
end Show_Names;