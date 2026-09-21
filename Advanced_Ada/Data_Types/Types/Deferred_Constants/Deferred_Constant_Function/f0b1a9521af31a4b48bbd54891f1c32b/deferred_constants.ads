package Deferred_Constants is

   type Speed is new Long_Float;

   Light : constant Speed;
   --      ^ deferred constant declaration

private

   function Calculate_Light return Speed is
     (299_792_458.0);

   Light : constant Speed := Calculate_Light;
   --      ^ full constant declaration
   --        calling a private function

end Deferred_Constants;