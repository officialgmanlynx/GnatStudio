with Ada.Unchecked_Deallocation;

package body Access_Type_Abstraction is

   --
   --  STRING_ACCESS SUBPROGRAMS
   --

   function To_String_Access (S : String)
                              return String_Access
   is
     (new String'(S));

   function To_String (S : String_Access)
                       return String is
     (if S /= null then S.all else "");

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => String,
        Name   => String_Access);

   --
   --  PRIVATE SUBPROGRAMS
   --

   procedure Initialize (Obj : in out Info) is
   begin
      --  Put_Line ("Initializing Info");
      Obj.Str_A := null;
      --  ^^^^^^^^^^^^^
      --  NOTE: This line has just been added to
      --        illustrate the "automatic" call to
      --        Initialize. Actually, this
      --        assignment isn't needed, as
      --        the Str_A component is
      --        automatically initialized to null
      --        upon object construction.
   end Initialize;

   procedure Finalize (Obj : in out Info) is
   begin
      --  Put_Line ("Finalizing Info");
      Free (Obj.Str_A);
   end Finalize;

   --
   --  PUBLIC SUBPROGRAMS
   --

   function To_Info (S : String) return Info is
     (Ada.Finalization.Limited_Controlled
      with Str_A => To_String_Access (S));

   function To_String (Obj : Info)
                       return String is
     (To_String (Obj.Str_A));

   function Copy (Obj : Info) return Info is
     (To_Info (To_String (Obj.Str_A)));

   procedure Copy (To   : in out Info;
                   From :        Info) is
   begin
      Free (To.Str_A);
      To.Str_A := To_String_Access
                    (To_String (From.Str_A));
   end Copy;

   procedure Append (Obj : in out Info;
                     S   :        String) is
      New_Str_A : constant String_Access :=
                    To_String_Access
                      (To_String (Obj.Str_A) & S);
   begin
      Free (Obj.Str_A);
      Obj.Str_A := New_Str_A;
   end Append;

   procedure Reset (Obj : in out Info) is
   begin
      Free (Obj.Str_A);
   end Reset;

end Access_Type_Abstraction;