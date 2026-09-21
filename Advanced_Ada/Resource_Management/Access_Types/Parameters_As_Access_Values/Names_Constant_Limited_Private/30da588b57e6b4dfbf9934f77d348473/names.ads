package Names is

   type Name is limited private;

   type Constant_Name is limited private;

   function Init (S : String) return Name;

   function To_Constant_Name
     (N : Name)
      return Constant_Name;

   procedure Show (N : Constant_Name);

private

   type Name is
     access String;

   type Constant_Name is
     access constant String;

   function Init (S : String) return Name is
     (new String'(S));

   function To_Constant_Name
     (N : Name)
      return Constant_Name is
        (Constant_Name (N));

end Names;