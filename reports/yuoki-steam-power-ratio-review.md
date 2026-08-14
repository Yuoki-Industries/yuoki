# Yuoki Steam Power Ratio Review

Filters applied: producers that require electricity are excluded; consumers that do not produce electricity are excluded. Pairing requires exact producer output temperature to match the generator `maximum_temperature`; colder accepted inputs are not counted. Ratio search caps producer count at 5; generator count is not capped.

Visibility check: no steam producer or generator listed here is marked with `hidden = true`, `enabled = false`, or `factorio_enabled = false` in the active source files checked (`e_energy-gen.lua`, `e_mastercrafted.lua`, `r_energy.lua`, and `i_energy.lua`).

Heat assumption: `steam` uses 0.2 kJ per fluid per C from 15C.

## Producers

| Producer | Power source | Output temp | Output rate / s | Fuel power required | Source |
| --- | --- | ---: | ---: | ---: | --- |
| Boiler 3M6/4<br>(`y-boiler-iv`) | burner / chemical fuel | 265C | 102.000 | 6.800 MW | `prototypes/entity/e_energy-gen.lua` |
| Mastercrafted Eco-Efficient Boiler T25<br>(`y_boiler4_mc`) | burner / chemical fuel | 265C | 152.000 | 8.000 MW | `prototypes/entity/e_mastercrafted.lua` |
| Mastercrafted Tech Power Boiler T50<br>(`y_boiler4_tech`) | burner / chemical fuel | 500C | 90.928 | 10.500 MW | `prototypes/entity/e_mastercrafted.lua` |

## Electricity-Producing Consumers

For generators, `minimum_temperature` is listed for reference only. Pairing uses `maximum_temperature` as the required consumer temperature.

| Generator | Minimum accepted | Max wanted | Consumption rate / s | Effectivity | Electricity generated at max temp | Source |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| 1.8-MS-Turbine-S<br>(`y-steam-turbine`) | 100C | 265C | 75.000 | 0.987 | 3.701 MW | `prototypes/entity/e_energy-gen.lua` |
| Rensuir Turbine<br>(`y-obninsk-turbine`) | 150C | 500C | 120.000 | 1.000 | 11.640 MW | `prototypes/entity/e_energy-gen.lua` |
| Emergency Generator-S2<br>(`y-notfall-generator-s2`) | 100C | 165C | 45.000 | 1.200 | 1.620 MW | `prototypes/entity/e_energy-gen.lua` |
| Mastercrafted Tech Power MS-Turbine<br>(`y_steam_turbine_mc`) | 100C | 500C | 45.000 | 1.145 | 4.998 MW | `prototypes/entity/e_mastercrafted.lua` |
| Mastercrafted Eco-Efficient MS-Turbine<br>(`y_steam_turbine_gr`) | 100C | 265C | 75.000 | 1.200 | 4.500 MW | `prototypes/entity/e_mastercrafted.lua` |

## Produces More Electricity Than Fuel Power Required

`Fuel power required` is the actual fuel input needed by the producer after burner `effectivity` is applied. `Net power` is `electricity produced - fuel power required`.

| Temp | Producer | Generator | Ratio | Fuel power required | Electricity produced | Net power | Flow error |
| --- | --- | --- | ---: | ---: | ---: | ---: | ---: |
| steam 265C | Mastercrafted Eco-Efficient Boiler T25<br>(`y_boiler4_mc`) | Mastercrafted Eco-Efficient MS-Turbine<br>(`y_steam_turbine_gr`) | 1:2 | 8.000 MW | 9.000 MW | +1.000 MW | 1.32% |

## Within 25% Below Break-Even

These exact-temperature pairs burn more fuel power than they generate as electricity, but are within 25% of break-even. `Net %` is `net power / fuel power required`.

| Temp | Producer | Generator | Ratio | Fuel power required | Electricity produced | Net power | Net % | Flow error |
| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| steam 265C | Boiler 3M6/4<br>(`y-boiler-iv`) | Mastercrafted Eco-Efficient MS-Turbine<br>(`y_steam_turbine_gr`) | 3:4 | 20.400 MW | 18.000 MW | -2.400 MW | -11.76% | 1.96% |
| steam 265C | Mastercrafted Eco-Efficient Boiler T25<br>(`y_boiler4_mc`) | 1.8-MS-Turbine-S<br>(`y-steam-turbine`) | 1:2 | 8.000 MW | 7.402 MW | -0.598 MW | -7.48% | 1.32% |
| steam 500C | Mastercrafted Tech Power Boiler T50<br>(`y_boiler4_tech`) | Rensuir Turbine<br>(`y-obninsk-turbine`) | 4:3 | 42.000 MW | 34.920 MW | -7.080 MW | -16.86% | 1.02% |
| steam 500C | Mastercrafted Tech Power Boiler T50<br>(`y_boiler4_tech`) | Mastercrafted Tech Power MS-Turbine<br>(`y_steam_turbine_mc`) | 1:2 | 10.500 MW | 9.996 MW | -0.504 MW | -4.80% | 1.02% |

## 25% to 70% Below Break-Even

| Temp | Producer | Generator | Ratio | Fuel power required | Electricity produced | Net power | Net % | Flow error |
| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| steam 265C | Boiler 3M6/4<br>(`y-boiler-iv`) | 1.8-MS-Turbine-S<br>(`y-steam-turbine`) | 3:4 | 20.400 MW | 14.805 MW | -5.595 MW | -27.43% | 1.96% |

## Likely Not Intended Pairings

No steam exact-temperature pair is 70% or more below break-even.

## No Exact-Temperature Candidate

| Generator | Wanted fluid/temp | Closest available producer temp | Reason |
| --- | --- | --- | --- |
| Emergency Generator-S2<br>(`y-notfall-generator-s2`) | steam 165C | steam 265C | No active non-electric producer emits exact 165C steam |

## No Valid Match Summary

Valid here means exact temperature, no more than 5 producers in the ratio, and better than `-70%` net power. Generator count is not capped.

| Type | Prototype | Closest candidate | Closest net % | Why no valid match |
| --- | --- | --- | ---: | --- |
| generator | Emergency Generator-S2<br>(`y-notfall-generator-s2`) | No exact-temperature steam producer; nearest producers are 265C boilers, but this generator wants 165C | n/a | No active non-electric producer emits exact 165C steam |

## Rounding / Decimal Drift Flags

| Family | Affected pair(s) | Decimal source | Current ratio/error | Rounding cleanup | Would impact good pairs? |
| --- | --- | --- | --- | --- | --- |
| steam 500C | Mastercrafted Tech Power Boiler T50 -> Rensuir Turbine (`4:3`); Mastercrafted Tech Power Boiler T50 -> Mastercrafted Tech Power MS-Turbine (`1:2`) | Producer `y_boiler4_tech` outputs `90.928/s` steam | `4:3` is 1.02% off; `1:2` is 1.02% off | Rounding producer output down to `90.00/s` would make both exact | Positive impact only among listed exact 500C pairs; no currently perfect pair depends on `90.928/s` |

## Best Exact-Temperature Candidate

| Family | Pair | Ratio | Fuel power required | Electricity produced | Net power | Flow error |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| steam 265C | Mastercrafted Eco-Efficient Boiler T25 -> Mastercrafted Eco-Efficient MS-Turbine | 1:2 | 8.000 MW | 9.000 MW | +1.000 MW | 1.32% |
