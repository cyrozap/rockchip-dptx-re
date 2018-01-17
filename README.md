# rockchip-dptx-re

## Quick start

### Software dependencies

* Python 3
* [Kaitai Struct Compiler][ksc]
* [Kaitai Struct Python Runtime][kspr]

### Procedure

1. Install dependencies.
2. Download the DPTX binaries by running `./download.sh`.
3. Run `make` to generate the parser code used by `extract_fw.py`.
4. Extract the code and data sections from each binary with
   `./extract_fw.py ...`, where `...` is the name of the DPTX firmware
   binary.


[ksc]: https://github.com/kaitai-io/kaitai_struct_compiler
[kspr]: https://github.com/kaitai-io/kaitai_struct_python_runtime
