procedure Main is

   package JSON is
      type JSON_Value is private
        with Integer_Literal => To_JSON_Value;

      function To_JSON_Value (Text : String) return JSON_Value;

      type JSON_Object is private
        with Aggregate => (Empty     => New_JSON_Object,
                           Add_Named => Insert);

      function New_JSON_Object return JSON_Object;

      procedure Insert
        (Self  : in out JSON_Object;
         Key   : Wide_Wide_String;
         Value : JSON_Value) is null;

   private
      type JSON_Value is null record;
      type JSON_Object is null record;

      function To_JSON_Value (Text : String) return JSON_Value
        is (null record);

      function New_JSON_Object return JSON_Object is (null record);
   end JSON;

   Object : JSON.JSON_Object := ["a" => 1, "b" => 2, "c" => 3];
   ------------------------------------------------------------
begin
   --  Equivalent old initialization code
   Object := JSON.New_JSON_Object;
   JSON.Insert (Object, "a", 1);
   JSON.Insert (Object, "b", 2);
   JSON.Insert (Object, "c", 3);
end Main;