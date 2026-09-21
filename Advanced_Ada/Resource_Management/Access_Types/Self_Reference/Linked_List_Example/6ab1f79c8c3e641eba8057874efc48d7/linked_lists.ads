generic
   type T is private;
package Linked_Lists is

   type List is limited private;

   procedure Append_Front
      (L : in out List;
       E :        T);

   procedure Append_Rear
      (L : in out List;
       E :        T);

   procedure Show (L : List);

private

   --  Incomplete type declaration:
   type Component;

   --  Using incomplete type:
   type List is access Component;

   type Component is record
      Value : T;
      Next  : List;
      --      ^^^^
      --   Self-reference via access type
   end record;

end Linked_Lists;