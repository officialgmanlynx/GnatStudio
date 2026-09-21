package Deferred_Constants is

   type Speed is new Long_Float;

   Light : constant Speed;
   --      ^ deferred constant declaration

private

   Light : constant Speed := 299_792_458.0;
   --      ^ full constant declaration

end Deferred_Constants;