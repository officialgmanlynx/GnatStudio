package P is

   type T is tagged null record;
   type T1 is new T with null record;
   type T2 is new T with null record;

end P;