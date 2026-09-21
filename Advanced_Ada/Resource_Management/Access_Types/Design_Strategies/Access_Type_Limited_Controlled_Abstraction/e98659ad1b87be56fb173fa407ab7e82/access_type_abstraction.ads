with Ada.Finalization;

package Access_Type_Abstraction is

   type Info is limited private;

   function To_Info (S : String) return Info;

   function To_String (Obj : Info)
                       return String;

   function Copy (Obj : Info) return Info;

   procedure Copy (To   : in out Info;
                   From :        Info);

   procedure Append (Obj : in out Info;
                     S   :        String);

   procedure Reset (Obj : in out Info);

private

   type String_Access is access String;

   type Info is new
     Ada.Finalization.Limited_Controlled with
      record
         Str_A : String_Access;
      end record;

   procedure Initialize (Obj : in out Info);
   procedure Finalize (Obj : in out Info);

end Access_Type_Abstraction;