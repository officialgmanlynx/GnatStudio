function Mid (X, Y : Integer) return Integer with
   Pre  => X + Y /= 0,
   Post => Mid'Result > X;