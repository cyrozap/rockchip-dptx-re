meta:
  id: rockchip_dptx_firmware
  file-extension: bin
  endian: le
  title: Rockchip RK3399 USB-C/DP microcontroller firmware
  license: CC0-1.0
doc: Firmware image for Rockchip RK3399 USB-C/DP microcontroller core
seq:
  - id: image_header
    type: image_header
    size: 16
  - id: iram_data
    size: image_header.iram_size
  - id: dram_data
    size: image_header.dram_size
types:
  image_header:
    seq:
      - id: image_size
        type: u4
      - id: header_size
        type: u4
      - id: iram_size
        type: u4
      - id: dram_size
        type: u4
