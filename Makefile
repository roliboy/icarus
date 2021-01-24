.PHONY: iso
iso:
	mkarchiso -v -w work/ -o out/ .

.PHONY: clean
clean:
	rm -rf work/

.PHONY: burn
burn:
	dd bs=4M if=$(wildcard out/icarus-*.iso) of=$(shell bash -c 'read -p "drive path: " drive; echo $$drive') status=progress oflag=sync
