# UniformTemporalDissipationIntegrability_p.A attempt

## Status

Direct attack on the bypass-local temporal anti-atom supplier for the SCF
carrier.

Verdict:

```math
\boxed{
UniformTemporalDissipationIntegrability_p.A
\text{ is not produced by the installed energy/local-energy ledgers.}
}
```

It reduces to a reverse-Hölder or scale-critical square-reserve theorem for the
dissipation carrier, hence to the same direct source-wall primitive:

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or}\quad
\text{scale-normalized }\nu_{SCF}\text{ Carleson control.}
}
```

## Source anchors

| Surface | Role |
|---|---|
| `mpp-temporal-nonatomic-scf-carrier-audit-20260505.md` | reduces `TemporalNonAtomicSCF.A` to the dissipation time marginal |
| `mcp-nu_scf-scale-normalized-carleson-upper-estimate-obstruction-scale-normalized-carleson-upper-estimate-for-nu_scf-95c4eb720a.md` | missing scale-normalized `\nu_{SCF}` Carleson control |
| `mpp-square-reserve-evolution-sufficiency-and-temporal-fork-20260505.md` | direct fork through `SquareReserveEvolution.A` |
| Seregin reverse-Hölder paper | external evidence that reverse-Hölder inputs require an added class/majorant, not arbitrary suitable weak compactness |

External reference checked:

```text
G. A. Seregin, "On a reverse Hölder inequality for a class of suitable weak
solutions to the Navier-Stokes equations", Zap. Nauchn. Sem. POMI 362
(2008), 325-336; J. Math. Sci. 159 (2009), 573-579.
https://www.mathnet.ru/eng/znsl2201
```

## Target

For the rescaled bad-scale sequence, define the local dissipation time
marginal

```math
d_{n,R}(s)
:=
\int_{B_R}|\nabla u^{(n)}(y,s)|^2\,dy.
```

The target is:

```math
UniformTemporalDissipationIntegrability_p.A:
\quad
\|d_{n,R}\|_{L_s^p((-1,0))}\le C_R
\qquad
\text{for some }p>1.
```

This implies

```math
\mu_{D,*}(B_R\times\{0\})=0
```

and closes the dissipation piece of `TemporalNonAtomicSCF.A`.

## Installed input

The energy inequality gives only

```math
\|d_{n,R}\|_{L_s^1((-1,0))}\le C_R.
```

The local energy inequality gives a balance law, but the flux and pressure
terms on the boundary of the localized cylinder are exactly the source/carrier
terms already isolated in the source-wall route.  It does not supply a
uniform `L^p_s`, `p>1`, estimate for `d_{n,R}` on selected terminal windows.

## Sharp obstruction

At the available level, terminal-layer concentration is possible:

```math
d_{n,R}(s)
=
c_0 n\,\mathbf 1_{(-1/n,0]}(s).
```

Then

```math
\|d_{n,R}\|_{L^1_s}=c_0,
```

but for every `p>1`,

```math
\|d_{n,R}\|_{L^p_s}=c_0 n^{1-1/p}\to\infty.
```

The measures `d_{n,R}(s)ds` converge weak-* to `c_0\delta_0`.  This is exactly
the terminal atom that `TemporalNonAtomicSCF.A` must rule out.

## Reverse-Hölder route

A reverse-Hölder theorem for the local gradient would be sufficient.  The
needed route shape is:

```math
\left(\fint_{I}|d_{n,R}(s)|^pds\right)^{1/p}
\le
C\fint_{\Lambda I} d_{n,\Lambda R}(s)ds
+
Loss_{legal}.
```

However, no installed surface proves this for the bad-scale extracted class.
External reverse-Hölder results for Navier-Stokes apply to special classes or
under additional scale-invariant majorants.  Producing such a majorant here is
exactly a rigid-class or square-reserve theorem, not a free consequence of
local suitability.

## Relation to square reserve

A superlinear temporal bound for `d_{n,R}` is a scale-normalized square bound
on the dissipation carrier.  In the dyadic packet language it takes the form

```math
\int_I
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\le
o_N(1)+Loss_{legal}.
```

This is precisely the square-reserve / active-square Carleson control already
named by the source-wall primitive.

## Strongest valid reduction

The valid implication chain is:

```math
SquareReserveEvolution.A
\Longrightarrow
\text{scale-normalized }\nu_{SCF}\text{ Carleson control}
\Longrightarrow
UniformTemporalDissipationIntegrability_p.A
\Longrightarrow
TemporalNonAtomicSCF.A.
```

No installed theorem supplies the first arrow.

## Verdict

The temporal anti-atom branch for the SCF carrier is not independent of the
direct square-reserve branch.  The bypass frontier collapses to:

```math
\boxed{
SquareReserveEvolution.A
}
```

or an equivalent scale-normalized dissipation/SCF Carleson theorem.
