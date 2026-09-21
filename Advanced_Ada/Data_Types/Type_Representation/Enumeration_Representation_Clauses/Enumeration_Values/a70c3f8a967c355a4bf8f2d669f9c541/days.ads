package Days is

   type Day is (Mon, Tue, Wed,
                Thu, Fri,
                Sat, Sun);

   for Day use (Mon => 2#00000001#,
                Tue => 2#00000010#,
                Wed => 2#00000100#,
                Thu => 2#00001000#,
                Fri => 2#00010000#,
                Sat => 2#00100000#,
                Sun => 2#01000000#);

end Days;