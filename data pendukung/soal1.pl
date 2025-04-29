% Fakta gejala
 gejala(daun_menguning) :- ask('Apakah daun menguning? (y/n) ').
 gejala(bercak_hitam) :- ask('Apakah terdapat bercak hitam? (y/n) ').
 gejala(daun_berlubang) :- ask('Apakah daun berlubang? (y/n) ').
 gejala(tanaman_layu) :- ask('Apakah tanaman layu? (y/n) ').

 % Aturan penyakit berdasarkan logika proposisional
 penyakit(nematoda_akar) :-
     gejala(daun_menguning),
     gejala(tanaman_layu).

 penyakit(ulat_grayak) :-
     gejala(daun_berlubang),
     gejala(bercak_hitam).

 penyakit(jamur_daun) :-
     gejala(daun_menguning),
     gejala(bercak_hitam).

 penyakit(kumbang_pemakan_daun) :-
     gejala(daun_berlubang).

 penyakit(fusarium_sp) :-
     gejala(tanaman_layu),
     \+ gejala(bercak_hitam),
     \+ gejala(daun_berlubang).

 % Proses input dari user
 ask(Pertanyaan) :-
     write(Pertanyaan),
     read(Respon),
     Respon = y.

 % Program utama
 start :-
     findall(P, penyakit(P), List),
     (List = [] -> write('Tidak ada penyakit yang terdeteksi berdasarkan gejala tersebut.');
      write('Penyakit yang terdeteksi: '), nl, tampilkan(List)).

 % Menampilkan hasil
 tampilkan([]).
 tampilkan([H|T]) :-
     write('- '), write(H), nl,
     tampilkan(T).
