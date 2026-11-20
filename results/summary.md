### Vibration — CWRU bearing dataset

| Condition | ROC-AUC | Detection rate |
|---|:---:|:---:|
| Inner-race fault | 1.000 | 100.0% |
| Ball fault | 1.000 | 100.0% |
| Outer-race fault | 1.000 | 100.0% |
| False alarms on healthy data | – | 0.0% |

![Vibration anomaly timeline](results/cwru_timeline.png)

### Stress test — added factory noise (vibration)

Background noise added to every signal; the model re-learns "normal" in the noisy setting, as it would on a real shop floor.

| Noise level (SNR) | Mean ROC-AUC | Detection rate | False alarms |
|---|:---:|:---:|:---:|
| 10 dB | 1.000 | 100.0% | 0.0% |
| 0 dB | 1.000 | 100.0% | 0.0% |
| -5 dB | 1.000 | 100.0% | 0.0% |
| -10 dB | 1.000 | 100.0% | 0.0% |
| -15 dB | 0.976 | 82.9% | 0.0% |
| -20 dB | 0.830 | 43.8% | 0.0% |

![Noise robustness](results/noise_robustness.png)

### Sound — industrial air-compressor dataset

| Condition | ROC-AUC | Detection rate |
|---|:---:|:---:|
| Bearing | 1.000 | 100.0% |
| Flywheel | 1.000 | 100.0% |
| Inlet-valve leak | 1.000 | 100.0% |
| Outlet-valve leak | 1.000 | 100.0% |
| Non-return valve | 1.000 | 100.0% |
| Piston ring | 1.000 | 100.0% |
| Rider belt | 1.000 | 100.0% |
| False alarms on healthy data | – | 8.8% |

![Sound anomaly timeline](results/aircomp_timeline.png)

**Model size:** 18,704 parameters (~18 KB in INT8), small enough to run in real time, offline, on a low-cost phone.