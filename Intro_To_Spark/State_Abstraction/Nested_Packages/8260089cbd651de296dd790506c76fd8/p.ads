package P with
   Abstract_State => State
is
   package Visible_Nested with
      Abstract_State => Visible_State
   is
      procedure Get (E : out Integer);
   end Visible_Nested;
end P;