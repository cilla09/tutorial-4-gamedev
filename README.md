# Tutorial 4 & 6 Game Development
### Priscilla Natanael Surjanto/2306152153

## Tutorial 4

Implemented:
- Tutorial untuk Level 1
- Latihan Mandiri untuk Level 2
- Desain tile yang tidak flat
- Parallax untuk Background Non-Statis
- Retry Button pada Lose Screen
  
1. Base

Dalam proses pengerjaan Level 2, pertama saya membuat Scene baru bernama Level2.tscn, dan menambahkan child scene Player, dan menambahkan TileMapLayer dengan TileSet yang berbeda (Snow) dari Level 1 (Grass). Saya kemudian menambahkan Rektorat sebagai WinArea dan menaruh tiles datar terlebih dahulu. 

3. Connection

Pada tahap Connection, saya mengimplementasi Scene Switching pada WinArea Level 1. Saya memodifikasi logic pada script agar mendeteksi collision pemain dan memicu fungsi get_tree().change_scene_to_file() menuju Level 2, menciptakan transisi antar level yang seamless.

4. Development

Desain Level 2 difokuskan pada Verticality dan Risk-Reward. Penggunaan dua pulau dengan jurang di antaranya berfungsi sebagai environmental hazard. Penempatan Rektorat di area tinggi memaksa pemain melakukan navigasi vertikal melalui tunnel, yang memberikan variasi mekanik dibandingkan Level 1 yang lebih linear. Untuk memenuhi kebutuhan object spawning, saya implementasi sistem Dynamic Instancing pada Node2D Spawner. Script tersebut secara periodik melakukan instance terhadap FallingBee.tscn pada koordinat tertentu, memenuhi requirements yang diberikan.

5. Refinement

Terakhir, saya mengimplementasi background menggunakan Parallax2D agar tidak statis (ketika saya coba menggunakan hanya Sprite2D, rasanya flat dan kurang dinamis). Implementasi Parallax2D dengan ScrollScale 0.1 memberikan efek Depth Perception (kedalaman visual). Dengan teknik ini, background bergerak lebih lambat dibanding foreground, menciptakan ilusi ruang yang luas dan dinamis sesuai pergerakan kamera player. Untuk memperbaiki Game Loop, saya menambahkan fungsi 'Retry' pada LoseScreen. Hal ini bertujuan untuk mengurangi user friction sehingga pemain dapat langsung kembali ke awal permainan tanpa harus melakukan restart manual.

### Referensi
Link Dokumentasi Tutorial 4 Game Development: [here](https://csui-game-development.github.io/tutorials/tutorial-4/)

Link Background Level 1: [here](https://www.freepik.com/free-vector/gradient-video-game-background_40350908.htm#fromView=keyword&page=1&position=10&uuid=45047146-c036-4d46-984e-56d15d22d4af&query=Game+background)

Link Background Level 2: [here](https://www.freepik.com/free-vector/seamless-cartoon-winter-night-landscape-snow-tree-season-drawing-design_10600820.htm#fromView=search&page=1&position=13&uuid=fa3c0c5e-69cb-4633-bd6e-483031c034f0&query=Game+background+snow)

## Tutorial 6

Implemented:
- Main Menu untuk Start Game dan Stage Select
- Lives Counter for Player
- Stage Select Screen untuk memilih level dan reset lives
- Menu Button when in level, Menu Screen untuk memilih level tanpa reset lives

Pada tutorial 6, saya mengimplementasi GUI untuk mengawali permainan, yaitu MainScreen yang berisi judul game ('Don't Let It Touch You') dan dua button untuk Start Game atau Stage Select. Start Game mengarah ke Level 1. Di dalam level, saya mengimplementasi Lives Counter untuk player dengan membuat global variabel lives agar ketika scene berganti variabel tetap sama karena digunakan secara global. Jika player terkenda falling object atau ia jatuh dari platform, maka lives akan berkurang satu. Ketika lives berjumlah 0, player akan otomatis diarahkan ke LoseScreen yang menampilkan 'GAME OVER' dengan 3 buttons: Go to Home (Main Menu), Retry (balik ke Level 1), Stage Select (pilih level).

Selain dari tutorial, ketika saya melakukan playtest saya menyadari ada flow yang kurang nyaman, yaitu ketika kita bermain dalam level, kita tidak bisa keluar dari game selain menekan close window. Sehingga, saya membuat button MENU yang mengarah ke Menu Screen. Bedanya dengan Stage Select adalah ketika kita berganti dari Menu, lives tidak akan direset melainkan tetap berjumlah sama, misal jika sisa 2 maka ketika player berganti scene ia akan tetap memiliki jumlah lives yang sama. Ini bertujuan menciptakan pengalaman bermain yang lebih nyaman dari pengguna, ketika mereka sedang bermain dan ingin berhenti di tengah, mereka bisa kembali ke state yang sama.

### Referensi
Link Dokumentasi Tutorial 4 Game Development: [here](https://csui-game-development.github.io/tutorials/tutorial-6/)
