#!/usr/bin/env python3

import sys

import rockchip_dptx_firmware

if __name__ == "__main__":
    orig = sys.argv[1]
    split = orig.split('.')
    ext = split[-1]
    basename = '.'.join(split[:-1])

    fw = rockchip_dptx_firmware.RockchipDptxFirmware.from_file(orig)

    filename = "{}.code.{}".format(basename, ext)
    code = fw.iram_data
    open(filename, 'wb').write(code)

    filename = "{}.data.{}".format(basename, ext)
    data = fw.dram_data
    open(filename, 'wb').write(data)
