with Ada.Unchecked_Deallocation;

package body Access_Type_Abstraction is

   function To_Info (S : String) return Info is
     (new String'(S));

   function To_String (Obj : Info)
                       return String is
     (if Obj /= null then Obj.all else "");

   function Copy (Obj : Info) return Info is
     (To_Info (To_String (Obj)));

   procedure Copy (To   : in out Info;
                   From :        Info) is
   begin
      Destroy (To);
      To := Copy (From);
   end Copy;

   procedure Append (Obj : in out Info;
                     S   : String) is
      New_Info : constant Info :=
                   To_Info (To_String (Obj) & S);
   begin
      Destroy (Obj);
      Obj := New_Info;
   end Append;

   procedure Reset (Obj : in out Info) is
   begin
      Destroy (Obj);
   end Reset;

   procedure Destroy (Obj : in out Info) is
      procedure Free is
        new Ada.Unchecked_Deallocation
          (Object => String,
           Name   => Info);
   begin
      Free (Obj);
   end Destroy;

end Access_Type_Abstraction;