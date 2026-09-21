with Ada.Text_IO; use Ada.Text_IO;

procedure Show_String_Literals_With_Quotes is
   S1 : String := "Hello";
   S2 : String := "World";
begin
   Put_Line ("  "" " & S1
   --           ^^
   --       Quotation marks
             & " " & S2 & " ""  ");
   --                       ^^
   --       Quotation marks

   Put_Line ("""Hello World!""");
   --         ^^            ^^
   --          Quotation marks

   Put_Line ("""""");
   --         ^^^^
   --    Quotation marks
end Show_String_Literals_With_Quotes;