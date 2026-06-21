# MPP TerminalWeightedNoFreeSink.A Independent Attempt

Date: 2026-05-17

Status: independent no-free-sink attempt after the source-weighted angular
depletion pass; finite signed/donor cases close, terminal Zeno refill remains
the only non-legal sink.

Purpose: test whether the signed no-free-sink theorem isolated in
`mpp-sourceweighted-angular-depletion-independent-theorem-pass-20260517.md`
can be proved without importing `ScaleCriticalTreeCarleson.A` or
`ZenoSourceResidueRigidity.A`.

## 0. Target

After ASAC, projected-cutoff, boundary, and endpoint ledgers are removed, the
live one-sided near-band source-current is

```math
\mathcal S_{near}
=
\sum_{P\in\mathcal F_N}
\omega_P\tau_P
\int_{I_P}
Source_P^{loc}(t)b_P^{near}(t)\,dt.
\tag{TWNFS-ind.1}
```

The independent theorem asks for:

```math
\boxed{
|\mathcal S_{near}|
\le
\mathrm{Legal}^{signed}_N(\mathcal F_N)+o_N(1)
}
\tag{TWNFS-ind.2}
```

without spending the square-source / Carleson theorem and without assuming the
Zeno source-residue rigidity theorem that this route is meant to help produce.

## 1. Edge partition

For each selected positive terminal source-current edge

```math
e:P^-\to P,
\qquad P\in\mathcal F_N,
```

let `e^*` be its signed partner in the bare dyadic exchange graph.  After the
live terminal operations, exactly one of the following happens:

```text
1. retained partner: e^* stays in the same usable terminal signed ledger;
2. legal exit: e^* exits through boundary / cutoff / pressure / off-family loss;
3. finite donor tree: e^* is an internal same-fluid donor sink whose ancestry
   reaches a fixed preterminal entrance scale;
4. terminal Zeno refill: e^* is an internal donor sink whose refill ancestry has
   shrinking heat scales and no fixed entrance leaf.
```

This is the useful partition because the first three cases are already
theorem-paid inside installed inputs.

## 2. Retained partners are paid

Before terminal weights, the dyadic exchange is antisymmetric:

```math
J_e+J_{e^*}=0.
```

After one-sided terminal weights, the mismatch is a pair-weight defect:

```math
W_PJ_e+W_{P^-}J_{e^*}
=(W_P-W_{P^-})J_e.
\tag{TWNFS-ind.3}
```

The positive part of `(TWNFS-ind.3)` is exactly the pair-weight defect paid by
the post-ASAC one-sided comparison:

```math
ASAC.A
\Longrightarrow
PositivePairWeightDefectCharge.A.
```

So retained signed partners are not an independent obstruction after ASAC.

## 3. Legal exits are paid

If the signed partner leaves through a named terminal legal channel, it is paid
by the existing ledgers:

```text
ProjectedCutoffLedger.A,
LegalBoundaryLedger.A,
pressure / collar / off-family legal-loss ledgers.
```

This spends only residues assigned to those named ledgers: localization,
projection, cutoff, harmonic-pressure, collar, off-family, and boundary terms
must enter through an estimate of the form

```math
\sum_{\mathrm{legal\ exits}}\mathrm{Loss}_{exit}
\le
Legal_N+o_N(1).
```

Absolute estimates are not being used to pay the principal source-current; only
the already named exit ledgers are spent.

## 4. Finite donor trees are paid

For an internal donor sink, attach the legal same-fluid refill tree to the donor
packet.  `LocalDonorBalance.A` gives the finite-tree identity:

```math
\sum_{e\in\mathcal T_L^{int}}\pi(e)
\le C_{\mathrm{TWNFS}}
\sum_{v\in\partial\mathcal T_L}E(v;t_v^-)
+\sum_{v\in\mathcal T_L}\ell(v)
+\operatorname{Boundary}_{overlap}(\mathcal T_L).
\tag{TWNFS-ind.4}
```

If every branch reaches a fixed preterminal entrance scale, then
`EntranceLeafDecay.A` gives

```math
\sum_{v\in\partial\mathcal T_L}E(v;t_v^-)=o_N(1).
\tag{TWNFS-ind.5}
```

The legal losses and overlap boundary are summable by the installed packet
ledgers.  Thus finite donor sinks close without any new theorem.

## 5. Terminal Zeno refill is the only hard case

The only remaining case is a donor-refill branch with shrinking heat scales and
no fixed entrance leaf:

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
\tag{TWNFS-ind.6}
```

Finite donor-balance telescoping does not eliminate this branch.  It produces a
terminal source-residue object carrying the unpaid same-fluid source-current.

There are exactly three noncircular ways to kill it:

```math
\boxed{TerminalSourceReverseHolder.A}
```

in the concrete form

```math
\|\,\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,\|_{L_s^p((-1,0))}
\le C_R,\qquad p>1,
\tag{TWNFS-ind.7}
```

or

```math
\boxed{ZenoBoundedClass_{\mathcal B}.A+ZenoResidueLiouville_{\mathcal B}.A}
```

for a produced explicit rigid class `\mathcal B`, or

```math
\boxed{PositiveActiveCarlesonReserve.A}
```

which pays the whole source-current by a scale-critical active reserve before
the Zeno branch has to be rigidified.

The first is the reverse-Holder source-control door.  The second is the rigid
class door.  The third is the active-reserve door.

## 6. Direct reverse-Holder test

The installed Zeno source marginal has only

```math
\int_{-1}^{0}
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds
\le C_R.
\tag{TWNFS-ind.8}
```

The terminal-layer profile

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
\tag{TWNFS-ind.9}
```

has bounded `L^1_s` mass, has no uniform `L^p_s` bound for `p>1`, and converges
to a terminal atom.  Same-fluid ancestry identifies the source but does not
thicken it in time.  Differentiating the source carrier returns active-square
evolution, pressure/source-current terms, and the positive localized remainder.

So the direct reverse-Holder proof is not installed by current inputs.

## 7. Direct active-reserve test

Paying the terminal Zeno refill by active reserve would require a scale-critical
Carleson estimate on the same selected source-current packet family:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S^{loc}_{<j_P}e_{j_P}\right]_+
\le
\mathrm{Reserve}_N(\mathcal F_N)+o_N(1).
\tag{TWNFS-ind.10}
```

Raw energy and local energy do not give this reserve.  Cauchy/Young rewrites
the source-current as the active-square object that the estimate must control.
Diffuse legal parentage can spread the positive source over many donors with
vanishing raw quadratic donor cost.  Thus this door is exactly
`PositiveActiveCarlesonReserve.A`, not an installed lower theorem.

## 8. Verdict

The independent no-free-sink attempt proves:

```math
\boxed{
\begin{aligned}
&ASAC.A
+ProjectedCutoffLedger.A
+LegalBoundaryLedger.A\\
&\quad+
LocalDonorBalance.A
+EntranceLeafDecay.A\\
&\quad+
TerminalZenoRefillNoFreeSink.A_{\mathrm{ind}}\\
&\Longrightarrow
TerminalWeightedNoFreeSink.A_{\mathrm{ind}}.
\end{aligned}
}
\tag{TWNFS-ind.11}
```

The exact open atom is:

```math
\boxed{
TerminalZenoRefillNoFreeSink.A_{\mathrm{ind}}.
}
```

It is equivalent, at current route resolution, to one of:

```text
TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A,
a produced rigid Zeno residue class plus residue Liouville,
or PositiveActiveCarlesonReserve.A on the same selected source-current packets.
```

So the new independent theorem work does not close the hinge yet.  It does
sharpen the hinge: the angular-mixing route is blocked only by terminal Zeno
refill after retained partners, legal exits, and finite donor trees are paid.

## 9. May 19 proceed resolution

The continuation pass is recorded in
`mpp-terminal-zeno-refill-proceed-resolution-20260519.md`.

It checks the direct reverse-Holder route, the `B_ASAC` rigid-subclass route,
and the May 19 shared-participation CM classification. The result is:

```text
TerminalZenoRefillNoFreeSink.A_ind is not closed as a forward positive-supplier
theorem from installed inputs. The surviving B_ASAC^closed terminal atom is
now consumed on the CM side as incoming flux, paid exit, or a Part/Field
face witness. Further forward PRD supplier progress requires an external
new-production theorem forcing time thickness, no-incoming flux, active reserve,
pressure time-face spread, or a rigid time-face anti-atom subclass.
```
