# Conditional final charge upper control from active-window gain

## Target

Use active-window amplitude gain to construct the final charge upper control needed by the `Jumpavg` no-escape route.

## Conditional input

Assume an active-window, equivalently active-shell, amplitude gain strong enough to give the active-square estimate on terminal windows.

The installed bridge states:

```math
active\text{-}shell\ amplitude\ gain
=> scale\text{-}normalized\ nu_{SCF}\ Carleson.
```

The proof uses shell-to-window comparison, heat-scale dissipation tail control, and summable reserves.

## Conditional theorem

Under that gain, the final charge upper estimate follows:

```math
sum_k SCF_{norm}(Q_k) <= C(E_0,nu,atlas,reserves)
```

for separated terminal windows `Q_k`.

This supplies the scale-normalized upper side needed to pair with any future separated lower recurrence theorem.

## Boundary

This note is conditional. The active-window amplitude gain itself is not installed from `OriginalSmoothData`. Raw finite mass gives only unweighted bounded-overlap control, and the current surfaces identify short active-shell pulses as the obstruction.

## Verdict

Final charge upper control is available modulo active-window amplitude gain. The original-data route remains open until that gain, or an equivalent heat-scale square-source estimate, is proved.