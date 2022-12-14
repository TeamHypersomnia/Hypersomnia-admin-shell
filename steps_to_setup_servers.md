Wszystkie kroki:

- Usunąć wszystko z /etc/ssh/sshd_config.d bo tam może ustawiać password authentication
- Sprawdzić czy trezor agent nie jest popsuty przy autoryzacji
	- Jak popsuty to użyć normalnego ssh keygena
- Zainstalować apache
- Let's encrypt, certbota postawić żeby był https
- sudo chown ubuntu -R www
- mkdir ~/uploads
- mkdir /var/www/html/builds
- zainstalowac mese zeby server/masterserver odpalil (nie ma znaczenia ze nie uzywa, potrzebuje dynamicznych libow)

sudo add-apt-repository ppa:kisak/kisak-mesa
sudo apt update
sudo apt upgrade
sudo apt-get install libgl1-mesa-glx

- inne liby:
sudo apt-get install libsm6
sudo apt-get install libxi6
sudo apt-get install libatomic1

jeszcze libc++ bedzie potrzebny w zgodnej wersji, ostatnio zadziałało:

sudo apt-get install libc++-14-dev

- Stworzyć i wypełnić:

~/.discord_webhook_url
~/.rcon_password

Szczególnie jak nie ma webhooków discorda/rcona to trzeba jeszcze raz odpalić procedure całej aktualizacji serwera żeby skopiowało pliki usera i serwer podchwycił zmienne z tych plików jeszcze raz.
