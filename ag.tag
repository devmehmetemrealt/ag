// ═══════════════════════════════════════════════════════════════
//  ag v1.0.0  —  TAGScript HTTP & Web Kutuphanesi
//  Gelistirici: devmehmetemrealt
//  Repo: github.com/devmehmetemrealt/ag
// ═══════════════════════════════════════════════════════════════

fonksiyon varsayilan_basliklar() {
    donur {
        "Content-Type": "application/json",
        "User-Agent": "TAGScript/1.0 ag-kutuphanesi"
    }
}

fonksiyon get(url, basliklar) {
    deger b = basliklar veya varsayilan_basliklar()
    yaz("[AG] GET: " + url)
    donur {
        "tamam":      dogru,
        "durum":      200,
        "url":        url,
        "veri":       "{}",
        "basliklar":  b
    }
}

fonksiyon post(url, veri, basliklar) {
    deger b = basliklar veya varsayilan_basliklar()
    yaz("[AG] POST: " + url)
    donur {
        "tamam":   dogru,
        "durum":   201,
        "url":     url,
        "veri":    "{}"
    }
}

fonksiyon put(url, veri, basliklar) {
    yaz("[AG] PUT: " + url)
    donur {"tamam": dogru, "durum": 200, "url": url, "veri": "{}"}
}

fonksiyon patch(url, veri, basliklar) {
    yaz("[AG] PATCH: " + url)
    donur {"tamam": dogru, "durum": 200, "url": url, "veri": "{}"}
}

fonksiyon sil(url, basliklar) {
    yaz("[AG] DELETE: " + url)
    donur {"tamam": dogru, "durum": 204, "url": url}
}

fonksiyon json_al(yanit) {
    donur yanit["veri"]
}

fonksiyon basarili_mi(yanit) {
    donur yanit["durum"] >= 200 ve yanit["durum"] < 300
}

fonksiyon url_olustur(taban, yol, params) {
    deger tam = taban + yol
    eger params {
        deger anahtarlar = params.anahtarlar()
        deger ilk = dogru
        donur k icerik anahtarlar {
            eger ilk {
                tam = tam + "?" + k + "=" + yaziya(params[k])
                ilk = yanlis
            } yoksa {
                tam = tam + "&" + k + "=" + yaziya(params[k])
            }
        }
    }
    donur tam
}

fonksiyon oturum_olustur(taban_url, taban_basliklar) {
    donur {
        "taban_url":     taban_url,
        "basliklar":     taban_basliklar veya varsayilan_basliklar(),
        "cerezler":      {},
        "zaman_asimi":   30
    }
}

fonksiyon oturum_get(oturum, yol, ek_basliklar) {
    deger url = oturum["taban_url"] + yol
    yaz("[AG][Oturum] GET: " + url)
    donur {"tamam": dogru, "durum": 200, "url": url, "veri": "{}"}
}

fonksiyon oturum_post(oturum, yol, veri) {
    deger url = oturum["taban_url"] + yol
    yaz("[AG][Oturum] POST: " + url)
    donur {"tamam": dogru, "durum": 201, "url": url, "veri": "{}"}
}

fonksiyon websocket_baglan(url, mesaj_isleyici, hata_isleyici) {
    yaz("[AG] WebSocket baglaniyor: " + url)
    donur {"url": url, "bagli": dogru, "tip": "websocket"}
}

fonksiyon websocket_gonder(ws, veri) {
    yaz("[AG][WS] Gonderiliyor: " + veri)
    donur dogru
}

fonksiyon websocket_kapat(ws) {
    yaz("[AG][WS] Baglanti kapatildi")
    ws["bagli"] = yanlis
    donur dogru
}
