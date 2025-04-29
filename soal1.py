def tanya_gejala(pertanyaan):
    jawaban = input(pertanyaan + " (y/n): ").lower()
    return jawaban == 'y'

def diagnosa():
    # Tanya gejala ke user
    daun_menguning = tanya_gejala("Apakah daun menguning?")
    bercak_hitam = tanya_gejala("Apakah terdapat bercak hitam?")
    daun_berlubang = tanya_gejala("Apakah daun berlubang?")
    tanaman_layu = tanya_gejala("Apakah tanaman layu?")

    # Daftar penyakit yang terdeteksi
    penyakit_terdeteksi = []

    # Cek logika aturan
    if daun_menguning and tanaman_layu:
        penyakit_terdeteksi.append("Nematoda akar")
    if daun_berlubang and bercak_hitam:
        penyakit_terdeteksi.append("Ulat grayak")
    if daun_menguning and bercak_hitam:
        penyakit_terdeteksi.append("Jamur daun")
    if daun_berlubang:
        penyakit_terdeteksi.append("Kumbang pemakan daun")
    if tanaman_layu and not bercak_hitam and not daun_berlubang:
        penyakit_terdeteksi.append("Fusarium sp.")

    # Tampilkan hasil
    if penyakit_terdeteksi:
        print("\nPenyakit yang terdeteksi:")
        for p in penyakit_terdeteksi:
            print(f"- {p}")
    else:
        print("\nTidak ada penyakit yang terdeteksi berdasarkan gejala tersebut")

if __name__ == "__main__":
    diagnosa()
