all: transfer

transfer:
	chmod a+rx ./scripts/transfer.sh
	./scripts/transfer.sh

bootstrap:
	chmod a+rx ./scripts/bootstrap.sh
	./scripts/bootstrap.sh

dx:
	chmod a+rx ./scripts/debloat_xorg.sh
	./scripts/debloat_xorg.sh

