# MPP TerminalPressureHessianNoSustain.A Attempt

Date: 2026-05-17

Status: direct pressure-Hessian attempt; no unconditional proof.  The pressure
Poisson law gives elliptic recovery and partner structure, but no one-sided
sign depletion on selected terminal packets.

Purpose: test the new pressure-sustain atom isolated by
`mpp-terminal-eigenframe-turnover-charge-direct-attempt-20260517.md`.

## 0. Target

The desired theorem is:

```math
\boxed{
TerminalPressureHessianNoSustain.A
}
```

For every bounded-overlap retained same-fluid terminal packet family
`\mathcal F_N`, the anisotropic pressure term in the near-band strain
coefficient should satisfy

```math
\boxed{
\sum_{P\in\mathcal F_N}
E_P^\#\tau_P
\int_{I_P}
\left[
-n_P\cdot P^{loc}_{j_P,L}\nabla^2p\,n_P
\right]_{sustain,+}\,dt
\le
\mathrm{Legal}_N(\mathcal F_N)+o_N(1).
}
\tag{PHNS.1}
```

The subscript `sustain,+` means the part that keeps the near-band positive
strain coefficient from turning over.  A proof of `(PHNS.1)` would feed

```math
TerminalPressureHessianNoSustain.A
\Longrightarrow
TerminalEigenframeTurnoverCharge.A
```

after the heat, frame, and burst pieces from the eigenframe-turnover note are
paid.

## 1. Pressure Poisson expansion

For incompressible Navier--Stokes,

```math
-\Delta p=\partial_i\partial_j(u_i u_j)
=\operatorname{tr}(\nabla u\,\nabla u).
\tag{PHNS.2}
```

Equivalently,

```math
\nabla^2p
=
\mathcal R\mathcal R\bigl(\nabla u\otimes\nabla u\bigr),
\tag{PHNS.3}
```

up to harmless tensor contractions.  After localizing and projecting to the
near band,

```math
P^{loc}_{j,L}\nabla^2p
=
\mathcal P_{near}^{loc}
\left[
\mathcal R\mathcal R
\bigl((S+\Omega)\otimes(S+\Omega)\bigr)
\right]
+\mathrm{HarmonicTail}
+\mathrm{CutoffComm}.
\tag{PHNS.4}
```

The harmonic tail and cutoff commutators are pressure ledgers.  The analytic
question is the principal local quadratic Riesz transform term.

## 2. Absolute elliptic estimate returns to source strength

The direct Calderon--Zygmund estimate gives

```math
\|P^{loc}_{j,L}\nabla^2p\|_\infty
\le C_{\mathrm{PH}}
\sum_{|m-j|\le L_0}
\|\nabla u_m\|_\infty\|\nabla u_{\le m+L_0}\|_\infty
+\mathrm{tails}.
\tag{PHNS.5}
```

When tested against `E_P^\#\tau_P`, this produces

```math
E_P^\#\tau_P
\|\nabla u\|_\infty^2.
\tag{PHNS.6}
```

On terminal packets `(PHNS.6)` is the active-square/source reserve scale.  It
does not sit below the desired legal ledger.  Thus an absolute pressure bound
proves only a Carleson-strength sufficient condition, not `(PHNS.1)`.

## 3. Trace and incompressibility do not give the sign

Taking the trace of the strain equation couples pressure to
`tr(S^2+\Omega^2)`, but `(PHNS.1)` needs a selected directional component:

```math
n_P\cdot\nabla^2p\,n_P.
\tag{PHNS.7}
```

The trace constraint has no sign implication for `(PHNS.7)`.  A trace-free
strain may have a positive extensional direction:

```math
S=\operatorname{diag}(2a,-a,-a),
\qquad n=e_1.
\tag{PHNS.8}
```

The pressure Hessian can balance the quadratic local strain terms in the
directional strain equation.  This local affine jet is not a finite-energy
global solution, but it proves the pointwise pressure law does not forbid
positive directional sustain.

So any proof must use global/localized pressure partner structure, not a
pointwise sign.

## 4. Signed partner attempt

The pressure source in `(PHNS.4)` is quadratic.  Before terminal selection, one
can pair pressure contributions through symmetric bilinear interactions and
Riesz-transform cancellation.  The hoped-for terminal proof is:

```text
principal pressure sustain on P
has a pressure partner on another packet P'
with opposite sign or legal exit.
```

After inserting the live operations,

```text
one-sided terminal weights,
physical cutoffs,
near-band projection,
same-fluid packet selection,
positive sustain selection,
```

the paired pressure contribution becomes

```math
W_P\,\Pi(P)
-
W_{P'}\,\Pi(P')
+R_{cut/proj/tail}.
\tag{PHNS.9}
```

The unweighted cancellation controls only the signed closed pressure graph.
The one-sided positive selected remainder in `(PHNS.9)` is the same structural
defect as the weighted lifted source-current:

```text
partner retained -> pair-weight defect,
partner exits -> legal/off-family pressure ledger,
partner is an internal donor sink -> no-free-sink/donor depletion,
partner Zeno-refills -> temporal anti-atom or residue rigidity.
```

Thus the signed pressure-partner route closes only under the same donor/signed
source conditions already isolated for the native source wall.

## 5. Harmonic pressure tail test

The harmonic/localization pressure piece can be written as boundary data on a
collar.  If the collar flux is small or retained in the legal pressure ledger,
it is harmless.  If it is not small, it represents off-packet pressure work
feeding the selected terminal packet.

That off-packet pressure work is not lower than the source wall.  To legalize
it one needs either:

```text
pressure collar summability at the selected terminal weights,
```

or

```text
a same-fluid source/donor partner charge for the collar work.
```

The first is an active pressure-source Carleson estimate.  The second returns
to the no-free-sink donor route.

## 6. Conditional reduction

The direct pressure-Hessian route proves only:

```math
\boxed{
\begin{aligned}
&AnisotropicPressurePartnerCharge.A\\
&\quad+
TerminalPressureCollarLegal.A\\
&\quad+
TerminalDonorNoFreeSink.A\\
&\Longrightarrow TerminalPressureHessianNoSustain.A.
\end{aligned}
}
\tag{PHNS.10}
```

Here:

```text
AnisotropicPressurePartnerCharge.A
```

is the terminal weighted signed-partner theorem for the principal pressure
quadratic.

```text
TerminalPressureCollarLegal.A
```

pays the harmonic/collar part at the same one-sided terminal weights.

```text
TerminalDonorNoFreeSink.A
```

pays internal donor sinks or terminal Zeno refill branches produced by the
pressure partner graph.

## 7. Verdict

`TerminalPressureHessianNoSustain.A` is not proved by the pressure Poisson law,
Calderon--Zygmund estimates, trace-free strain, or local affine normalization.

The pressure route is still potentially real, but the theorem it needs is a
signed anisotropic pressure-partner theorem at the selected terminal weights.
At the present resolution that is another face of:

```math
\boxed{
OneSidedNearBandMaterialStrainBV.A
}
```

and of the signed no-free-sink/source-current wall.  Absolute pressure control
returns to active-square Carleson strength; signed pressure control returns to
terminal partner retention, legal exit, donor depletion, or temporal anti-atom
rigidity.

The partner-graph normal form is made explicit in
`mpp-pressure-hessian-partner-graph-normal-form-20260517.md`.  It corrects the
naive signed-partner picture: pressure supplies oscillatory Calderon--Zygmund
cancellation partners, not bare antisymmetric dyadic counter-edges.
