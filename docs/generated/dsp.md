# DSP and digital

Digital signal processing, control and converters.

20 symbols. Generated from the symbol registry — see the note in
[the index](index.md).

## Arithmetic

### Accumulator

<img src="symbols/dsp.accumulator.svg" alt="Accumulator" height="64">

Key: `dsp.accumulator`

**Ports** — `e` (digital), `in` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

### Adder

<img src="symbols/dsp.adder.svg" alt="Adder" height="64">

Key: `dsp.adder`

**Ports** — `e` (digital), `in_n` (digital), `in_s` (digital), `in_w` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

| Parameter | Default | Accepts |
|---|---|---|
| `op` | `add` | `add`, `subtract` |

### Gain

<img src="symbols/dsp.gain.svg" alt="Gain" height="64">

Key: `dsp.gain`

**Ports** — `in` (digital), `out` (digital)

### Multiplier

<img src="symbols/dsp.multiplier.svg" alt="Multiplier" height="64">

Key: `dsp.multiplier`

**Ports** — `e` (digital), `in_n` (digital), `in_s` (digital), `in_w` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

## Control

### Phase Detector

<img src="symbols/dsp.phase_det.svg" alt="Phase Detector" height="64">

Key: `dsp.phase_det`

**Ports** — `n` (digital), `out` (digital), `ref` (digital), `sig` (digital)

### PI Controller

<img src="symbols/dsp.pi.svg" alt="PI Controller" height="64">

Key: `dsp.pi`

**Ports** — `e` (digital), `in` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

### PLL

<img src="symbols/dsp.pll.svg" alt="PLL" height="64">

Key: `dsp.pll`

**Ports** — `e` (digital), `n` (digital), `out` (digital), `ref` (digital), `s` (digital), `w` (digital)

## Converters

### ADC

<img src="symbols/dsp.adc.svg" alt="ADC" height="64">

Key: `dsp.adc`

**Ports** — `e` (digital), `in` (analog), `out` (digital), `w` (analog)

### DAC

<img src="symbols/dsp.dac.svg" alt="DAC" height="64">

Key: `dsp.dac`

**Ports** — `e` (analog), `in` (digital), `out` (analog), `w` (digital)

### DAQ / Save to Disk

<img src="symbols/dsp.daq.svg" alt="DAQ / Save to Disk" height="64">

Key: `dsp.daq`

**Ports** — `e` (digital), `in1` (analog), `in2` (analog), `n` (digital), `s` (digital)

Its parameters change which ports it has and what they carry; these are the defaults.

| Parameter | Default | Accepts |
|---|---|---|
| `channels` | `2` | 1 to 8, step 1 |

## Detectors

### IQ Demod

<img src="symbols/dsp.iq_demod.svg" alt="IQ Demod" height="64">

Key: `dsp.iq_demod`

**Ports** — `i` (digital), `in` (digital), `lo` (digital), `n` (digital), `q` (digital)

### Zero-Span Detector

<img src="symbols/dsp.zero_span.svg" alt="Zero-Span Detector" height="64">

Key: `dsp.zero_span`

**Ports** — `e` (digital), `in` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

| Parameter | Default | Accepts |
|---|---|---|
| `center_mhz` | `0` | 0 to 40000, step 1 |

## Filters

### Filter

<img src="symbols/dsp.filter.svg" alt="Filter" height="64">

Key: `dsp.filter`

**Ports** — `e` (digital), `in` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

| Parameter | Default | Accepts |
|---|---|---|
| `response` | `lp` | `lp`, `hp`, `bp`, `notch` |

## Registers

### Delay (z⁻ⁿ)

<img src="symbols/dsp.delay.svg" alt="Delay (z⁻ⁿ)" height="64">

Key: `dsp.delay`

**Ports** — `e` (digital), `in` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

| Parameter | Default | Accepts |
|---|---|---|
| `n` | `1` | 1 to 64, step 1 |

### Register

<img src="symbols/dsp.register.svg" alt="Register" height="64">

Key: `dsp.register`

**Ports** — `clk` (digital), `d` (digital), `q` (digital)

## Sources

### AWG

<img src="symbols/dsp.awg.svg" alt="AWG" height="64">

Key: `dsp.awg`

**Ports** — `e` (digital), `n` (digital), `out` (digital), `s` (digital), `trig` (digital), `w` (digital)

### Clock

<img src="symbols/dsp.clock.svg" alt="Clock" height="64">

Key: `dsp.clock`

**Ports** — `e` (digital), `n` (digital), `out` (digital), `ref` (digital), `s` (digital), `w` (digital)

### DDS / NCO

<img src="symbols/dsp.dds.svg" alt="DDS / NCO" height="64">

Key: `dsp.dds`

**Ports** — `e` (digital), `ftw` (digital), `n` (digital), `out` (digital), `s` (digital), `w` (digital)

### Pulse Gen

<img src="symbols/dsp.pulse_gen.svg" alt="Pulse Gen" height="64">

Key: `dsp.pulse_gen`

**Ports** — `e` (digital), `n` (digital), `out` (digital), `s` (digital), `trig` (digital), `w` (digital)

## Wiring

### Node

<img src="symbols/dsp.node.svg" alt="Node" height="64">

Key: `dsp.node`

**Ports** — `center` (digital), `e` (digital), `n` (digital), `s` (digital), `w` (digital)
