# Direct LPAS Closure Blocked By Shell Amplitude

## Target

The direct LPAS theorem is

```math
\int_0^T
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Dependency

Dualizing the lower prefix reduces LPAS to active-square upper-tail control:

```math
\int_I
\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

The active-square theorem follows conditionally from a shell-amplitude gain, but that gain is not installed. The shell-amplitude attempt has the fixed-shell amplitude obstruction and the balanced source/damping obstruction.

## Result

Direct LPAS closure remains blocked. The exact live alternatives are:

```math
\text{prove shell-amplitude gain on active intervals,}
```

```math
\text{prove active-square Carleson directly,}
```

or

```math
\text{prove LPAS directly without active-square dualization.}
```