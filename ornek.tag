// ag - GitHub API ornegi

iceaktar ag olarak http

// GitHub kullanici bilgisi cek
deger yanit = http.get("https://api.github.com/users/devmehmetemrealt", yok)

eger http.basarili_mi(yanit) {
    yaz("Kullanici bilgisi alindi! Durum: " + yaziya(yanit["durum"]))
    deger veri = http.json_al(yanit)
    yaz("Veri: " + veri)
} yoksa {
    yaz("Hata: " + yaziya(yanit["durum"]))
}

// Oturum ile istek
deger oturum = http.oturum_olustur(
    "https://api.example.com",
    {"Authorization": "Bearer TOKEN"}
)

deger kullanicilar = http.oturum_get(oturum, "/users", yok)
yaz("Kullaniciler: " + yaziya(kullanicilar["durum"]))
