
PKG_MANAGER=pacman
PKG_MANAGER_UPGRADE=-Syu

BACKUP=/run/media/$(USER)/Maxtor/bkp/manjaro.sys

up:
	sudo $(PKG_MANAGER) $(PKG_MANAGER_UPGRADE)

bkp: 
	echo $(BACKUP)
	rsync -a $(HOME)/Documents/ $(BACKUP)

