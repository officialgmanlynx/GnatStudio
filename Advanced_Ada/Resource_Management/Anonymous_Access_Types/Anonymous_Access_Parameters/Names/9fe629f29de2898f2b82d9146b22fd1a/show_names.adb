with Names; use Names;

procedure Show_Names is
   N : access String := Init ("Lily", "Ann");
begin
   Show (N);
end Show_Names;