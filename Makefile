.PHONY: iso
iso:
	mkarchiso -v -w work/ -o out/ icarus

.PHONY: burn
burn:
	echo bs=4M if=$(wildcard icarus-*.iso) of=$(shell bash -c 'read -p "drive path: " drive; echo $$drive') status=progress oflag=sync
