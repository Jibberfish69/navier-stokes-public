# WIZARD Bridge III: Shell-To-Affine Attempt

## Purpose

This note pushes the third bridge obligation:

```math
\text{can the shell low-frequency strain barrier be identified with the affine quotient readout?}
```

The current answer is:

1. both objects live in the same broad lower-prefix / cumulative-readout family;
2. but no exact theorem in the current stack identifies them;
3. the first precise obstruction is a homogeneity and carrier mismatch.

## 1. The two terminal objects

The shell route terminates at the low-frequency strain barrier

```math
A_j(t):=\sum_{k\le j}2^{5k/2}\|\Delta_k\omega(t)\|_{L_x^2},
\qquad
B_j(t):=\frac{A_j(t)}{\nu 2^{2j}}.
\tag{1}
```

The scale-memory route terminates at the affine quotient readout

```math
c_F(t)=A_\kappa M_0(t)+B_\kappa M_1(t),
\tag{2}
```

with

```math
M_0(t):=\int_{s_0}^{s_1-\kappa}\widetilde Z(\sigma,t)\,d\sigma,
\qquad
M_1(t):=\int_{s_0}^{s_1-\kappa}\sigma\,\widetilde Z(\sigma,t)\,d\sigma.
\tag{3}
```

## 2. Why they look comparable

They are comparable at one structural level:

```math
\boxed{
\text{both are lower-side cumulative readouts rather than upper-tail gap-kernel objects.}
}
\tag{4}
```

That is why both belong to Family A in the WIZARD comparison note.

More explicitly:

- `A_j` accumulates low-frequency strain shells `k\le j`;
- `(M_0,M_1)` accumulates the one-sided scale source over a lower logarithmic
  prefix interval.

So the family assignment is real.

## 3. Exact mismatch

The problem is that the two readouts do **not** live on the same carrier.

### Shell carrier

The shell barrier is linear in low-shell vorticity amplitudes:

```math
A_j
=
\sum_{k\le j}2^{5k/2}\|\Delta_k\omega\|_2.
\tag{5}
```

### Affine carrier

The affine quotient is linear in the scale source `\widetilde Z`, but
`\widetilde Z` itself is already a stress-level object:

```math
\widetilde Z_{\ell}^{stress}
:=
\tau_\ell^{H^1}[u].
\tag{6}
```

So the affine route sees a quadratic readout of `u`, while the shell barrier
still sees a linear cumulative strain amplitude.

This gives the first exact obstruction:

```math
\boxed{
\text{shell barrier is linear-in-amplitude on the vorticity/strain side, while affine quotient is linear-in-source on the stress side.}
}
\tag{7}
```

That is a carrier mismatch, not merely a notation mismatch.

## 4. Consequence

Any direct bridge theorem

```math
B_j \rightsquigarrow (M_0,M_1)
\tag{8}
```

requires a nonlinear identification sending the low-frequency shell barrier
into the one-sided stress source class.

The current theorem stack does not provide such an identification.

In particular:

- `A_j` is not a theorem on the `\widetilde Z` carrier;
- `(M_0,M_1)` is not a theorem on the shell-vorticity carrier.

So the bridge cannot even start until one chooses an exact stressification map.

## 5. Conditional bridge theorem

The correct conditional bridge theorem has the following form.

Assume there is a lower-prefix stressification map

```math
\mathcal S_j[\omega]
\rightsquigarrow
\widetilde Z_j
\tag{9}
```

such that:

1. `\widetilde Z_j` is the actual one-sided source seen by the Volterra route;
2. the affine moments of `\widetilde Z_j` are controlled by the cumulative
   shell barrier `A_j`;
3. the map preserves the lower-prefix orientation rather than converting it
   into an upper-tail object.

Then one could hope for a theorem of the form

```math
\boxed{
A_j \text{ barrier}
\Longrightarrow
\text{affine quotient control of }\widetilde Z_j.
}
\tag{10}
```

No such stressification theorem exists in the current notes.

## 6. Terminal obstruction

The precise terminal obstruction is therefore:

```math
\boxed{
\text{Bridge III is blocked before any quantitative comparison: the shell route and affine route live on different carriers and at different homogeneities.}
}
\tag{11}
```

This is a stronger statement than “they look different.” It says exactly where
the comparison stops:

```math
\text{linear cumulative strain amplitude}
\not\equiv
\text{linear affine readout of a quadratic scale source}.
```

## 7. Working conclusion

The current theorem-grade verdict is:

```math
\boxed{
\text{Bridge III is only a family-level analogy at present, not an exact theorem comparison.}
}
```

Turning this branch into a theorem requires a stressification map carrying the
shell barrier onto the one-sided scale-memory source.
