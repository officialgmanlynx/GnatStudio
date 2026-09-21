procedure Show_Parenthesized_Expressions is
   C1 : constant Integer := 4;
   C2 : constant Integer := 5;

   Dummy : Integer;
begin
   Dummy :=
       (2 + C1) * C2;
   --       ^^       name
   --       ^^       primary
   --       ^^       factor
   --       ^^       term
   --
   --   ^            numeric literal
   --   ^            primary
   --   ^            factor
   --   ^            term
   --
   --     ^          binary adding operator
   --  ^^^^^^^^      simple expression
   --
   --  ^^^^^^^^      expression
   --  ^^^^^^^^      primary
   --  ^^^^^^^^      factor
   --
   --             ^^ factor
   --  ^^^^^^^^^^^^^ term
   --
   --  ^^^^^^^^^^^^^ simple expression
   --
   --  ^^^^^^^^^^^^^ expression
end Show_Parenthesized_Expressions;