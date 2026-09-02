# Optics

Fibre and free-space: sources, modulators, couplers and detectors.

39 symbols. Generated from the symbol registry — see the note in
[the index](index.md).

## Couplers

### Coupler 2x2

<img src="symbols/optics.coupler_2x2.svg" alt="Coupler 2x2" height="64">

Key: `optics.coupler_2x2`

**Ports** — `in1` (optical), `in2` (optical), `out1` (optical), `out2` (optical)

| Parameter | Default | Accepts |
|---|---|---|
| `ratio` | — | *(unset)*, `50:50`, `60:40`, `70:30`, `80:20`, `90:10`, `95:5`, `99:1` |

### Fibre PBS

<img src="symbols/optics.pbs_fibre.svg" alt="Fibre PBS" height="64">

Key: `optics.pbs_fibre`

**Ports** — `in` (optical), `out1` (optical), `out2` (optical)

### Splitter 1x2

<img src="symbols/optics.splitter_1x2.svg" alt="Splitter 1x2" height="64">

Key: `optics.splitter_1x2`

**Ports** — `in` (optical), `out1` (optical), `out2` (optical)

### WDM

<img src="symbols/optics.wdm.svg" alt="WDM" height="64">

Key: `optics.wdm`

**Ports** — `in1` (optical), `in2` (optical), `n` (optical), `out` (optical), `s` (optical)

## Detectors

### Balanced PD

<img src="symbols/optics.bpd.svg" alt="Balanced PD" height="64">

Key: `optics.bpd`

**Ports** — `in1` (optical), `in2` (optical), `out` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

### Photodiode

<img src="symbols/optics.pd.svg" alt="Photodiode" height="64">

Key: `optics.pd`

**Ports** — `in` (optical), `out` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

### Power Meter

<img src="symbols/optics.power_meter.svg" alt="Power Meter" height="64">

Key: `optics.power_meter`

**Ports** — `in` (optical), `out` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

## Fibre

### Delay Line

<img src="symbols/optics.delay_line.svg" alt="Delay Line" height="64">

Key: `optics.delay_line`

**Ports** — `in` (optical), `out` (optical)

| Parameter | Default | Accepts |
|---|---|---|
| `length` | — | *(unset)*, `1 m`, `2 m`, `5 m`, `10 m`, `20 m`, `50 m`, `100 m`, `1 km` |

### FBG

<img src="symbols/optics.fbg.svg" alt="FBG" height="64">

Key: `optics.fbg`

**Ports** — `in` (optical), `out` (optical)

### Polarisation Controller

<img src="symbols/optics.pol_ctrl.svg" alt="Polarisation Controller" height="64">

Key: `optics.pol_ctrl`

**Ports** — `in` (optical), `out` (optical)

## Free space

### Beam Dump

<img src="symbols/optics.beam_dump.svg" alt="Beam Dump" height="64">

Key: `optics.beam_dump`

**Ports** — `in` (beam)

### Beamsplitter

<img src="symbols/optics.bs.svg" alt="Beamsplitter" height="64">

Key: `optics.bs`

**Ports** — `in` (beam), `r` (beam), `s` (beam), `t` (beam)

### Cavity

<img src="symbols/optics.cavity.svg" alt="Cavity" height="64">

Key: `optics.cavity`

**Ports** — `in` (beam), `out` (beam)

### Collimator

<img src="symbols/optics.collimator.svg" alt="Collimator" height="64">

Key: `optics.collimator`

**Ports** — `beam` (beam), `fib` (optical)

### Dichroic

<img src="symbols/optics.dichroic.svg" alt="Dichroic" height="64">

Key: `optics.dichroic`

**Ports** — `in` (beam), `r` (beam), `t` (beam)

### Lens

<img src="symbols/optics.lens.svg" alt="Lens" height="64">

Key: `optics.lens`

**Ports** — `in` (beam), `out` (beam)

### Mirror

<img src="symbols/optics.mirror.svg" alt="Mirror" height="64">

Key: `optics.mirror`

**Ports** — `in` (beam), `out` (beam)

### Plane Mirror

<img src="symbols/optics.mirror_flat.svg" alt="Plane Mirror" height="64">

Key: `optics.mirror_flat`

**Ports** — `in` (beam)

### PBS

<img src="symbols/optics.pbs.svg" alt="PBS" height="64">

Key: `optics.pbs`

**Ports** — `in` (beam), `r` (beam), `s` (beam), `t` (beam)

### Corner Cube

<img src="symbols/optics.retro.svg" alt="Corner Cube" height="64">

Key: `optics.retro`

**Ports** — `in` (beam)

### Telescope

<img src="symbols/optics.telescope.svg" alt="Telescope" height="64">

Key: `optics.telescope`

**Ports** — `in` (beam), `out` (beam)

### λ/2 Waveplate

<img src="symbols/optics.waveplate_half.svg" alt="λ/2 Waveplate" height="64">

Key: `optics.waveplate_half`

**Ports** — `in` (beam), `out` (beam)

### λ/4 Waveplate

<img src="symbols/optics.waveplate_quarter.svg" alt="λ/4 Waveplate" height="64">

Key: `optics.waveplate_quarter`

**Ports** — `in` (beam), `out` (beam)

## Gain & loss

### Optical Amplifier

<img src="symbols/optics.amp.svg" alt="Optical Amplifier" height="64">

Key: `optics.amp`

**Ports** — `in` (optical), `out` (optical)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `db` | `0` | 0 to 40, step 1 |
| `mode` | `fibre` | `fibre`, `free_space` |

### Optical Attenuator

<img src="symbols/optics.attenuator.svg" alt="Optical Attenuator" height="64">

Key: `optics.attenuator`

**Ports** — `in` (optical), `out` (optical)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `db` | `3` | 0 to 60, step 1 |
| `mode` | `fibre` | `fibre`, `free_space` |
| `variable` | `false` | any text |

## Isolation

### Circulator

<img src="symbols/optics.circulator.svg" alt="Circulator" height="64">

Key: `optics.circulator`

**Ports** — `p1` (optical), `p2` (optical), `p3` (optical), `s` (optical)

### Isolator

<img src="symbols/optics.isolator.svg" alt="Isolator" height="64">

Key: `optics.isolator`

**Ports** — `in` (optical), `n` (optical), `out` (optical), `s` (optical)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

## Modulators

### AOM

<img src="symbols/optics.aom.svg" alt="AOM" height="64">

Key: `optics.aom`

**Ports** — `in` (optical), `n` (analog), `out` (optical), `rf` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

### EOM

<img src="symbols/optics.eom.svg" alt="EOM" height="64">

Key: `optics.eom`

**Ports** — `in` (optical), `n` (analog), `out` (optical), `rf` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

### IQ Modulator

<img src="symbols/optics.iq_mod.svg" alt="IQ Modulator" height="64">

Key: `optics.iq_mod`

**Ports** — `i` (analog), `in` (optical), `out` (optical), `q` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

### Pol Scrambler

<img src="symbols/optics.pol_scrambler.svg" alt="Pol Scrambler" height="64">

Key: `optics.pol_scrambler`

**Ports** — `drive` (analog), `in` (optical), `n` (analog), `out` (optical)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

## Non-linear

### OPA

<img src="symbols/optics.opa.svg" alt="OPA" height="64">

Key: `optics.opa`

**Ports** — `idler` (optical), `pump` (optical), `seed` (optical), `signal` (optical)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

### SHG

<img src="symbols/optics.shg.svg" alt="SHG" height="64">

Key: `optics.shg`

**Ports** — `in` (optical), `out` (optical)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |

## Sources

### Frequency Comb

<img src="symbols/optics.comb.svg" alt="Frequency Comb" height="64">

Key: `optics.comb`

**Ports** — `n` (analog), `out` (optical), `s` (analog), `w` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |
| `power_dbm` | `0` | -60 to 40, step 1 |
| `wavelength_nm` | `0` | 0 to 12000, step 1 |

### Laser

<img src="symbols/optics.laser.svg" alt="Laser" height="64">

Key: `optics.laser`

**Ports** — `n` (analog), `out` (optical), `s` (analog), `w` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |
| `power_dbm` | `0` | -60 to 40, step 1 |
| `wavelength_nm` | `0` | 0 to 12000, step 1 |

### Laser Diode

<img src="symbols/optics.laser_diode.svg" alt="Laser Diode" height="64">

Key: `optics.laser_diode`

**Ports** — `n` (analog), `out` (optical), `s` (analog), `w` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |
| `power_dbm` | `0` | -60 to 40, step 1 |
| `wavelength_nm` | `0` | 0 to 12000, step 1 |

### LED

<img src="symbols/optics.led.svg" alt="LED" height="64">

Key: `optics.led`

**Ports** — `n` (analog), `out` (optical), `s` (analog), `w` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |
| `power_dbm` | `0` | -60 to 40, step 1 |
| `wavelength_nm` | `0` | 0 to 12000, step 1 |

### Narrow Linewidth

<img src="symbols/optics.nll.svg" alt="Narrow Linewidth" height="64">

Key: `optics.nll`

**Ports** — `n` (analog), `out` (optical), `s` (analog), `w` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |
| `power_dbm` | `0` | -60 to 40, step 1 |
| `wavelength_nm` | `0` | 0 to 12000, step 1 |

### SLED

<img src="symbols/optics.sled.svg" alt="SLED" height="64">

Key: `optics.sled`

**Ports** — `n` (analog), `out` (optical), `s` (analog), `w` (analog)

Its parameters change what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `mode` | `fibre` | `fibre`, `free_space` |
| `power_dbm` | `0` | -60 to 40, step 1 |
| `wavelength_nm` | `0` | 0 to 12000, step 1 |
