program pola;
var
  n, i, j: integer;

begin
  writeln('Masukkan nilai n (harus ganjil): ');
  readln(n);
  if n mod 2 = 0 then
  begin
    writeln('Angka tidak valid, harus angka ganjil');
    exit;
  end;
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      if (i = j) or (i + j = n + 1) then
        write('*')
      else
        write(' ');
    end;
    writeln;
  end;
end.
