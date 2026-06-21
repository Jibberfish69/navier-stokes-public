---
ns_viewer:
  theorem_id: residual-refill-ledger-and-spine-consolidation-20260611
  status: residual-refill-ledger-installed-spine-consolidated
  proof_role: forward_positive_residual_refill_ledger_and_cm_obstruction_routing
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Builds the residual refill ledger requested after the raw LPAS shear counterexample. The ledger measures positive same-fluid nonlinear refill after heat decay, through-flow, legal losses, and paid dissipation are removed. It reorganizes the cone/tower/drain, raw LPAS, square-source, amplitude-normalization, direct active-square, and source-pulse attempts around one spine: residual LPAS/CTS is the live forward theorem; a surviving residual source-balanced pulse is the only obstruction to classify. Generic no-carrier or point-object cases remain Field-window support. An admitted residual annular supplier has already paid carrier/selection, so its CM failures are Part or Field."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-direct-lpas-raw-active-square-false-shear-counterexample-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-forward-positive-cone-tower-active-square-exhaustion-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-active-shell-square-payment-source-no-pulse-collapse-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-source-balanced-active-pulse-exclusion-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-local-positive-precauchy-source-carleson-direct-attempt-note.md
  downstream_consequence: "Do not restart the 214-attempt active-square frontier under raw wall, volume, drain, tower, amplitude, square-source, direct Carleson, or structural-cancellation labels. All of them are support or aliases unless they prove residual source-balanced LPAS/CTS, a parent/donor depletion theorem, or a rigid source-residue contradiction. A surviving residual pulse is not a hidden in-class continuation branch. It must either fail admission/no-carrier on the generic Pack boundary or, after annular admission, exit through Part or Field under the CM witness surfaces."
---

# MPP Residual Refill Ledger And Spine Consolidation

Date: 2026-06-11

Status: residual ledger installed; active-square spine consolidated.

## 0. The Spine Being Preserved

The working spine is:

```text
build the residual refill ledger,
prove scale-critical residual source refill cannot retain a nonzero terminal
limsup on heat-scale cone windows,
and only for the surviving residual pulse use CM to say it is not a hidden
in-class continuation.
```

This note makes that precise.

Raw high-frequency size is not the dangerous object.  The exact shear
counterexample in
`mpp-direct-lpas-raw-active-square-false-shear-counterexample-20260611.md`
shows that an exact heat-decaying mode can make the raw active-square bill
large while the nonlinear source is zero.

The dangerous object is the part of the high-frequency active load that is
being positively refilled by the same fluid after exact heat decay,
through-flow, legal losses, and already-paid dissipation are removed.

## 1. Shell Energy And Source Refill

Let

```math
u_j=\Delta_j u,
\qquad
E_j(t)=2^{2j}\|u_j(t)\|_2^2,
\qquad
D_j(t)=2^{4j}\|u_j(t)\|_2^2.
```

Apply the Leray-projected dyadic shell equation:

```math
\partial_t u_j-\nu\Delta u_j
=
-\Delta_j\mathbb P\nabla\cdot(u\otimes u).
```

The `H^1` shell energy obeys the scalar inequality

```math
{1\over2}{d\over dt}E_j(t)+c_0\nu D_j(t)
\le
\Phi_j^+(t),
\tag{1}
```

where

```math
\Phi_j(t)
:=
-2^{2j}
\left\langle
\Delta_j\mathbb P\nabla\cdot(u\otimes u),
u_j
\right\rangle,
\qquad
\Phi_j^+(t)=\max\{\Phi_j(t),0\}.
```

The negative part of `\Phi_j` helps drain the shell.  The positive part is the
only nonlinear term that can refill the active shell after heat decay.

Solving `(1)` on an interval beginning at `t_0<T_*` gives

```math
E_j(t)
\le
e^{-c_0\nu2^{2j}(t-t_0)}E_j(t_0)
+
C\int_{t_0}^t
e^{-c_0\nu2^{2j}(t-s)}
\Phi_j^+(s)\,ds.
\tag{2}
```

This is the residual refill ledger.

Define the heat-descendant load

```math
H_j(t;t_0)
:=
e^{-c_0\nu2^{2j}(t-t_0)}E_j(t_0),
```

and the positive nonlinear refill load

```math
R_j^{src,+}(t;t_0)
:=
\int_{t_0}^t
e^{-c_0\nu2^{2j}(t-s)}
\Phi_j^+(s)\,ds.
```

Then

```math
E_j(t)
\le
H_j(t;t_0)+C R_j^{src,+}(t;t_0).
\tag{3}
```

In `D_j` currency:

```math
D_j(t)
\le
2^{2j}H_j(t;t_0)
+C\,D_j^{res}(t;t_0),
\qquad
D_j^{res}(t;t_0):=2^{2j}R_j^{src,+}(t;t_0).
\tag{4}
```

`D_j^{res}` is the residual refill load.  It vanishes for exact heat decay with
no nonlinear source.

## 2. The Shear Counterexample Is Removed

For the exact shear solution

```math
u(x,t)
=
\left[
a e^{-\nu2^{2k}t}\sin(2^k x_2)
+
b e^{-\nu2^{2j}t}\sin(2^j x_2)
\right]e_1,
```

one has

```math
(u\cdot\nabla)u=0,
\qquad
\Phi_j(t)=0,
\qquad
D_j^{res}(t;t_0)=0.
```

So the residual ledger keeps exactly the distinction that raw LPAS lost:
large heat-decaying shell size is not positive same-fluid refill.

## 3. Residual LPAS / CTS

Keep the lower-prefix weight from `lower-prefix-active-square-theorem.md`:

```math
\mathcal P_j^\downarrow(t)
=
\sum_{k\le j-C_1}E_k(t).
```

The live forward theorem is the residual version:

```math
\boxed{
\int_0^T
\sum_{j\ge N}
\mathcal P_j^\downarrow(t)
2^{-j}
\left(D_j^{res}(t;t_0(j,t))\right)^2
dt
\le
\varepsilon\nu\int_0^TD_N(t)\,dt
+C_*2^{-2\delta N}.
}
\tag{R-LPAS}
```

The continuum form is the residual CTS/FCTS estimate obtained by replacing the
raw active stress square with the same residual refill density.

The entrance time `t_0(j,t)` is the last legal entrance/cutoff time for the
selected packet or shell window.  Changing `t_0` only changes the heat-descendant
piece and legal-loss ledger.  It does not change the residual object:
positive nonlinear refill after heat decay has been removed.

## 4. What Counts As Support

The following branches are now support surfaces:

```text
whole-cone wall/volume accounting,
moving-wall flux,
donor drain,
fast-collapse clock comparison,
derivative-tower shape bill,
raw LPAS,
raw square-source control,
raw amplitude normalization,
direct active-square Carleson,
weighted structural cancellation.
```

They matter only to the extent that they prove `(R-LPAS)`, residual CTS/FCTS,
or a stronger residual source depletion theorem.

The exact routing collapse is:

```math
\text{each listed support branch must prove }(R\text{-LPAS}),
\text{ residual CTS/FCTS, or a stronger residual source-depletion theorem.}
\tag{5}
```

This is not an identity of estimates. A branch remains support until it proves
one of those residual targets.

The checked notes supporting this collapse are:

```text
mpp-active-shell-square-payment-source-no-pulse-collapse-20260611.md
mpp-local-positive-precauchy-source-carleson-direct-attempt-note.md
mpp-positive-source-depletion-coherence-bridge-note.md
mpp-reverseholder-parent-concentration-direct-attempt-note.md
```

## 5. Failure Of Residual LPAS Selects One Object

Suppose `(R-LPAS)` fails after heat descendants, through-flow, legal losses,
finite reserves, and paid dissipation are removed.

Then there are terminal heat-scale windows

```math
I_m,
\qquad
c_h2^{-2j_m}\le |I_m|\le C_h2^{-2j_m},
\qquad
j_m\to\infty,
\qquad
t_m\uparrow T_*,
```

such that

```math
\int_{I_m}
\mathcal P_{j_m}^\downarrow(t)
2^{-j_m}
\left(D_{j_m}^{res}(t;t_0)\right)^2dt
```

has nonzero selected normalized mass.

This is the source-balanced active pulse from
`mpp-source-balanced-active-pulse-exclusion-reentry-20260609.md`:

```math
P_m=(Q_m^\Phi,j_m,I_m),
\qquad
\text{nonzero native positive active source mass.}
```

So a residual LPAS failure does not create many different children.  It creates
one object: a terminal source-balanced pulse.

## 6. The Forward-Positive Problem And The CM Use Are Separate

Forward-positive work attempts to prove `(R-LPAS)` or an equivalent theorem:

```math
\text{TerminalSourceCoherence.A},
\qquad
\text{PositiveSourceDepletion.A},
\qquad
\text{ScaleCriticalTreeCarleson.A},
\qquad
\text{TwoTowerDonorDepletion.A},
```

or the ancestry package

```math
\text{ParentConcentrationOrDiffuseCharge.A}
+\text{BackwardDrainFunctional.A},
```

or

```math
\text{ParentConcentrationOrDiffuseCharge.A}
+\text{BoundedAncestryClass.A}
+\text{SourceResidueLiouville.A}.
```

Those are positive supplier routes.  The repo records them as uninstalled from
current finite-energy, local-energy, pressure/cutoff, raw orthogonality,
same-fluid transport, and first-moment dissipation inputs.

CM enters only after a genuine residual pulse survives the forward ledger.
Then the source-pulse is not treated as a hidden smoothness route.  It is tested
as a witness object.

The existing generic no-carrier CM placement is:

```math
\text{positive-radius retained ancestry}
\Longrightarrow
\text{payment / incoming flux / legal exit / finite CM Part/Field exit,}
```

by `NoPersistentUnpaidPositiveRadiusAncestry.A`, and

```math
\text{no selected same-solution positive-radius carrier for the terminal record}
\Longrightarrow
\neg Pack_Q
```

by the terminal Zeno / finite-failure witness surfaces.  The bare facts
`r_m\downarrow0` and `t_m\uparrow T_*` do not by themselves spend Pack failure;
they identify the terminal schedule whose carrier, selection, and readout
hypotheses must be tested.

Thus the residual pulse has this branch grammar:

```math
\boxed{
\text{Residual LPAS / residual CTS pass}
\quad\vee\quad
\text{terminal residual source-balanced pulse}.
}
\tag{6}
```

This is not a claim that raw high-frequency size cannot exist.  It is the
claim that positive same-fluid nonlinear refill into the shrinking cone either
pays the residual forward ledger or becomes the single residual obstruction for
CM testing.

For a generic point-object or no-carrier endpoint, the obstruction is Field-window support.
For the annular supplier boundary, the admitted object is different: it is the
surrounding positive-radius same-solution annular witness.  Once that witness is
selected, carried on a same-solution positive-radius annular tail, and
readout-complete, carrier is paid.  Its finite nonsmooth CM failures are

```math
\neg Part_{N,Q_{ann}}
\quad\text{or}\quad
Part_{N,Q_{ann}}\wedge\forall r>0\,\neg Field_{N,r,Q_{ann}}.
```

## 7. Reorganization Rule For The Old Attempts

Read the 214 active-square / source-wall theorem attempts through this rule:

```text
If a note controls only raw D_j, raw wall flux, raw cone volume, raw global
drain, bare derivative-tower size, or heat-decaying shell amplitude, it is
support only.

If a note proves a bound on D_j^{res}, positive pre-Cauchy source mass,
scale-normalized parent depletion, terminal source coherence, or source-residue
Liouville, it is on the live spine.

If a note produces a surviving terminal residual pulse after legal losses and
heat descendants are removed, it is not a new forward-positive child.  It is the
single residual CM obstruction: Field-window support before admission or no-carrier, and
Part/Field after annular admission.
```

This prevents the old frontier from respawning the same object under a new
label.
