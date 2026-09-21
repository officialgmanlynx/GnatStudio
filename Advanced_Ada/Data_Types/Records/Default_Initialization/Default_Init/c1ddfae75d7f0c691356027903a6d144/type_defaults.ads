package Type_Defaults is
   type Color_Enum is (Red, Blue, Green);

   type T is private;
private
   type T is
      record
         Color     : Color_Enum := Red;
         Is_Gnarly : Boolean := False;
         Count     : Natural;
      end record;

   procedure Do_Something;
end Type_Defaults;