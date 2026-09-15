# JPCB Mobile iOS

JPCB Mobile iOS adalah aplikasi iOS berbasis WebView untuk mengakses Web App JPCB (Workshop Management System).

## Fitur V1
- Membuka Web App JPCB dengan WKWebView
- JavaScript aktif
- Web storage menggunakan WKWebView data store
- Navigasi Back/Forward gesture
- App Icon JPCB Mobile
- Xcode project dibuat otomatis dengan XcodeGen
- GitHub Actions untuk build pada macOS runner

## Struktur
```text
JPCB-Mobile-iOS/
├── .github/workflows/build-ios.yml
├── JPCBMobile/
│   ├── Assets.xcassets/AppIcon.appiconset/
│   ├── JPCBMobileApp.swift
│   ├── ContentView.swift
│   └── WebView.swift
├── project.yml
└── README.md
```

## Build dari GitHub
1. Upload seluruh isi paket ke repository `JPCB-Mobile-iOS`.
2. Commit ke branch `main`.
3. Buka **Actions**.
4. Jalankan **Build JPCB Mobile iOS**.
5. GitHub Actions menggunakan runner macOS untuk menghasilkan project/build simulator.

## Catatan
Build simulator tidak memerlukan Apple Developer account. Untuk memasang aplikasi pada iPhone fisik atau mendistribusikannya melalui TestFlight/App Store, diperlukan signing dan akun Apple Developer.

## Backend
Aplikasi menggunakan Web App JPCB yang sama dengan versi Android.
