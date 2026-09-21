package Names is

   type Name is limited private;

   function Init (S : String) return Name;

   function Equal (N1, N2 : Name)
                   return Boolean;

   procedure Show (N : Name)
     with Post => Equal (N'Old = N);

private

   type Name is access String;

   function Init (S : String) return Name is
     (new String'(S));

   function Equal (N1, N2 : Name)
                   return Boolean is
     (N1.all = N2.all);

end Names;