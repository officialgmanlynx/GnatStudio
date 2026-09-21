package body Sign_Domain is

   procedure Get_Sign (X : Integer; S : out Sign) is
   begin
      case X is
         when 0 => S := Zero;
         when 1 .. Integer'Last => S := Positive;
         when others => S := Negative;
      end case;
   end Get_Sign;

end Sign_Domain;