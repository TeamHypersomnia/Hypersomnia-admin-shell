NIEAKTUALNE ALE ZOSTAWIONE jakby co

Wszystkie kroki:

- Usunąć wszystko z /etc/ssh/sshd_config.d bo tam może ustawiać password authentication
- Sprawdzić czy trezor agent nie jest popsuty przy autoryzacji
	- Jak popsuty to użyć normalnego ssh keygena
- Zainstalować apache
- Let's encrypt, certbota postawić żeby był https
- sudo chown ubuntu -R www
- mkdir ~/uploads
	- dla skryptu uploaduajcego, ale moze uzyjemy /tmp
- mkdir /var/www/html/builds
