#!/bin/bash
# Script de Deploy do SDDM

echo "[*] Copiando a configuração do repositório para o sistema..."
sudo cp ./theme.conf /usr/share/sddm/themes/simple-sddm-2/theme.conf

echo "[+] Deploy do SDDM concluído com sucesso!"


