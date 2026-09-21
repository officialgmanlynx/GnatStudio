package Access_Type_Abstraction is

   type Info is limited private;

   function To_Info (S : String) return Info;

   function To_String (Obj : Info)
                       return String;

   function Copy (Obj : Info) return Info;

   procedure Copy (To   : in out Info;
                   From :        Info);

   procedure Append (Obj : in out Info;
                     S   : String);

   procedure Reset (Obj : in out Info);

   procedure Destroy (Obj : in out Info);

private

   type Info is access String;

end Access_Type_Abstraction;