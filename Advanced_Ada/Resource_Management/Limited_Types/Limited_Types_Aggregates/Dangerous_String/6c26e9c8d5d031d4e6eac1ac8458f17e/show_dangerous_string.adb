procedure Show_Dangerous_String is
    Uninitialized_String_Var : String (1 .. 10);
    --  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    --  no initialization

    Uninitialized_Const_Str : constant String :=
        Uninitialized_String_Var;
begin
   null;
end Show_Dangerous_String;