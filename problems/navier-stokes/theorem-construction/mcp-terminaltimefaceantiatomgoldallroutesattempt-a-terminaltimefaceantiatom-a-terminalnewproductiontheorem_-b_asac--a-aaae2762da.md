# TerminalTimeFaceAntiAtom.A Forward-Gold All-Routes Attempt

## Target

Try the forward/gold theorem:

```text
TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A
```

Forward-gold meaning:

```text
The terminal time-face source atom never appears as a retained B_ASAC source-residue object.
```

The obstruction to kill is the terminal layer

```math
g_m(s)=\frac{a}{\tau_m}1_{(-\tau_m,0]}(s),\qquad \tau_m\downarrow0,
```

with

```math
\int_{-\tau_m}^0 g_m(s)\,ds=a>0,
```

and, for every `p>1`,

```math
\|g_m\|_{L^p(-1,0)}=a\tau_m^{1/p-1}\to\infty.
```

The CM contrapositive route has already consumed this branch. This note asks for the stronger forward theorem that prevents the branch from arising.

## Route 1: terminal time-thickness modulus

Desired statement:

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

Attempt:

The installed source control gives only finite terminal source mass:

```math
\int_{-1}^{0}\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}ds\le C_R.
```

Finite `L^1_s` mass does not imply absolute continuity uniformly in `m`. The terminal layer satisfies the same `L^1_s` bound but violates every candidate modulus:

```math
\mu_m^{src,+}(B_R\times[-\tau_m,0])=a.
```

No monotone `\omega_R(\varepsilon)\to0` can dominate this along `\varepsilon=\tau_m`.

Verdict:

```text
TerminalThicknessModulus.A is not proved from installed inputs.
```

It reduces to a genuinely stronger time-spreading estimate.

## Route 2: super-L1 / reverse Holder temporal integrability

Desired statement:

```math
\left\|\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\right\|_{L^p_s(-1,0)}\le C_R,
\qquad p>1.
```

Attempt:

If this estimate were installed, Holder would give the desired time-thickness modulus:

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p}.
```

So this route would close the gold theorem.

But the current installed controls give only `L^1_s` source mass, local energy, finite source measure, and selected source bookkeeping. None gives uniform `p>1` temporal integrability for the selected positive source marginal.

The terminal layer is the exact countermodel to any attempted derivation from `L^1_s` alone:

```math
\|g_m\|_{L^p}=a\tau_m^{1/p-1}\to\infty.
```

Verdict:

```text
UniformTemporalSourceIntegrability_{p,B_ASAC}.A is sufficient but not proved.
```

## Route 3: dissipation/source tether plus terminal absolute continuity

Desired statement:

```math
\mu_m^{src,+}(E)\le C\mathcal D_m(E)+o_m(1),
```

plus

```math
\mathcal D_m(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1).
```

Attempt:

If both statements are installed, then

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le C\omega_R(\varepsilon)+o_m(1),
```

so the terminal atom is killed.

The failure is that neither part follows from the present data.

A selected positive source can be a one-sided terminal marginal not dominated by the available signed/energy ledger after localization, cutoff, pressure projection, positive-part extraction, and selection. Even if a CKN/dissipation measure is finite, finite measure alone does not give the needed uniform terminal strip absolute continuity in `m`; it admits the same terminal concentration mechanism unless a terminal strip modulus is separately proved.

Verdict:

```text
DissipationTetherAbsoluteContinuity.A is sufficient but not proved.
```

It reduces to two exact missing estimates: selected-source domination by the controlling dissipation plus a uniform terminal strip modulus for that dissipation.

## Route 4: rigid B_ASAC production, B_ASAC -> B_ASAC^TA

Desired statement:

```math
B_{ASAC}\Longrightarrow B_{ASAC}^{TA},
```

where `B_ASAC^TA` includes the terminal anti-atom condition.

Attempt:

The rigid-subclass Liouville/no-source theorem closes only after the terminal anti-atom property is already present. It proves that the atom vanishes inside the stricter class; it does not prove production into that stricter class.

To prove production, one must show that the produced `B_ASAC` survivor has temporal spreading, super-L1 residence, source charge, no terminal source-residue jump, or equivalent anti-atom structure.

But the current `B_ASAC` data still permit the terminal layer:

```math
\frac{a}{\tau_m}1_{(-\tau_m,0]}.
```

The BASAC constraints pay alignment/legal/ASAC defects and selected branch bookkeeping, but they do not by themselves price terminal temporal concentration.

Verdict:

```text
BASACProductionToTerminalAntiAtom.A is not proved.
```

It reduces back to temporal thickness, super-L1 source residence, scale-critical source charge, Zeno residue rigidity, or high-tower collar summability.

## Route 5: scale-critical source charge / Carleson route

Desired statement:

A scale-critical source charge controls the selected positive source on terminal heat windows strongly enough to rule out the terminal atom.

Attempt:

This route would work if it gave a Carleson-type estimate of the form:

```math
\mu_m^{src,+}(Q_r(z))\le C r^\alpha
```

with enough terminal uniformity to make source mass on shrinking terminal windows vanish.

But the active record says HeatScaleSquareSource.A returns to ActiveShellSourceNormalize.A, and parent inverse/source charge control returns to ScaleCriticalTreeCarleson.A. The needed Carleson estimate is therefore not installed.

Verdict:

```text
ScaleCriticalSourceCharge.A / ScaleCriticalTreeCarleson.A remains sufficient but unproved.
```

## Route 6: high-tower collar summability

Desired statement:

The affine/collar cost of a persistent critical terminal core is summable only if the terminal atom disappears.

Attempt:

The existing affine-core collar estimate prices a persistent critical core only
under the displayed parent-ball, heat-time subset, gradient lower-bound, and
parent-energy hypotheses.  For a selected window it gives the exact bill

```math
B_m
:=
\nu\int_{G_m}\int_{B_{R_m}(x_m)}|\nabla^2u|^2\,dx\,dt
\ge
c\,\theta_m\eta_m^2\nu^4/E_{R,m}.
```

The route closes only if the same selected terminal family also has a finite
high-tower/enstrophy-production budget controlling `sum_m B_m` and a
non-summable lower side such as

```math
\sum_m\theta_m\eta_m^2/E_{R,m}=\infty.
```

Without those two exact statements, Zeno concentration remains possible even
though each selected collar bill is positive.

Verdict:

```text
HighTowerCollarSummability.A is sufficient but not proved.
```

## Overall conclusion

None of the forward-gold routes is proved from installed inputs.

The strongest true statement is:

```text
TerminalTimeFaceAntiAtom.A would follow from any one of:
  - TerminalThicknessModulus.A;
  - UniformTemporalSourceIntegrability_{p,B_ASAC}.A for some p>1;
  - DissipationTetherAbsoluteContinuity.A plus terminal dissipation strip modulus;
  - BASACProductionToTerminalAntiAtom.A;
  - ScaleCriticalSourceCharge.A / ScaleCriticalTreeCarleson.A;
  - HighTowerCollarSummability.A.
```

Each of those is a genuine missing forward estimate, not a relabeling of the CM contrapositive consumption theorem.

The CM contrapositive path remains closed by branch consumption. The forward gold theorem remains open.
