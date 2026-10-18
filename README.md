# ag

> TAGScript için HTTP istekleri ve web araçları kütüphanesi

**Yazar:** [devmehmetemrealt](https://github.com/devmehmetemrealt)  
**Versiyon:** 1.0.0

## Kurulum

```bash
tagpm kur ag
```

## Fonksiyonlar

| Fonksiyon | Açıklama |
|---|---|
| `get(url, basliklar)` | GET isteği |
| `post(url, veri, basliklar)` | POST isteği |
| `put(url, veri, basliklar)` | PUT isteği |
| `patch(url, veri, basliklar)` | PATCH isteği |
| `sil(url, basliklar)` | DELETE isteği |
| `json_al(yanit)` | JSON yanıtı al |
| `basarili_mi(yanit)` | 2xx kontrolü |
| `url_olustur(taban, yol, params)` | URL oluştur |
| `oturum_olustur(taban_url, basliklar)` | Oturum oluştur |
| `websocket_baglan(url, isleyici)` | WebSocket bağlan |
