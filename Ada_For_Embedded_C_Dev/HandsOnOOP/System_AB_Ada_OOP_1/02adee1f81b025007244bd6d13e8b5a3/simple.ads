package Simple is

   type Activation_IF is interface;

   procedure Activate (E : in out Activation_IF) is abstract;
   function Is_Active (E : Activation_IF) return Boolean is abstract;
   procedure Deactivate (E : in out Activation_IF) is abstract;

   type Value_Retrieval_IF is interface;

   function Value (E : Value_Retrieval_IF) return Float is abstract;

   type Sys_Base is abstract new Activation_IF and Value_Retrieval_IF
     with private;

   overriding procedure Activate (E : in out Sys_Base);
   overriding function Is_Active (E : Sys_Base) return Boolean;
   overriding procedure Deactivate (E : in out Sys_Base);

private

   type Sys_Base is abstract new Activation_IF and Value_Retrieval_IF
     with record
      Active : Boolean;
   end record;

end Simple;