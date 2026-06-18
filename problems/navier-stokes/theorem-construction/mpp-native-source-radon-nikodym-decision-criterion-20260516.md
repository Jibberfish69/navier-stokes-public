# MPP Native Source Radon-Nikodym Decision Criterion

## Status

Bounded execution after
`mpp-localpositive-source-native-defect-frontier-20260516.md`.

This note does not prove `OriginalSmoothData=>mu_*^sing=0`. It installs the
exact decision test for whether the native positive source survivor vanishes or
leaves a nonzero singular residue.

## Native Measures

On a bounded-overlap same-fluid terminal active family `F_N`, set

```math
d\nu_N
:=
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+\,dxdt
```

on each packet cylinder `Q(P)`, and let

```math
d\rho_N:=d\rho_{inst,N}
```

be the installed nonnegative ledger measure on the same selected family.

After passing to the terminal extraction used by the source-pulse normal form,

```math
\nu_N \rightharpoonup \nu_*,
\qquad
\rho_N \rightharpoonup \rho_*,
```

and the useful decomposition is the Lebesgue split

```math
\nu_* = f\rho_*+\mu_*^{sing},
\qquad
\mu_*^{sing}\perp\rho_*.
```

## Lemma `RN.NativeDecision.A`

The following are equivalent for the extracted terminal active family.

```math
\mu_*^{sing}=0
```

and

```math
\forall \epsilon>0\ \exists \delta>0\ \exists N_0
\quad
\rho_N(E_N)<\delta,\ N\ge N_0
\Longrightarrow
\nu_N(E_N)<\epsilon
```

for every measurable selected packet subfamily/set `E_N`.

Equivalently, failure of `mu_*^sing=0` is witnessed by a sequence of selected
terminal packet sets `E_N` and a constant `c>0` such that

```math
\rho_N(E_N)\to 0,
\qquad
\nu_N(E_N)\ge c.
```

Call this a vanishing-ledger positive-source packet.

### Proof

This is the Radon-Nikodym/Lebesgue decomposition criterion for uniform absolute
continuity of the positive source measures relative to the installed ledger
measures, restricted to the selected terminal packet algebra. If uniform
absolute continuity holds, every weak terminal defect is absolutely continuous
with respect to `rho_*`, so the singular part vanishes. If it fails, choose
sets `E_N` with vanishing `rho_N`-mass and fixed positive `nu_N`-mass; a
subsequential weak limit gives a nonzero measure carried on a `rho_*`-null set.
`\square`

## Consequence For Closure

The exact positive-supplier theorem is therefore:

```math
\boxed{
UniformLedgerAC.A:
\text{ no vanishing-ledger positive-source packets exist.}
}
```

This is just the measure-sharp form of

```math
NativeTrilinearDefectDomination.A
\Longrightarrow
NativeSourceAC.A
\Longrightarrow
SourcePulseExclusion.A.
```

The RN bookkeeping exhaustiveness of the three source-pulse exits is now
recorded separately in
`mpp-rn-three-exit-exhaustiveness-proof-20260516.md`:

```math
TPS.Remove.A
\vee
TPS.Charge.A
\vee
TPS.Rigidify.A
\Longrightarrow
\text{no normal-form terminal counterpacket,}
```

and, after remove fails, the only RN alternatives are
`\mu_*^{sing}=0` or `\mu_*^{sing}\ne0`.

## Bounded Direct Run

There are three possible ways to prove `UniformLedgerAC.A` in the current native
variables.

First, prove source-weighted strain decorrelation:

```math
PositiveStrainDecorrelation.A.
```

The needed form is the source-weighted packet estimate

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\big[e_P\cdot S_{<j_P}^{loc}e_P\big]_+
\chi_P\,dxdt
\le
\mathrm{Legal}_{N,Q}+o_N(1).
```

That estimate shows the active direction cannot keep positive terminal
mass along the expanding eigendirections of `S_{<j}^{loc}` on sets where the
installed ledger vanishes. The existing direct audit shows trace-free strain,
signed exchange, pressure recovery, direction/coherence claims, and same-fluid
transport do not supply the displayed inequality.

Second, prove a source-weighted active reserve:

```math
PositiveActiveCarlesonReserve.A.
```

That charges the whole positive source carrier by the installed ledger on
the same packets. The existing direct audit shows raw energy, local energy,
Cauchy/Young envelopes, finite banding, pressure/cutoff ledgers, and downstream
source suppliers do not supply this theorem.

Third, if vanishing-ledger positive-source packets survive, prove a rigidified
source-residue exclusion:

```math
MSC.Localize^{src}
+
ZenoBoundedClass_B.A
+
ZenoResidueLiouville_B.A.
```

That turns the nonzero singular residue into a forbidden source-residue
limit. The current Zeno audits extract local suitable ancient source-residue
limits but do not produce an explicit rigid class `B` from original data.

## Verdict

The sign is not currently decided by the installed theorem stack. The exact
decision criterion is:

```math
\mu_*^{sing}=0
\quad\Longleftrightarrow\quad
\text{uniform absolute continuity of }\nu_N\text{ with respect to }\rho_N.
```

The exact bad branch is:

```math
\mu_*^{sing}>0
\quad\Longleftrightarrow\quad
\text{there are vanishing-ledger positive-source packets.}
```

The single theorem-facing burden left by this run is:

```math
\boxed{
OriginalSmoothData=>UniformLedgerAC.A
}
```

equivalently `OriginalSmoothData=>NativeTrilinearDefectDomination.A`.
