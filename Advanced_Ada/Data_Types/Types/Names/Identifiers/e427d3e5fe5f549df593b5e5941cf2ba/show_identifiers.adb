procedure Show_Identifiers is
--        ^^^^^^^^^^^^^^^^
--           identifier

   type New_Integer is new
   --   ^^^^^^^^^^^
   --     identifier
     Integer;
   --  ^^^^^
   --   identifier

   Something_Important : New_Integer;
   --  ^^^^^^^^^^^^^^^
   --  identifier
   --                    ^^^^^^^^^^^
   --                     identifier
begin
  null;
end Show_Identifiers;