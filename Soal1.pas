program perjalanan;
var
  jarak: real;
  biaya_dasar, biaya_tambahan, total_biaya: real;
  anggota_premium: boolean;
  input: string;

begin
  write('Masukkan jarak perjalanan (dalam KM): ');
  readln(jarak);
  write('Apakah anggota premium (True/False): ');
  readln(input);
  
  input := (input);
  if (input = 'True') then
    anggota_premium := true
  else if (input = 'False') then
    anggota_premium := false
  else
    begin
      writeln('Input tidak valid, dianggap bukan anggota premium.');
      anggota_premium := false;
    end;

  biaya_dasar := 20000;
  if jarak < 5 then
    biaya_tambahan := jarak * 5000
  else if jarak <= 10 then
    biaya_tambahan := jarak * 4000
  else
    biaya_tambahan := jarak * 3000; 

  total_biaya := biaya_dasar + biaya_tambahan;
  if total_biaya > 100000 then
    total_biaya := total_biaya * 0.9;
  if anggota_premium then
    total_biaya := total_biaya * 0.95;

  writeln('Total akhir: Rp', total_biaya:0:0);
end.
