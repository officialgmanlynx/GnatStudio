package Deferred_Constants is

   type Speed is new Long_Float;

   subtype Positive_Speed is
     Speed range 0.0 .. Speed'Last;

   Light : constant Speed;
   --      ^ deferred constant declaration

private

   Light : constant Positive_Speed :=
             299_792_458.0;
   --      ^ full constant declaration
   --        using a subtype

end Deferred_Constants;