package body Sign_Domain is

   procedure Get_Sign (X : Integer; S : out Sign) is
   begin
      case X is
         when 0 => S := Zero;
         when others => S := Negative;  --  ERROR
         when 1 .. Integer'Last => S := Positive;
      end case;
   end Get_Sign;

end Sign_Domain;