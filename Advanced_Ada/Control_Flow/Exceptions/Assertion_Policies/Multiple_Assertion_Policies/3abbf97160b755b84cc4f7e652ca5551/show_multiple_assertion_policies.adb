procedure Show_Multiple_Assertion_Policies is
   pragma Assertion_Policy
     (Assert               => Check,
      Static_Predicate     => Check,
      Dynamic_Predicate    => Check,
      Pre                  => Check,
      Pre'Class            => Check,
      Post                 => Check,
      Post'Class           => Check,
      Type_Invariant       => Check,
      Type_Invariant'Class => Check);
begin
   null;
end Show_Multiple_Assertion_Policies;