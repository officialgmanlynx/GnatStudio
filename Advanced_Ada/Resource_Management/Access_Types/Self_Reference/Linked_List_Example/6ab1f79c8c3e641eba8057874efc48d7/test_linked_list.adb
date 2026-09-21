with Linked_Lists;

procedure Test_Linked_List is
    package Integer_Lists is new
      Linked_Lists (T => Integer);
    use Integer_Lists;

    L : List;
begin
    Append_Front (L, 3);
    Append_Rear (L, 4);
    Append_Rear (L, 5);
    Append_Front (L, 2);
    Append_Front (L, 1);
    Append_Rear (L, 6);
    Append_Rear (L, 7);

    Show (L);
end Test_Linked_List;