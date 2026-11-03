# Rapport d'analyse : application-decompilee

Généré le 2026-11-03 12:29 UTC par le workflow GitHub Actions.

## 1. Identité de l'APK

- Taille de l'APK : 4.9 Mo
- SHA-256 : `8fa4495a270c74a15f356767fc13c7b851e99851ee946ae49fcfcb612bd32020`
- Package : `ru.zdevs.zarchiver`
- Version : 1.0.10 (code ?)
- minSdk / targetSdk : 23 / 34
- Activité de lancement : `ru.zdevs.zarchiver.ZArchiver`

## 2. Moteur / framework détecté

- Aucun moteur multiplateforme détecté : application Android native (Java/Kotlin).

Bibliothèques natives (.so) :

- `libcontrol.so` (arm64-v8a)
- `libcoreutils.so` (arm64-v8a)
- `libhandler.so` (arm64-v8a)
- `libiconv.so` (arm64-v8a)
- `libmime.so` (arm64-v8a)
- `libp7zbin.so` (arm64-v8a)
- `libp7zip.so` (arm64-v8a)
- `libunegg.so` (arm64-v8a)
- `libunrar.so` (arm64-v8a)

Contenu de `assets/` (premier niveau) : `tree`

## 3. Code Java/Kotlin (JADX)

- Fichiers décompilés : 465  (3.8 Mo)
- Classes à nom très court (<= 2 lettres) : 0 %  -> code peu ou pas obfusqué

Packages les plus volumineux (3 premiers niveaux, nombre de classes) :

- `ru.zdevs.zarchiver` : 58
- `p060z` : 56
- `p017f0` : 29
- `p054w` : 14
- `p048t` : 14
- `p038p` : 13
- `p056x` : 13
- `p059y0` : 12
- `p005b0` : 11
- `p021g1` : 10
- `p011d0` : 9
- `p008c0` : 9
- `p039p0` : 9
- `p043r0` : 9
- `p061z0` : 8
- `p033m0` : 8
- `p001a0` : 8
- `p020g0` : 8
- `p051u0` : 8
- `p004b` : 7
- `p055w0` : 7
- `p007c` : 7
- `p034n` : 7
- `p037o0` : 7
- `p052v` : 7
- `p025i0` : 7
- `p035n0` : 6
- `p006b1` : 6
- `p029k0` : 5
- `p031l0` : 5
- `p014e0` : 4
- `p028k` : 4
- `p013e` : 4
- `p019g` : 4
- `p058y` : 4
- `p022h` : 4
- `com.davemorrissey.labs` : 4
- `p050u` : 3
- `p023h0` : 3
- `p016f` : 3

Bibliothèques reconnues :

- Aucune bibliothèque connue repérée (noms de packages possiblement renommés).

## 4. Architecture (manifest)

**Écrans (activities) : 10**

- `ru.zdevs.zarchiver.ZArchiver`
- `ru.zdevs.zarchiver.activity.SettingsDlg`
- `ru.zdevs.zarchiver.activity.AboutDlg`
- `ru.zdevs.zarchiver.activity.OpenAsDlg`
- `ru.zdevs.zarchiver.activity.InstallApkDlg`
- `ru.zdevs.zarchiver.ZSelectFile`
- `ru.zdevs.zarchiver.activity.ExtractDlg`
- `ru.zdevs.zarchiver.activity.InstallApksDlg`
- `ru.zdevs.zarchiver.ZImageViewer`
- `ru.zdevs.zarchiver.ZTextEditor`

**Services : 2**

- `ru.zdevs.zarchiver.service.ZArchiverService`
- `ru.zdevs.zarchiver.service.ZArchiverClearTemp`

**Receivers : 0**


**Providers : 4**

- `ru.zdevs.zarchiver.provider.FileProvider`
- `ru.zdevs.zarchiver.provider.ArchiveFileProvider`
- `ru.zdevs.zarchiver.provider.PluginFileProvider`
- `rikka.shizuku.ShizukuProvider`

**Permissions : 10**

- `android.permission.ACCESS_SUPERUSER`
- `android.permission.FOREGROUND_SERVICE`
- `android.permission.FOREGROUND_SERVICE_DATA_SYNC`
- `android.permission.READ_EXTERNAL_STORAGE`
- `android.permission.WAKE_LOCK`
- `android.permission.WRITE_EXTERNAL_STORAGE`
- `android.permission.WRITE_MEDIA_STORAGE`
- `moe.shizuku.manager.permission.API_V23`
- `ru.zdevs.zarchiver.permission.PLUGIN.CLOUD`
- `ru.zdevs.zarchiver.permission.PLUGIN.USB`

## 5. Adresses web trouvées (API, serveurs)

Domaines les plus cités :

- `zdevs.ru` (37)
- `7-zip.org` (2)
- `source.android.com` (1)
- `busybox.net` (1)
- `freebsd.org` (1)
- `www.gnu.org` (1)
- `numixproject.org` (1)
- `www.estsoft.com` (1)
- `rarlab.com` (1)
- `crowdin.com` (1)
- `yadi.sk` (1)

Adresses complètes (max. 80) :

- http://zdevs.ru
- http://zdevs.ru/za/errors_desc.html
- http://zdevs.ru/za/
- http://7-zip.org
- http://7-zip.org/license.txt
- https://source.android.com
- https://busybox.net
- https://freebsd.org
- http://www.gnu.org/software/libiconv
- http://numixproject.org
- http://www.estsoft.com
- http://rarlab.com
- http://zdevs.ru/za_privacy_policy.txt
- https://crowdin.com/project/zarchiverfree
- https://yadi.sk/d/NTCnBMmK3SHmt2

## 6. Autres indices

- Dossiers de ressources `res/` : 71
- Dossiers smali (nombre de fichiers DEX) : 1

---
Rapport informatif : il décrit la structure de l'application, il ne remplace pas la lecture du code.
