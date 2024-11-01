program sayur;
var
  i, j, jumlah_pelanggan, jumlah_jenis, jumlah_sayur: integer;
  harga: real; 
  total_belanja: real; 

begin
  write('Masukkan jumlah pelanggan: ');
  readln(jumlah_pelanggan);
  for i := 1 to jumlah_pelanggan do
  begin
    total_belanja := 0; 
    writeln('Pelanggan ke-', i, ':');
    write('Masukkan jumlah jenis sayur yang dibeli: ');
    readln(jumlah_jenis);
    for j := 1 to jumlah_jenis do
    begin
      write('Masukkan harga sayur ke-', j, ': ');
      readln(harga);
      
      write('Masukkan jumlah sayur yang dibeli: ');
      readln(jumlah_sayur);
      total_belanja := total_belanja + (harga * jumlah_sayur);
    end;
    writeln('Total belanja untuk pelanggan ke-', i, ': Rp ', total_belanja:0:2);
  end;
end.
