procedure Show_Numeric_Expressions is
   C1    : constant Integer := 5;
   Dummy :          Integer;
begin
   Dummy :=
       -2 ** 4 + 3 * C1 ** 8;
   --                      ^ numeric literal
   --                      ^ primary
   --                ^^      name
   --                ^^      primary
   --                ^^^^^^^ factor
   --              ^ multiplying operator
   --            ^           numeric literal
   --            ^           primary
   --            ^           factor
   --            ^^^^^^^^^^^ term
   --
   --        ^ numeric literal
   --        ^ primary
   --   ^ numeric literal
   --   ^ primary
   --   ^^^^^^               factor
   --   ^^^^^^               term
   --          ^ binary adding operator
   --  ^ unary adding operator
   --
   --  ^^^^^^^^^^^^^^^^^^^^^^ simple expression
   --
   --  ^^^^^^^^^^^^^^^^^^^^^^ expression
end Show_Numeric_Expressions;