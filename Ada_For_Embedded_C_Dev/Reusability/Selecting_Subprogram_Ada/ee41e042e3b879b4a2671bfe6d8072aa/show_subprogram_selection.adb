with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Subprogram_Selection is

   procedure Show_Msg_V1 (Msg : String) is
   begin
      Put_Line ("Using version #1: " & Msg);
   end Show_Msg_V1;

   procedure Show_Msg_V2 (Msg : String) is
   begin
      Put_Line ("Using version #2: ");
      Put_Line (Msg);
   end Show_Msg_V2;

   type Show_Msg_Proc is access procedure (Msg : String);

   Current_Show_Msg : Show_Msg_Proc;
   Selection        : Natural;

begin
   Selection := 1;

   case Selection is
      when 1      => Current_Show_Msg := Show_Msg_V1'Access;
      when 2      => Current_Show_Msg := Show_Msg_V2'Access;
      when others => Current_Show_Msg := null;
   end case;

   if Current_Show_Msg /= null then
      Current_Show_Msg ("Hello there!");
   else
      Put_Line ("ERROR: no version of Show_Msg selected!");
   end if;

end Show_Subprogram_Selection;