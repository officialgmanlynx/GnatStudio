with Ada.Text_IO;         use Ada.Text_IO;
with Show_Integer_Array;

procedure Show_Integer_Array_Header
  (AA : Integer_Array;
   HH : String)
is
begin
   Put_Line (HH);
   Show_Integer_Array (AA);
end Show_Integer_Array_Header;