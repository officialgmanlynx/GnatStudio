with Ada.Text_IO; use Ada.Text_IO;

package body Linked_Lists is

   procedure Append_Front
      (L : in out List;
       E :        T)
   is
      New_First : constant List := new
        Component'(Value => E,
                   Next  => L);
   begin
      L := New_First;
   end Append_Front;

   procedure Append_Rear
      (L : in out List;
       E :        T)
   is
      New_Last : constant List := new
        Component'(Value => E,
                   Next  => null);
   begin
      if L = null then
         L := New_Last;
      else
         declare
            Last : List := L;
         begin
            while Last.Next /= null loop
               Last := Last.Next;
            end loop;
            Last.Next := New_Last;
         end;
      end if;
   end Append_Rear;

   procedure Show (L : List) is
      Curr : List := L;
   begin
      if L = null then
         Put_Line ("[ ]");
      else
         Put ("[");
         loop
            Put (Curr.Value'Image);
            Put (" ");
            exit when Curr.Next = null;
            Curr := Curr.Next;
         end loop;
         Put_Line ("]");
      end if;
   end Show;

end Linked_Lists;