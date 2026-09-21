with Ada.Finalization;

package Simple_Controlled_Types is

   type T is tagged private;

   procedure Show (E    : T;
                   Name : String);

private

   protected Id_Gen is
      procedure New_Id (Id_Out : out Positive);
   private
      Id : Natural := 0;
   end Id_Gen;

   type T is new
     Ada.Finalization.Controlled with
   record
      Id : Positive;
   end record;

   overriding
   procedure Initialize (E : in out T);

   overriding
   procedure Adjust (E : in out T);

   overriding
   procedure Finalize (E : in out T);

end Simple_Controlled_Types;