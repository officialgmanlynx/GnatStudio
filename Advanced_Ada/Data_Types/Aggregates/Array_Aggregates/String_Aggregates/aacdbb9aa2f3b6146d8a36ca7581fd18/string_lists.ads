package String_Lists is

   type String_List is array (Positive range <>,
                              Positive range <>)
                              of Character;

   procedure Display (SL : String_List);

end String_Lists;