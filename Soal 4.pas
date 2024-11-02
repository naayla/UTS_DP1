program kembalian;
const
  pecahan: array[1..10] of longint = (100000, 75000, 50000, 20000, 10000, 
                                       5000, 2000, 1000, 500, 200);
  
var
  jumlah_kembalian: longint;
  jumlah_lembar: integer; 
  i: integer;

begin
  write('Masukkan jumlah kembalian: ');
  readln(jumlah_kembalian);
  jumlah_lembar := 0;
  for i := 1 to 10 do
  begin
    while jumlah_kembalian >= pecahan[i] do
    begin
      jumlah_kembalian := jumlah_kembalian - pecahan[i];
      jumlah_lembar := jumlah_lembar + 1; 
    end;
  end;
  writeln('Jumlah minimum lembar/koin: ', jumlah_lembar);
end.
