# MPP Native Trilinear Defect Alignment Split Note

## Status

Follow-up split of the survivor isolated in
`mpp-native-trilinear-defect-domination-direct-attempt-note.md`.

The current open atom is:

```math
\boxed{
NativeTrilinearDefectDomination.A
}
```

or equivalently:

```math
\boxed{
\mu_{\ast}^{sing}=0
}
```

for the singular native positive active source measure relative to all
installed route ledgers.

This note does not discharge that atom.  It decomposes it into its native
coefficient, amplitude, and alignment faces and audits which face is actually
installed.

The coefficient face is audited directly in
`mpp-coeffbound-terminal-strain-direct-attempt-note.md`.  The amplitude and
alignment faces are audited directly in
`mpp-activeamplitude-carleson-direct-attempt-note.md` and
`mpp-alignmentdecorrel-direct-attempt-note.md`.
The alias and product-logic boundary is made explicit in
`mpp-native-trilinear-face-logic-and-alias-audit-note.md`: bare amplitude or
bare alignment control is not enough unless it is lifted to the source-weighted
native packet estimate.

## Native Normal Form

On a terminal active packet at shell `j`, write:

```math
w_j=|w_j|e_j,
\qquad
|e_j|=1.
```

Then the positive strain/source carrier is:

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
\tag{NTD.Split.1}
```

Set, on each selected terminal packet,

```math
A_j:=|w_j|^2,\qquad
B_j:=\left[e_j\cdot S_{<j}^{loc}e_j\right]_+,\qquad
d\mu_j:=\mathbf 1_{Q(P)}\,dxdt.
```

The exact object is the positive product measure

```math
\sum_{P\in\mathcal F_N}\int A_{j_P}B_{j_P}\,d\mu_{j_P}.
\tag{NTD.Split.1a}
```

There is no profile or scale-shape reduction here.  A theorem must control the
displayed product measure itself, or it must control one of the factors in a
norm strong enough to multiply the other factor on the same selected terminal
packets.  In packet language this leaves three proof locations:

```math
\text{positive low-strain coefficient}
\quad\times\quad
\text{active shell square amplitude}
\quad\times\quad
\text{alignment with expanding strain directions}.
```

One sufficient factor package has the form:

```math
\boxed{
CoeffBound.A
+
ActiveAmplitudeCarleson.A
+
AlignmentDecorrel.A
\Longrightarrow
NativeTrilinearDefectDomination.A.
}
\tag{NTD.Split.2}
```

For bare factor estimates this gives the contrapositive frontier split:

```math
\boxed{
\neg NativeTrilinearDefectDomination.A
\Longrightarrow
\neg CoeffBound.A
\ \vee\
\neg ActiveAmplitudeCarleson.A
\ \vee\
\neg AlignmentDecorrel.A.
}
\tag{NTD.Split.3}
```

## Face 1: `CoeffBound.A`

Required theorem:

```math
\boxed{
\lambda_+(S_{<j}^{loc})
\text{ is controlled in a terminal packet coefficient norm chargeable by the
installed route ledgers.}
}
```

One sufficient target version is the active-window bound:

```math
\int_{I(P)}
\|S_{<j_P}^{loc}(t)\|_{L^\infty(Q(P))}\,dt
\le
C\rho_{inst,N}(P)+o_N(1),
\tag{CB.1}
```

or a Carleson coefficient version strong enough to multiply `|w_j|^2` on the
same selected terminal packets.

Installed inputs do not give this.  Energy/enstrophy gives quadratic global
control, Calderon-Zygmund gives finite-`p` strain control, and pressure
suppliers give legal elliptic response estimates.  None supplies an
`L^1_tL^\infty_x` or Carleson coefficient bound for the selected terminal
low-strain factor.

Verdict:

```math
\boxed{
CoeffBound.A\ \text{is open.}
}
```

## Face 2: `ActiveAmplitudeCarleson.A`

Required theorem:

```math
\boxed{
|w_j|^2
\text{ on active terminal windows is Carleson/chargeable by installed
same-fluid route ledgers.}
}
```

This is the active-square, square-source, and amplitude-gain face of the same
problem.  Existing audits show that the installed route does not prove the
needed same-window domination: the terminal bad windows are selected precisely
where the active shell amplitude can survive after ordinary energy and
dissipation ledgers have already been spent.

A sufficient theorem would have to prove a same-carrier estimate such as:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)} |w_{j_P}|^2\,dxdt
\le
C\rho_{inst,N}(\mathcal F_N)+o_N(1)
```

in the exact terminal packet topology used by the source carrier.  The current
route does not install that theorem.

Verdict:

```math
\boxed{
ActiveAmplitudeCarleson.A\ \text{is open.}
}
```

## Face 3: `AlignmentDecorrel.A`

Required theorem:

```math
\boxed{
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
\text{ loses terminal mass on the active windows after conditioning on the
same-fluid packet.}
}
```

Equivalently, the active shell direction must not retain positive terminal
alignment with expanding eigendirections of the low strain.

This is the strain-alignment, vorticity-direction, pressure-vortex, helical,
anti-Beltrami, and selector-coherence face.  Incompressibility only gives
trace-free strain.  A trace-free symmetric matrix can still have expanding
directions, and the active vector can align with them.  Finite-band structure
does not remove that spatial alignment after positive-part extraction.

The installed route therefore lacks a theorem of the form:

```math
\int_{Q(P)}
|w_{j_P}|^2
\left[
e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}
\right]_+
\,dxdt
\le
o_N(1)+C\rho_{inst,N}(P)
```

from alignment decorrelation alone.

Verdict:

```math
\boxed{
AlignmentDecorrel.A\ \text{is open.}
}
```

## No Hidden Fourth Face

Formula `(NTD.Split.1a)` is native to the surviving term itself.  Once the
source pulse has been reduced to the positive product measure:

```math
\sum_{P\in\mathcal F_N}\int A_{j_P}B_{j_P}\,d\mu_{j_P},
```

an additional argument has to do exactly one of the following:

1. bound the coefficient factor `B_j` in a terminal packet norm that can
   multiply the active square measure;
2. bound the active square measure `A_j\,d\mu_j` with the coefficient factor
   retained on the same selected packets;
3. prove source-weighted loss of the positive alignment factor, i.e. a direct
   estimate of `\int A_jB_j\,d\mu_j`.

Pressure, commutators, cutoffs, shell bookkeeping, and same-fluid transport can
still help only by supplying one of these displayed estimates or by changing
the reduction to a different carrier.  They are not a fourth independent
estimate for the normalized positive trilinear carrier.

## Result

The current live source-pulse survivor is sharpened to:

```math
\boxed{
CoeffBound.A
\quad\vee\quad
ActiveAmplitudeCarleson.A
\quad\vee\quad
AlignmentDecorrel.A
}
```

as missing theorem faces whose conjunction would discharge:

```math
NativeTrilinearDefectDomination.A.
```

None of the three faces is installed.  The route is therefore still blocked at
the singular native positive trilinear defect, now with the coefficient,
amplitude, and alignment burdens separated.

## Promotion Rule

This note is a frontier split, not a theorem discharge.  It may be archived as
proof-structure progress.  It may not be promoted to closure of
`SourcePulseExclusion.A`, `PCTP.hard / TTU.A`, or the periodic Navier-Stokes
claim unless one of the route surfaces later installs theorem-grade estimates
for the missing coefficient, amplitude, and alignment inputs sufficient for
`(NTD.Split.2)`.
