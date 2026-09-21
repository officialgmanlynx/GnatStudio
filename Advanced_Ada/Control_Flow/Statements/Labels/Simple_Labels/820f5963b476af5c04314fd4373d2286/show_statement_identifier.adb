with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Statement_Identifier is
   pragma Warnings (Off, "is not referenced");
begin
   <<Show_Hello>> Put_Line ("Hello World!");
   <<Show_Test>>  Put_Line ("This is a test.");

   <<Show_Separator>>
   <<Show_Block_Separator>>
   Put_Line ("====================");
end Show_Statement_Identifier;