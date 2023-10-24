#!/bin/bash

# Fungsi untuk melakukan backup
backup_directories() {
	mv ~/.config/nvim{,.bak}
	mv ~/.local/share/nvim{,.bak}
	mv ~/.local/state/nvim{,.bak}
	mv ~/.cache/nvim{,.bak}
	echo "Backup direktori selesai."
}

# Fungsi untuk menghapus backup
remove_backup() {
	rm -rf ~/.config/nvim.bak
	rm -rf ~/.local/share/nvim.bak
	rm -rf ~/.local/state/nvim.bak
	rm -rf ~/.cache/nvim.bak
	echo "Hapus backup direktori selesai."
}

# Fungsi untuk menghapus semua folder
remove_directories() {
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
	rm -rf ~/.local/state/nvim
	rm -rf ~/.cache/nvim
	echo "Hapus semua direktori selesai."
}

# Fungsi untuk mengembalikan ke backup
rename_directories() {
	mv ~/.config/nvim{.bak,}
	mv ~/.local/share/nvim{.bak,}
	mv ~/.local/state/nvim{.bak,}
	mv ~/.cache/nvim{.bak,}
	echo "Mengembalikan ke backup selesai."
}

# Fungsi untuk menghapus semua direktori kecuali .config
remove_dir_ex_config() {
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.cache/nvim
    echo "Hapus semua direktori kecuali .config selesai."
}

# Menampilkan menu pilihan
echo "Pilih opsi:"
echo "1. Backup direktori"
echo "2. Hapus backup direktori"
echo "3. Mengembalikan ke backup"
echo "4. Hapus direktori"
echo "5. Hapus direktori kecuali .config"
read -p "Masukkan angka (1/2/3/4/5): " choice

# Memproses pilihan pengguna
case $choice in
1)
	backup_directories
	;;
2)
	remove_backup
	;;
3)
	rename_directories
	;;
4)
	remove_directories
	;;
5)
    remove_dir_ex_config
    ;;
*)
	echo "Pilihan tidak valid."
	;;
esac
