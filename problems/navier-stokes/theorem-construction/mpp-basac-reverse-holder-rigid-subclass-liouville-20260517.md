# MPP B_ASAC Reverse-Holder Rigid Subclass Liouville

Date: 2026-05-17

## Status

Conditional theorem for a stronger rigid subclass of `B_ASAC`.

This note proves the residue Liouville statement once a genuine temporal reverse-Holder source residence bound is added to the produced equality class. It also records the remaining production burden.

## Rigid Subclass

For `p>1`, define `B_ASAC^RH(p)` as the subclass of produced `B_ASAC` terminal source-residue limits whose representing positive native source measures satisfy, for every compact spatial ball `B_R`,

```math
\left\|\,\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,\right\|_{L^p_s((-1,0))}\le C_R
```

with `C_R` independent of `m`.

This is exactly the temporal residence upgrade sought in

```text
TerminalSourceReverseHolder_{B_ASAC}.A
```

or

```text
UniformTemporalSourceIntegrability_{p,B_ASAC}.A.
```

## Theorem

```math
\boxed{
ZenoResidueLiouville_{B_{ASAC}^{RH}(p)}.A:
B_{ASAC}^{RH}(p)\Longrightarrow \mu_*^{src}=0.
}
```

## Proof

Let `K\subset B_R` be compact, and let `\psi\in C_c(B_R)` satisfy `0\le\psi\le1`. For `0<\delta<1`, choose `\chi_\delta\in C_c((-2\delta,\delta))` with `0\le\chi_\delta\le1` and `\chi_\delta(0)=1`.

For the weak terminal source limit,

```math
\int \psi(x)\chi_\delta(s)\,d\mu_*^{src}(x,s)
=
\lim_{m\to\infty}
\int \psi(x)\chi_\delta(s)\,dF_m^{src,+}(x,s).
```

The support of `\chi_\delta` in the source time interval gives

```math
\int \psi\chi_\delta\,dF_m^{src,+}
\le
\int_{-2\delta}^{0}
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds.
```

By Hölder,

```math
\int_{-2\delta}^{0}
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds
\le
(2\delta)^{1-1/p} C_R.
```

Passing to the limit in `m` gives

```math
\int \psi(x)\chi_\delta(s)\,d\mu_*^{src}(x,s)
\le
(2\delta)^{1-1/p} C_R.
```

Since `\chi_\delta(0)=1`, the terminal atom obeys

```math
\int \psi(x)\,d\mu_*^{src}(x,\{0\})
\le
(2\delta)^{1-1/p} C_R.
```

Letting `\delta\downarrow0` yields

```math
\int \psi(x)\,d\mu_*^{src}(x,\{0\})=0.
```

As `R` and `\psi` were arbitrary, the terminal source atom vanishes locally. The `B_ASAC` Zeno support clause places the surviving source residue at the terminal time after all fixed negative-time selected source slices and finite or non-Zeno refill exits have been removed. Hence the entire source-residue measure vanishes:

```math
\mu_*^{src}=0.
```

`\square`

## Consequence

The rigid subclass route is valid:

```math
B_{ASAC}^{RH}(p)
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}^{RH}(p)}.A.
```

The remaining production burden is exact:

```math
\boxed{
B_{ASAC}\Longrightarrow B_{ASAC}^{RH}(p)
\quad\text{for some }p>1.
}
```

The prior `TerminalSourceReverseHolder_{B_ASAC}.A` direct attempt shows that the current `B_ASAC` clauses do not produce this upgrade from installed ASAC, legal, donor, first-pulse, or local `L^1_t` source ledgers. The scalar endpoint time-marginal witness

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has unit `L^1_s` mass and violates the uniform `L^p_s` bound for every `p>1`.

Therefore this note closes the residue Liouville theorem for a concrete stronger subclass, while leaving the production theorem `B_ASAC => B_ASAC^RH(p)` as the next genuine route burden.