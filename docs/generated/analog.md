# Analog and RF

Analog components, RF blocks, servo and bench instruments.

25 symbols. Generated from the symbol registry — see the note in
[the index](index.md).

## Components

### Capacitor

<img src="symbols/analog.capacitor.svg" alt="Capacitor" height="64">

Key: `analog.capacitor`

**Ports** — `p1` (analog), `p2` (analog)

### Ground

<img src="symbols/analog.gnd.svg" alt="Ground" height="64">

Key: `analog.gnd`

**Ports** — `p1` (analog)

### Inductor

<img src="symbols/analog.inductor.svg" alt="Inductor" height="64">

Key: `analog.inductor`

**Ports** — `p1` (analog), `p2` (analog)

### Op-amp

<img src="symbols/analog.opamp.svg" alt="Op-amp" height="64">

Key: `analog.opamp`

**Ports** — `in1` (analog), `in2` (analog), `out` (analog)

### Resistor

<img src="symbols/analog.resistor.svg" alt="Resistor" height="64">

Key: `analog.resistor`

**Ports** — `p1` (analog), `p2` (analog)

### Voltage Source

<img src="symbols/analog.vsource.svg" alt="Voltage Source" height="64">

Key: `analog.vsource`

**Ports** — `p1` (analog), `p2` (analog)

## Instruments

### AWG

<img src="symbols/analog.awg.svg" alt="AWG" height="64">

Key: `analog.awg`

**Ports** — `n` (analog), `out` (analog), `s` (analog)

### Frequency Counter

<img src="symbols/analog.freq_counter.svg" alt="Frequency Counter" height="64">

Key: `analog.freq_counter`

**Ports** — `in` (analog), `n` (analog), `s` (analog)

### Function Generator

<img src="symbols/analog.func_gen.svg" alt="Function Generator" height="64">

Key: `analog.func_gen`

**Ports** — `n` (analog), `out` (analog), `s` (analog)

### Phase Noise

<img src="symbols/analog.phase_noise.svg" alt="Phase Noise" height="64">

Key: `analog.phase_noise`

**Ports** — `in` (analog), `n` (analog), `s` (analog)

### Scope

<img src="symbols/analog.scope.svg" alt="Scope" height="64">

Key: `analog.scope`

**Ports** — `in1` (analog), `in2` (analog), `n` (analog), `s` (analog)

### Spectrum Analyser

<img src="symbols/analog.spec_an.svg" alt="Spectrum Analyser" height="64">

Key: `analog.spec_an`

**Ports** — `in` (analog), `n` (analog), `s` (analog)

## RF Blocks

### Attenuator

<img src="symbols/analog.attenuator.svg" alt="Attenuator" height="64">

Key: `analog.attenuator`

**Ports** — `in` (analog), `n` (analog), `out` (analog), `s` (analog)

| Parameter | Default | Accepts |
|---|---|---|
| `db` | `3` | 0 to 60, step 1 |

### Bias Tee

<img src="symbols/analog.bias_tee.svg" alt="Bias Tee" height="64">

Key: `analog.bias_tee`

**Ports** — `dc` (analog), `out` (analog), `rf` (analog), `s` (analog)

### Directional Coupler

<img src="symbols/analog.dir_coupler.svg" alt="Directional Coupler" height="64">

Key: `analog.dir_coupler`

**Ports** — `cpl` (analog), `in` (analog), `n` (analog), `out` (analog)

### RF Filter

<img src="symbols/analog.filter.svg" alt="RF Filter" height="64">

Key: `analog.filter`

**Ports** — `in` (analog), `n` (analog), `out` (analog), `s` (analog)

| Parameter | Default | Accepts |
|---|---|---|
| `response` | `lp` | `lp`, `hp`, `bp`, `notch` |

### RF Mixer

<img src="symbols/analog.mixer.svg" alt="RF Mixer" height="64">

Key: `analog.mixer`

**Ports** — `if` (analog), `lo` (analog), `n` (analog), `rf` (analog)

### Phase Detector

<img src="symbols/analog.phase_det.svg" alt="Phase Detector" height="64">

Key: `analog.phase_det`

**Ports** — `in1` (analog), `in2` (analog), `n` (analog), `out` (analog)

### RF Amplifier

<img src="symbols/analog.rf_amp.svg" alt="RF Amplifier" height="64">

Key: `analog.rf_amp`

**Ports** — `in` (analog), `out` (analog)

### RF Splitter

<img src="symbols/analog.splitter.svg" alt="RF Splitter" height="64">

Key: `analog.splitter`

**Ports** — `in` (analog), `n` (analog), `out1` (analog), `out2` (analog), `s` (analog)

### VCO

<img src="symbols/analog.vco.svg" alt="VCO" height="64">

Key: `analog.vco`

**Ports** — `n` (analog), `out` (analog), `s` (analog), `tune` (analog)

## Servo

### Adder

<img src="symbols/analog.adder.svg" alt="Adder" height="64">

Key: `analog.adder`

**Ports** — `e` (analog), `in_n` (analog), `in_s` (analog), `in_w` (analog), `n` (analog), `out` (analog), `s` (analog), `w` (analog)

| Parameter | Default | Accepts |
|---|---|---|
| `op` | `add` | `add`, `subtract` |

### PID Servo

<img src="symbols/analog.pid.svg" alt="PID Servo" height="64">

Key: `analog.pid`

**Ports** — `in` (analog), `mon` (analog), `n` (analog), `out` (analog)

### Piezo Driver

<img src="symbols/analog.piezo_drv.svg" alt="Piezo Driver" height="64">

Key: `analog.piezo_drv`

**Ports** — `in` (analog), `n` (analog), `out` (analog), `s` (analog)

### Temperature Controller

<img src="symbols/analog.temp_ctrl.svg" alt="Temperature Controller" height="64">

Key: `analog.temp_ctrl`

**Ports** — `in` (analog), `n` (analog), `out` (analog), `s` (analog)
