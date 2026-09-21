with Ada.Finalization;

package P
  with SPARK_Mode => On
is
   subtype Letter is Character range 'a' .. 'z';
   type String_Access is new Ada.Finalization.Controlled with record
      Ptr : access String;
   end record;
   type Dictionary is array (Letter) of String_Access;

   procedure Store (D : in out Dictionary; W : String);
end P;