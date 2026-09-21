package Days is

   type Day is (Mon, Tue, Wed,
                Thu, Fri,
                Sat, Sun);

   for Day use (Mon =>  5,
                Tue =>  9,
                Wed => 42,
                Thu => 49,
                Fri => 50,
                Sat => 66,
                Sun => 99);

end Days;