# MPP DTC.Read Pressure Local Poisson Estimate

## Status

Theorem-facing pressure-readout lemma for the endpoint/readout supplier inside
`PCTP.hard`.

This note proves the local elliptic step in `DTC.Read.Press`.  It does not prove
uniform terminal-tail class membership by itself.  Its output is conditional on
the fixed-cover product-source carrier that the averaged packet is supposed to
supply.

## Setting

Work on the periodic branch `T^3` with zero-mean pressure.  Let
`(B_i',B_i,2B_i)` be one element of the fixed same-fluid readout cover, with
`B_i'` compactly contained in `B_i` and `B_i` compactly contained in `2B_i`.
Let `chi_i` be a smooth cutoff equal to `1` on `B_i` and supported in `2B_i`.

For `0 <= q <= N`, define the localized pressure split on `B_i'` by

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}
=
\partial_a\partial_b(\chi_i u_a u_b).
\tag{DTP.1}
```

Then `h_i` is harmonic on `B_i`.

## Theorem `DTC.Read.Press.local`

Assume the fixed-cover product-source carrier

```math
\mathcal P_{q,\alpha,i}(t)
:=
\|\nabla^q(\chi_i u\otimes u)(t)\|_{C^{0,\alpha}(2B_i)}
<\infty
\tag{DTP.2}
```

for each `0 <= q <= N` and each cover element.  Then

```math
\|\nabla^{q+1}p_i^{loc}(t)\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\mathcal P_{q,\alpha,i}(t).
\tag{DTP.3}
```

Moreover, the harmonic tail satisfies

```math
\|\nabla^{q+1}h_i(t)\|_{L^\infty(B_i')}
\le
C_{q,i}\|u(t)\|_{L^2(T^3)}^2.
\tag{DTP.4}
```

Consequently, on the periodic zero-force branch,

```math
\|\nabla^{q+1}p(t)\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\mathcal P_{q,\alpha,i}(t)
+
C_{q,i}\|u_0\|_{L^2(T^3)}^2.
\tag{DTP.5}
```

## Proof

For the local part, write

```math
\nabla^{q+1}p_i^{loc}
=
T_q\big(\nabla^q(\chi_i u\otimes u)\big),
\tag{DTP.6}
```

where `T_q` is the order-zero Calderon-Zygmund/Schauder pressure operator
obtained by composing `nabla^{q+1}` with
`partial_a partial_b (-Delta)^{-1}`.  Interior Schauder estimates on the fixed
annular pair `B_i' compactly contained in 2B_i` give `(DTP.3)`.

For the tail, `h_i` is harmonic on `B_i` because the cutoff has removed the
local source on that ball.  The kernel for
`\nabla^{q+1}h_i` restricted to `B_i'` is smooth against the distant source
`(1-chi_i)u\otimes u`, with constants depending only on the fixed cover
separation and derivative depth.  Hence

```math
\|\nabla^{q+1}h_i(t)\|_{L^\infty(B_i')}
\le
C_{q,i}\|u(t)\otimes u(t)\|_{L^1(T^3)}
\le
C_{q,i}\|u(t)\|_{L^2(T^3)}^2.
\tag{DTP.7}
```

The periodic zero-force energy identity/inequality gives
`\|u(t)\|_{L^2(T^3)} <= \|u_0\|_{L^2(T^3)}` on every classical interval.  Combining
`(DTP.3)` and `(DTP.4)` proves `(DTP.5)`.

## Corollary `DTC.Read.Press`

Assume `READ.COVER` supplies a finite fixed readout cover with positive lower
scale and that `ATD_m^epsilon` is available on the corresponding shrunken
SCF-good cylinders with depth `m >= N+1`.  The CKN bootstrapping part of
`ATD_m^epsilon` gives, on each cover element, uniform bounds for
`\nabla^r u` through `r <= N+1`.  Since the cover and cutoffs are fixed, Leibniz
and the cutoff bounds give

```math
\sup_{t,i,q\le N}
\|\nabla^q(\chi_i u\otimes u)(t)\|_{C^{0,\alpha}(2B_i)}
<\infty.
\tag{DTP.8}
```

Thus `(DTP.2)` is supplied by `ATD_m^epsilon` on the fixed readout cover.
Consequently the pressure part of the forcing rung

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

has the pointwise pressure readout required by `DTC.A`.

The viscous half of `K_q` is still supplied separately by the `U_{q+2}` readout.

## Boundary

This closes the pressure component of `DTC.Read` on every fixed SCF-good
readout cover where `ATD_m^epsilon` applies at sufficient depth.  It does not
prove that every terminal approach tail has such a cover, and it does not prove
`Field.Read`, `READ.COVER`, `End_NS`, or uniform terminal-tail class membership.
