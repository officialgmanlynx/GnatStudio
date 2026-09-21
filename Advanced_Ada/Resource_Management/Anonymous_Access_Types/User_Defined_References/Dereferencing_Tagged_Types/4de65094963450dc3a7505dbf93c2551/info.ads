package Info is
   type Id_Number (Id : Positive) is
     tagged private;

   procedure Show (R : Id_Number);
private
   type Id_Number (Id : Positive) is
     tagged null record;
end Info;