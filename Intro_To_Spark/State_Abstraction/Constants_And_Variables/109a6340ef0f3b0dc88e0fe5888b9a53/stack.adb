with Configuration;
pragma Elaborate (Configuration);

package body Stack with
  Refined_State => (The_Stack => (Content, Top, Max))
  --  Max has variable inputs. It must appear as a
  --  constituent of The_Stack
is
   Max : constant Positive := Configuration.External_Variable;

   type Element_Array is array (1 .. Max) of Element;

   Content : Element_Array := (others => 0);
   Top     : Natural range 0 .. Max := 0;

   procedure Pop (E : out Element) is
   begin
      E   := Content (Top);
      Top := Top - 1;
   end Pop;

   procedure Push (E : Element) is
   begin
      Top           := Top + 1;
      Content (Top) := E;
   end Push;

end Stack;