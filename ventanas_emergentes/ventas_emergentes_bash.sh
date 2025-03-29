#! /usr/bin/bash

zenity --info --text="Este es un mensaje emergente" --title="Aviso"

## grafica

yad --info --text="Este es un mensaje emergente" --title="Aviso"

##grafica pero mas personalizable

notify-send "Aviso" "Este es un mensaje emergente"

##notificacion del sistema sin cuadro de dialogo

dialog --msgbox "Este es un mensaje emergente" 6 40

##para terminal

## nota al pie
# es probable que algunas no vengan por defecto, en tal caso instalarlas.
