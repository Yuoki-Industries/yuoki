# Yuoki Mechanical Force Power Ratio Review

Filters applied: producers that require electricity are excluded; consumers that do not produce electricity are excluded. Pairing requires exact producer output temperature to match the generator `maximum_temperature`; colder accepted inputs are not counted. Ratio search caps producer count at 5; generator count is not capped.

Visibility check: no mechanical-force producer or generator listed here is marked with `hidden = true`, `enabled = false`, or `factorio_enabled = false` in the active source files checked (`e_energy-gen.lua`, `e_mastercrafted.lua`, `e_entity219.lua`, `r_energy.lua`, and `i_energy.lua`). `y-seg-p` has an item and entity prototype but no direct recipe found; it is retained because it is not explicitly hidden or disabled.

Heat assumption: `y-mechanical-force` uses its prototype `heat_capacity = 6kJ` and the later-loaded `z_fluids.lua` `default_temperature = 10`.

## Producers

| Producer | Power source | Output temp | Output rate / s | Fuel power required | Source |
| --- | --- | ---: | ---: | ---: | --- |
| Obninsk Reactor AM-1/1951 - `y_reactor_mf1`<br>(`y-obninsk-reactor`) | burner / yfusion fuel | 150C | 50.000 | 60.000 MW | `prototypes/entity/e_entity219.lua` |
| Obninsk Reactor AM-1/1951 - `y_reactor_mox1`<br>(`y-obninsk-reactor`) | burner / yfusion fuel | 150C | 6.667 | 60.000 MW | `prototypes/entity/e_entity219.lua` |
| Obninsk Reactor AM-1/1951 - `y_reactor_mox2`<br>(`y-obninsk-reactor`) | burner / yfusion fuel | 150C | 10.000 | 60.000 MW | `prototypes/entity/e_entity219.lua` |
| Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mf1`<br>(`y_obninsk_mc`) | burner / yfusion fuel | 150C | 50.000 | 50.000 MW | `prototypes/entity/e_mastercrafted.lua + e_entity219.lua` |
| Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox1`<br>(`y_obninsk_mc`) | burner / yfusion fuel | 150C | 6.667 | 50.000 MW | `prototypes/entity/e_mastercrafted.lua + e_entity219.lua` |
| Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox2`<br>(`y_obninsk_mc`) | burner / yfusion fuel | 150C | 10.000 | 50.000 MW | `prototypes/entity/e_mastercrafted.lua + e_entity219.lua` |

## Electricity-Producing Consumers

For generators, `minimum_temperature` is listed for reference only. Pairing uses `maximum_temperature` as the required consumer temperature.

| Generator | Minimum accepted | Max wanted | Consumption rate / s | Effectivity | Electricity generated at max temp | Source |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| Small Generator-S<br>(`y-seg`) | 70C | 150C | 4.008 | 0.950 | 3.198 MW | `prototypes/entity/e_energy-gen.lua` |
| Small Generator-P<br>(`y-seg-p`) | 70C | 150C | 4.008 | 0.950 | 3.198 MW | `prototypes/entity/e_energy-gen.lua` |
| Medium Generator-S<br>(`y-meg-s`) | 50C | 150C | 8.000 | 0.950 | 6.384 MW | `prototypes/entity/e_energy-gen.lua` |
| Big Generator-S<br>(`y-beg`) | 70C | 150C | 15.000 | 0.920 | 11.592 MW | `prototypes/entity/e_energy-gen.lua` |
| Huge Generator-S<br>(`y-heg`) | 70C | 150C | 22.500 | 0.880 | 16.632 MW | `prototypes/entity/e_energy-gen.lua` |

## Produces More Electricity Than Fuel Power Required

No mechanical-force exact-temperature pair produces more electricity than the fuel power it requires.

## Within 25% Below Break-Even

These exact-temperature pairs burn more fuel power than they generate as electricity, but are within 25% of break-even. `Net %` is `net power / fuel power required`.

| Temp | Producer | Generator | Ratio | Fuel power required | Electricity produced | Net power | Net % | Flow error |
| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - Mechanical Force<br>(`y_obninsk_mc` / `y_reactor_mf1`) | Small Generator-S<br>(`y-seg`) | 2:25 | 100.000 MW | 79.960 MW | -20.040 MW | -20.04% | 0.20% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - Mechanical Force<br>(`y_obninsk_mc` / `y_reactor_mf1`) | Small Generator-P<br>(`y-seg-p`) | 2:25 | 100.000 MW | 79.960 MW | -20.040 MW | -20.04% | 0.20% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - Mechanical Force<br>(`y_obninsk_mc` / `y_reactor_mf1`) | Medium Generator-S<br>(`y-meg-s`) | 4:25 | 200.000 MW | 159.600 MW | -40.400 MW | -20.20% | 0.00% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - Mechanical Force<br>(`y_obninsk_mc` / `y_reactor_mf1`) | Big Generator-S<br>(`y-beg`) | 3:10 | 150.000 MW | 115.920 MW | -34.080 MW | -22.72% | 0.00% |

## 25% to 70% Below Break-Even

| Temp | Producer | Generator | Ratio | Fuel power required | Electricity produced | Net power | Net % | Flow error |
| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| MF 150C | Obninsk Reactor AM-1/1951 - Mechanical Force<br>(`y-obninsk-reactor` / `y_reactor_mf1`) | Small Generator-S<br>(`y-seg`) | 2:25 | 120.000 MW | 79.960 MW | -40.040 MW | -33.37% | 0.20% |
| MF 150C | Obninsk Reactor AM-1/1951 - Mechanical Force<br>(`y-obninsk-reactor` / `y_reactor_mf1`) | Small Generator-P<br>(`y-seg-p`) | 2:25 | 120.000 MW | 79.960 MW | -40.040 MW | -33.37% | 0.20% |
| MF 150C | Obninsk Reactor AM-1/1951 - Mechanical Force<br>(`y-obninsk-reactor` / `y_reactor_mf1`) | Medium Generator-S<br>(`y-meg-s`) | 4:25 | 240.000 MW | 159.600 MW | -80.400 MW | -33.50% | 0.00% |
| MF 150C | Obninsk Reactor AM-1/1951 - Mechanical Force<br>(`y-obninsk-reactor` / `y_reactor_mf1`) | Big Generator-S<br>(`y-beg`) | 3:10 | 180.000 MW | 115.920 MW | -64.080 MW | -35.60% | 0.00% |
| MF 150C | Obninsk Reactor AM-1/1951 - Mechanical Force<br>(`y-obninsk-reactor` / `y_reactor_mf1`) | Huge Generator-S<br>(`y-heg`) | 5:11 | 300.000 MW | 182.952 MW | -117.048 MW | -39.02% | 1.00% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - Mechanical Force<br>(`y_obninsk_mc` / `y_reactor_mf1`) | Huge Generator-S<br>(`y-heg`) | 5:11 | 250.000 MW | 182.952 MW | -67.048 MW | -26.82% | 1.00% |

## Likely Not Intended Pairings

These exact-temperature pairs are 70% or more below break-even. That usually means the generator tier is far too small for the producer class, or the producer/recipe was probably not meant to feed that generator family.

| Temp | Producer | Generator | Ratio | Fuel power required | Electricity produced | Net power | Net % | Flow error |
| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox1`<br>(`y-obninsk-reactor`) | Small Generator-S<br>(`y-seg`) | 3:5 | 180.000 MW | 15.992 MW | -164.008 MW | -91.12% | 0.20% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox1`<br>(`y-obninsk-reactor`) | Small Generator-P<br>(`y-seg-p`) | 3:5 | 180.000 MW | 15.992 MW | -164.008 MW | -91.12% | 0.20% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox1`<br>(`y-obninsk-reactor`) | Medium Generator-S<br>(`y-meg-s`) | 5:4 | 300.000 MW | 25.536 MW | -274.464 MW | -91.49% | 4.00% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox1`<br>(`y-obninsk-reactor`) | Big Generator-S<br>(`y-beg`) | 5:2 | 300.000 MW | 23.184 MW | -276.816 MW | -92.27% | 10.00% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox1`<br>(`y-obninsk-reactor`) | Huge Generator-S<br>(`y-heg`) | 3:1 | 180.000 MW | 16.632 MW | -163.368 MW | -90.76% | 11.11% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox2`<br>(`y-obninsk-reactor`) | Small Generator-S<br>(`y-seg`) | 2:5 | 120.000 MW | 15.992 MW | -104.008 MW | -86.67% | 0.20% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox2`<br>(`y-obninsk-reactor`) | Small Generator-P<br>(`y-seg-p`) | 2:5 | 120.000 MW | 15.992 MW | -104.008 MW | -86.67% | 0.20% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox2`<br>(`y-obninsk-reactor`) | Medium Generator-S<br>(`y-meg-s`) | 4:5 | 240.000 MW | 31.920 MW | -208.080 MW | -86.70% | 0.00% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox2`<br>(`y-obninsk-reactor`) | Big Generator-S<br>(`y-beg`) | 3:2 | 180.000 MW | 23.184 MW | -156.816 MW | -87.12% | 0.00% |
| MF 150C | Obninsk Reactor AM-1/1951 - `y_reactor_mox2`<br>(`y-obninsk-reactor`) | Huge Generator-S<br>(`y-heg`) | 5:2 | 300.000 MW | 33.264 MW | -266.736 MW | -88.91% | 10.00% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox1`<br>(`y_obninsk_mc`) | Small Generator-S<br>(`y-seg`) | 3:5 | 150.000 MW | 15.992 MW | -134.008 MW | -89.34% | 0.20% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox1`<br>(`y_obninsk_mc`) | Small Generator-P<br>(`y-seg-p`) | 3:5 | 150.000 MW | 15.992 MW | -134.008 MW | -89.34% | 0.20% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox1`<br>(`y_obninsk_mc`) | Medium Generator-S<br>(`y-meg-s`) | 5:4 | 250.000 MW | 25.536 MW | -224.464 MW | -89.79% | 4.00% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox1`<br>(`y_obninsk_mc`) | Big Generator-S<br>(`y-beg`) | 5:2 | 250.000 MW | 23.184 MW | -226.816 MW | -90.73% | 10.00% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox1`<br>(`y_obninsk_mc`) | Huge Generator-S<br>(`y-heg`) | 3:1 | 150.000 MW | 16.632 MW | -133.368 MW | -88.91% | 11.11% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox2`<br>(`y_obninsk_mc`) | Small Generator-S<br>(`y-seg`) | 2:5 | 100.000 MW | 15.992 MW | -84.008 MW | -84.01% | 0.20% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox2`<br>(`y_obninsk_mc`) | Small Generator-P<br>(`y-seg-p`) | 2:5 | 100.000 MW | 15.992 MW | -84.008 MW | -84.01% | 0.20% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox2`<br>(`y_obninsk_mc`) | Medium Generator-S<br>(`y-meg-s`) | 4:5 | 200.000 MW | 31.920 MW | -168.080 MW | -84.04% | 0.00% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox2`<br>(`y_obninsk_mc`) | Big Generator-S<br>(`y-beg`) | 3:2 | 150.000 MW | 23.184 MW | -126.816 MW | -84.54% | 0.00% |
| MF 150C | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox2`<br>(`y_obninsk_mc`) | Huge Generator-S<br>(`y-heg`) | 5:2 | 250.000 MW | 33.264 MW | -216.736 MW | -86.69% | 10.00% |

## No Exact-Temperature Candidate

All listed mechanical-force generators want 150C and all listed mechanical-force producers output 150C.

## No Valid Match Summary

Valid here means exact temperature, no more than 5 producers in the ratio, and better than `-70%` net power. Generator count is not capped.

| Type | Prototype | Closest candidate | Closest net % | Why no valid match |
| --- | --- | --- | ---: | --- |
| producer | Obninsk Reactor AM-1/1951 - `y_reactor_mox1`<br>(`y-obninsk-reactor`) | Huge Generator-S (`y-heg`) at `3:1` | -90.76% | Best pairable exact-temp match is 70%+ below break-even |
| producer | Obninsk Reactor AM-1/1951 - `y_reactor_mox2`<br>(`y-obninsk-reactor`) | Small Generator-S / Small Generator-P (`y-seg` / `y-seg-p`) at `2:5` | -86.67% | Best pairable exact-temp match is 70%+ below break-even |
| producer | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox1`<br>(`y_obninsk_mc`) | Huge Generator-S (`y-heg`) at `3:1` | -88.91% | Best pairable exact-temp match is 70%+ below break-even |
| producer | Obninsk Mastercrafted Nuclear Reactor 2/2016 - `y_reactor_mox2`<br>(`y_obninsk_mc`) | Small Generator-S / Small Generator-P (`y-seg` / `y-seg-p`) at `2:5` | -84.01% | Best pairable exact-temp match is 70%+ below break-even |

## Rounding / Decimal Drift Flags

| Family | Affected pair(s) | Decimal source | Current ratio/error | Rounding cleanup | Would impact good pairs? |
| --- | --- | --- | --- | --- | --- |
| MF 150C | `y_reactor_mox1` -> Small Generator-S / Small Generator-P (`3:5`) | Producer recipe rate derives as `100 / 15 = 6.666.../s`; consumers use `4.008/s` from `0.0668/tick` | `3:5` is 0.20% off | Rounding/adjusting consumer use down to `4.000/s` would make `3 * 6.666... = 5 * 4.000 = 20/s` exact | Positive impact for `mox1 -> y-seg/y-seg-p`; does not hurt existing exact `mox2 -> y-seg/y-seg-p` if producer stays `10/s`, but it changes those from 0.20% over-consumption to exact `2:5` |
| MF 150C | `y_reactor_mox2` -> Small Generator-S / Small Generator-P (`2:5`) | Consumers use `4.008/s` from `0.0668/tick` | `2:5` is 0.20% off | Rounding/adjusting consumer use down to `4.000/s` makes `2 * 10 = 5 * 4.000 = 20/s` exact | Positive impact; no perfect pair is degraded |
| MF 150C | `y_reactor_mox1` -> Medium Generator-S (`5:4`) | Producer recipe rate derives as `100 / 15 = 6.666.../s`; consumer is effectively `8.000004/s` from `0.1333334/tick` | `5:4` is 4.00% off | Rounding the consumer to `8.000/s` barely changes this; it remains around 4% off because the natural target would be `4:3` or recipe/rate redesign | No. Rounding alone does not clean this pair |
| MF 150C | `y_reactor_mf1` -> Small/Medium generators | Producer rate is clean `50/s`; natural ratios use more than 5 generators but no more than 5 producers | Pairable under the corrected producer-only cap; examples are `2:25` for small generators and `4:25` for Medium Generator-S | Decimal rounding does not solve the power deficit; the relevant issue is fuel required vs generator output | No rounding-based fix identified |

## Best Exact-Temperature Candidate

No mechanical-force exact-temperature pair is net-positive. Best close candidates are the mastercrafted reactor `y_reactor_mf1` pairings in the `Within 25% Below Break-Even` table.
