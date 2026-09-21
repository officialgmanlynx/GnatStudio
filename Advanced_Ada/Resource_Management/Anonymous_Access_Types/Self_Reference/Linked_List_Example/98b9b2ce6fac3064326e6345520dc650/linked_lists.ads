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

   type Component is record
      Next  : access Component;
      --      ^^^^^^^^^^^^^^^^
      --       Self-reference
      --
      --       (Note that we haven't finished the
      --       declaration of the "Component" type
      --       yet, but we're already referring to
      --       it.)

      Value : T;
   end record;

   type List is access all Component;

end Linked_Lists;