procedure Increment (Value : in out Integer) with
  Pre  => Value < Integer'Last,
  Post => Value = Value'Old + 1;