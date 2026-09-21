package Linked_List_Example is

   type Integer_List;

   type Next is access Integer_List;

   type Integer_List is record
      I : Integer;
      N : Next;
   end record;

end Linked_List_Example;