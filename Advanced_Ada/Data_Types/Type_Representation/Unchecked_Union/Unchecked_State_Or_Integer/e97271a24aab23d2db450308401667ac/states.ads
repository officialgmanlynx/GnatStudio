package States is

   type State is (Off, On, Waiting)
     with Size => Integer'Size;

   for State use (Off     => 1,
                  On      => 2,
                  Waiting => 4);

   type State_Or_Integer (Use_Enum : Boolean) is
   record
      case Use_Enum is
         when False => I : Integer;
         when True  => S : State;
      end case;
   end record;

   type Unchecked_State_Or_Integer
     (Use_Enum : Boolean) is new
       State_Or_Integer (Use_Enum)
         with Unchecked_Union;

   procedure Display_State_Value
     (V : Unchecked_State_Or_Integer);

end States;