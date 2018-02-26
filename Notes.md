# Notes

The RK3399 has two DisplayPort controllers:
 - An Analogix controller [used for the eDP interface][edp].
 - A Cadence DisplayPort TX controller [used for the DP interface][dp].

The Cadence controller requires firmware, which is what we're interested
in here. Linux support for this controller was added in the patch series
starting [here][patches].

The microcontroller core (uCPU) instruction and data memory addresses are
defined [here][addresses].

Based on the terms Rockchip used in the [patch series][patches],
[this][dptx] is probably the exact DisplayPort TX controller IP core
they're using.

The CPU is probably an 8051 variant. I don't have any hard data to back
that claim, but the code looks like 8051 instructions to me:
 - Code is not aligned on either 16-bit or 32-bit boundaries--which
   strongly implies an 8-bit CPU.
 - Code and data are separate binaries, loaded into separate memory
   regions.
 - Code binary is 64 kB in size, which implies a 16-bit program counter.


[edp]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c?id=70c5f93669249886b151812076509f30569aff80#n450
[dp]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/cdn-dp-core.c?id=d471ed04b487c6e66a406bf3763efbfed56baa5b#n65
[patches]: https://lkml.org/lkml/2017/2/5/20
[addresses]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/cdn-dp-reg.h?id=05c00c2f196757cd59d5738ec4d02e365cf9e7a0#n20
[dptx]: https://ip.cadence.com/ipportfolio/ip-portfolio-overview/interface-ip/display-ip/hd-display-transmitter-controller
