# MPP HeatDwellSampling.A Direct Attempt And BV Correction

Date: 2026-05-06

Status: theorem-reduction / corrected proof interface; not a source-wall
discharge.

Purpose: push the first sublemma under `ActiveHeightFluxTrichotomy.A` far
enough to separate the deterministic sampling algebra from the remaining PDE
strain-variation wall.

## 0. Target being tested

The route note proposed:

```text
HeatDwellSampling.A.
```

In model form this tried to replace positive low-strain action on one heat
window by net low-strain action plus Part/Field/Zeno losses:

```math
\int_W e(t)[\sigma(t)]_+\,dt
\le
C_{\mathrm{HDS}}
\left(
\sup_W e\,
\left[\int_W\sigma(t)\,dt\right]_+
+\mathrm{Part}+\mathrm{Field}+\mathrm{Zeno}
\right).
\tag{HDS.1}
```

Here `e(t)` is the active high-shell packet energy on a heat window
`W=I_P`, and

```math
\sigma(t)=n_P(t)\cdot S^{loc}_{<j_P}(X_P(t),t)n_P(t).
\tag{HDS.2}
```

## 1. Direct statement fails without a variation charge

The statement `(HDS.1)` is false at the deterministic level.

Take a perfectly retained packet:

```math
e(t)\equiv E>0
```

on an interval containing an integer number of oscillations, and take

```math
\sigma(t)=A\sin(\omega t).
```

Then:

```math
\left[\int_W\sigma(t)\,dt\right]_+=0,
```

but

```math
\int_W e(t)[\sigma(t)]_+\,dt
=
E A |W|/\pi.
```

This is not a Navier--Stokes counterexample.  It is a counterexample to the
logical shortcut that heat dwell alone converts positive-phase strain into net
strain.  The missing object is the temporal variation of the sampled low strain.

Thus the correct theorem cannot be:

```text
dwell alone => positive sampling is net Pack gain.
```

It must be:

```text
positive sampling
=> net Pack gain
   or low-strain variation charge
   or Part/Field/Zeno loss.
```

## 2. Deterministic replacement lemma

The useful scalar lemma is elementary and should be treated as installed once
the packet variables are identified.

Let `W=[a,b]`, `|W|=\tau`, `0<=e(t)<=E`, and let
`\sigma\in BV(W)`.  Then

```math
\boxed{
\int_W e(t)[\sigma(t)]_+\,dt
\le
E\left[\int_W\sigma(t)\,dt\right]_+
+E\tau\,\mathrm{Var}_W(\sigma).
}
\tag{HDS.3}
```

Proof:

```math
[\sigma(t)]_+
\le
[\bar\sigma]_+ + |\sigma(t)-\bar\sigma|,
\qquad
\bar\sigma:=\tau^{-1}\int_W\sigma.
```

Therefore

```math
\int_W e[\sigma]_+
\le
E\tau[\bar\sigma]_+
+E\int_W|\sigma-\bar\sigma|.
```

The one-dimensional BV Poincare bound gives

```math
\int_W|\sigma-\bar\sigma|
\le
\tau\,\mathrm{Var}_W(\sigma),
```

which proves `(HDS.3)`.

For an absolutely continuous sampled strain,

```math
\mathrm{Var}_W(\sigma)
\le
\int_W|\partial_t\sigma(t)|\,dt.
\tag{HDS.4}
```

This is the precise missing charge in the first HeatDwellSampling formulation.

## 3. Packet-level corrected theorem

The corrected heat-dwell sampling theorem should be:

```text
HeatDwellSampling.BV.
```

For every retained active packet `P` at scale `j_P`, heat window
`I_P`, packet energy `e_P(t)`, and sampled strain `sigma_P(t)`, one has

```math
\int_{I_P}e_P(t)[\sigma_P(t)]_+\,dt
\le
E_P
\left[\int_{I_P}\sigma_P(t)\,dt\right]_+
+E_P\tau_P\,\mathrm{Var}_{I_P}(\sigma_P)
+\mathcal L_P^{part/field/zeno},
\tag{HDS.5}
```

where

```math
E_P:=\sup_{I_P}e_P(t),
\qquad
\tau_P:=(\nu2^{2j_P})^{-1}.
```

The loss term records only the already-legal errors needed to pass from the
ideal scalar variables to the native retained packet variables:

```text
cutoff leakage,
off-packet pressure/viscous participation loss,
packet frame error,
terminal Zeno residue.
```

The key point is that `(HDS.5)` is not a source-wall theorem.  It is a
bookkeeping identity plus packet identification.

## 4. Net Pack spend

The first term on the right of `(HDS.5)` is now in the correct Pack-facing
form:

```math
E_P
\left[\int_{I_P}\sigma_P(t)\,dt\right]_+.
\tag{HDS.6}
```

It asks only for positive net strain over the heat window, not accumulated
positive strain.  This avoids the affine oscillatory-strain obstruction to
`Pack_Q=>PackGainLedger.A`.

The required theorem is:

```text
NetPackSpend.A.
```

Target statement:

```math
\sum_{P\in\mathcal F_N(W)}
\omega_P E_P
\left[\int_{I_P}\sigma_P(t)\,dt\right]_+
\le
C\mathcal P_Q^{gain}(W)
+C\mathcal L_{N,Q}^{frame}(W)
+o_N(1).
\tag{HDS.7}
```

This should be a deformation-gradient / transported-frame theorem.  It is
strictly weaker than `PackGainLedger.A`, because it controls only heat-window
net strain.

## 5. The new real PDE wall

The second term in `(HDS.5)` is the live mathematical burden:

```math
\sum_{P\in\mathcal F_N(W)}
\omega_P E_P\tau_P\,\mathrm{Var}_{I_P}(\sigma_P).
\tag{HDS.8}
```

Call the needed theorem:

```text
LowStrainBVCharge.A.
```

Target statement:

```math
\boxed{
\sum_{P\in\mathcal F_N(W)}
\omega_P E_P\tau_P\,\mathrm{Var}_{I_P}(\sigma_P)
\le
C\mathcal P_{N,Q}^{part}(W)
+C\mathcal L_{N,Q}^{field}(W)
+C\mathcal Z_{N,Q}^{atom}(W)
+o_N(1).
}
\tag{HDS.9}
```

This is the nontrivial replacement for the over-strong original
`HeatDwellSampling.A`.

Expanding `(HDS.4)` gives the native pieces:

```math
|\partial_t\sigma_P|
\le
C_{\mathrm{BV}}
\left(
|\partial_t S_{<j_P}^{loc}|
+|S_{<j_P}^{loc}|\,|\partial_t n_P|
+\mathrm{comm}_{P}^{flow/cut}
\right).
\tag{HDS.10}
```

Along same-fluid trajectories the same expression should be read with
`D_t` instead of bare `partial_t`, plus the packet transport commutator.
Therefore `(HDS.9)` is exactly a low-strain temporal BV theorem:

```text
rapid alternation of the active expanding direction is not free.
```

It must be charged to one of:

```text
Part participation loss,
Field legal source/coherence loss,
terminal Zeno source-residue atom,
or a lower/intermediate parabolic burst inherited by the height tree.
```

## 6. Relation to parabolic-rate burst

The viscosity-response notes already isolate a useful branch:

```text
ParabolicRateStrainBurst_j
=> lower/intermediate donor height.
```

In the corrected route, this branch is no longer a side story.  It is the
main way to spend large `Var_{I_P}(sigma_P)` when the sampled low strain
changes on the heat timescale:

```math
\tau_P\mathrm{Var}_{I_P}(\sigma_P)\ge c_{\mathrm{burst}}
\quad\Longrightarrow\quad
\text{parabolic-rate strain burst}.
\tag{HDS.11}
```

On a first-height run, such a burst must either be inherited from a previous
height event, produce a legal Field charge, or fall into the Zeno residue
branch.  This is the correct placement of the parabolic-rate theorem inside
`ActiveHeightFluxTrichotomy.A`.

## 7. Corrected closure packet

The previous route should be sharpened from:

```text
HeatDwellSampling.A + NetPackSpend.A
=> ActiveHeightFluxTrichotomy.A
```

to:

```text
HeatDwellSampling.BV
+ NetPackSpend.A
+ LowStrainBVCharge.A
+ ParabolicBurstInheritance.A
+ ResidueEvacuationWithoutSquareSource.A
=> ActiveHeightFluxTrichotomy.A.
\tag{HDS.12}
```

Then the advertised direct chain remains:

```text
ActiveHeightFluxTrichotomy.A
+ Pack routed
+ Part routed
+ legal Field-loss ledger
+ no Zeno atom
=> HeightFluxControl.A
=> DonorHeightCreation.A
=> ReserveCreationCharge.A
=> SquareReserveEvolution.A
=> ScaleCriticalTreeCarleson.A.
```

## 8. Verdict

This pass does not close the source wall, but it removes a false proof step and
exposes the better theorem.

The next proof-facing target is not raw `HeatDwellSampling.A`; the deterministic
part is `(HDS.3)`.  The real target is:

```text
LowStrainBVCharge.A.
```

That is a substantially sharper object than `HeightFluxControl.A`: it says the
only way to hide positive strain from net Pack deformation is to make the
sampled low strain oscillate in time, and that oscillation must itself be paid
by Part, Field, Zeno, or inherited parabolic burst structure.
