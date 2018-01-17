all: rockchip_dptx_firmware.py

rockchip_dptx_firmware.py: rockchip_dptx_firmware.ksy
	kaitai-struct-compiler -t python $<

clean:
	rm -f rockchip_dptx_firmware.py

.PHONY: all clean
