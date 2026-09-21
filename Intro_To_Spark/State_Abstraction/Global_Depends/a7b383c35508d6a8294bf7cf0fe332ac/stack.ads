package Stack with
   Abstract_State => (Top_State, Content_State)
is
   type Element is new Integer;

   procedure Pop (E : out Element) with
     Global  => (Input  => Content_State,
                 In_Out => Top_State),
     Depends => (Top_State => Top_State,
                 E         => (Content_State, Top_State));

end Stack;