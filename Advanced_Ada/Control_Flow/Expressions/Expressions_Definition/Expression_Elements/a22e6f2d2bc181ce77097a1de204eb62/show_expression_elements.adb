procedure Show_Expression_Elements is
   type Mode is (Off, A, B, C, D);

   pragma Unreferenced (B, C, D);

   subtype Active_Mode is Mode
     range Mode'Succ (Off) .. Mode'Last;

   M1, M2 : Mode;
   Dummy     : Boolean;
begin
   M1 := A;

   Dummy :=
       M1 in Active_Mode
                and then M2 in Off | A;
   --
   --   ^^^^^^^^^^^^^^^^^ relation
   --
   --                     ^^^^^^^^^^^^^^ relation
   --   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   --                                  expression

   Dummy :=
       M1 in Active_Mode;
   --  ^^ name
   --  ^^ primary
   --  ^^ factor
   --  ^^ term
   --  ^^ simple expression
   --
   --        ^^^^^^^^^^^ membership choice
   --        ^^^^^^^^^^^ membership choice list
   --
   --  ^^^^^^^^^^^^^^^^^ relation
   --  ^^^^^^^^^^^^^^^^^ expression

   Dummy :=
       M2 in Off | A;
   --  ^^ name
   --  ^^ primary
   --  ^^ factor
   --  ^^ term
   --  ^^ simple expression
   --
   --        ^^^ membership choice
   --              ^ membership choice
   --        ^^^^^^^ membership choice list
   --
   --  ^^^^^^^^^^^^^ relation
   --  ^^^^^^^^^^^^^ expression

end Show_Expression_Elements;