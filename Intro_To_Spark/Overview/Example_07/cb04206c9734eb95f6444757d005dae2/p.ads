with Ada.Finalization;

package P
  with SPARK_Mode => On
is
   subtype Letter is Character range 'a' .. 'z';
   type String_Access is private;
   type Dictionary is array (Letter) of String_Access;

   function New_String_Access (W : String) return String_Access;

   procedure Store (D : in out Dictionary; W : String);

private
   pragma SPARK_Mode (Off);

   type String_Access is new Ada.Finalization.Controlled with record
      Ptr : access String;
   end record;

   function New_String_Access (W : String) return String_Access is
     (Ada.Finalization.Controlled with Ptr => new String'(W));
end P;