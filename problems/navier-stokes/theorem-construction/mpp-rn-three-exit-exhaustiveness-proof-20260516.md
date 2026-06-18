# MPP RN Three-Exit Exhaustiveness Proof

Date: 2026-05-16

Status: bookkeeping proof inside the fixed native-source Radon-Nikodym setup;
not a proof of any PDE depletion, charge, or rigidity theorem.

Purpose: make explicit the limited proof that the source-wall forward supplier
has exactly three Radon-Nikodym bookkeeping exits once the survivor has been
reduced to the native positive source measure against the installed ledger.

## 0. Setup

Work on the selected bounded-overlap same-fluid terminal packet algebra used in
`mpp-native-source-radon-nikodym-decision-criterion-20260516.md`.

Let

```math
d\nu_N
:=
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+\,dxdt
```

be the native positive source measure, and let

```math
d\rho_N:=d\rho_{inst,N}
```

be the installed nonnegative route-ledger measure on the same selected family.

After terminal extraction, pass to weak limits

```math
\nu_N\rightharpoonup\nu_*,
\qquad
\rho_N\rightharpoonup\rho_*,
```

and write the Lebesgue decomposition:

```math
\boxed{
\nu_*=f\rho_*+\mu_*^{sing},
\qquad
\mu_*^{sing}\perp\rho_*.
}
\tag{RN3.1}
```

A terminal source-pulse counterpacket means that, after installed legal ledgers
have been peeled off, there are selected packet sets `E_N` and a constant
`c>0` with

```math
\nu_N(E_N)\ge c,
\qquad
\rho_N(E_N)\to0.
\tag{RN3.2}
```

The first inequality is the surviving positive source mass.  The second says
the selected mass is not paid by the installed ledger.

## 1. The three exits in RN language

### Remove

`TPS.Remove.A` means that no selected terminal source-pulse family can carry a
positive native source lower bound:

```math
\nu_N(E_N)\to0
\tag{RN3.3}
```

for every selected terminal family.  This kills `(RN3.2)` before the
Radon-Nikodym split is needed.

### Charge

`TPS.Charge.A` means uniform absolute continuity of the native positive source
measure with respect to the installed ledger on the selected packet algebra:

```math
\forall\epsilon>0\ \exists\delta>0\ \exists N_0
\quad
\rho_N(E)<\delta,\ N\ge N_0
\Longrightarrow
\nu_N(E)<\epsilon.
\tag{RN3.4}
```

Equivalently, by `RN.NativeDecision.A`,

```math
\mu_*^{sing}=0.
\tag{RN3.5}
```

On a normal-form counterpacket satisfying `(RN3.2)`, `(RN3.4)` gives a
contradiction by taking `\epsilon<c/2`.

### Rigidify

`TPS.Rigidify.A` means that the singular branch from `(RN3.1)` is allowed to
exist long enough to become a localized source-residue object, and then a
rigidity theorem forbids it:

```math
\mu_*^{sing}\ne0
\Longrightarrow
\text{localized source-residue limit}
\Longrightarrow
\bot.
\tag{RN3.6}
```

This is the branch represented by:

```math
MSC.Localize^{src}
+
ZenoBoundedClass_{\mathcal B}.A
+
ZenoResidueLiouville_{\mathcal B}.A.
```

## 2. Lemma `RN.ThreeExitExhaustive.A`

Inside the fixed RN setup above:

```math
\boxed{
TPS.Remove.A
\vee
TPS.Charge.A
\vee
TPS.Rigidify.A
\Longrightarrow
\text{no terminal source-pulse counterpacket }(RN3.2).
}
\tag{RN3.A}
```

Moreover, after `TPS.Remove.A` fails, the remaining RN bookkeeping has no
fourth case: the survivor is either uniformly ledger-absolutely-continuous
(`TPS.Charge.A`) or it has a nonzero singular part (`TPS.Rigidify.A` input).

## 3. Proof

Assume a terminal source-pulse counterpacket `(E_N)` satisfying `(RN3.2)`.

If `TPS.Remove.A` holds, then `(RN3.3)` gives `\nu_N(E_N)\to0`, contradicting
the lower bound `\nu_N(E_N)\ge c`.

If `TPS.Charge.A` holds, choose `\epsilon=c/2`.  From `(RN3.4)` there are
`\delta>0` and `N_0` such that `\rho_N(E)<\delta` implies
`\nu_N(E)<c/2` for `N\ge N_0`.  Since `\rho_N(E_N)\to0`, this applies to
`E_N` for all large `N`, contradicting `\nu_N(E_N)\ge c`.

It remains to consider the case where `TPS.Remove.A` and `TPS.Charge.A` do not
hold.  Failure of `TPS.Charge.A` is exactly failure of uniform absolute
continuity.  By `RN.NativeDecision.A`, after passing to the terminal extraction
there is a nonzero singular component:

```math
\mu_*^{sing}\ne0.
```

If `TPS.Rigidify.A` holds, this nonzero singular component localizes to a
source-residue limit forbidden by the named rigidity theorem.  That contradicts
the inherited positive singular mass.

Thus every one of the three exits rules out `(RN3.2)`.

The exhaustiveness statement is now just the two-case Radon-Nikodym alternative
after remove has failed:

```math
\mu_*^{sing}=0
\quad\text{or}\quad
\mu_*^{sing}\ne0.
```

The first branch is the charge branch because `RN.NativeDecision.A` identifies
`\mu_*^{sing}=0` with uniform ledger absolute continuity on the selected packet
algebra.  The second branch is precisely the rigidify input.  Hence no fourth
RN bookkeeping case exists. `\square`

## 4. Boundary

This proof is only the bookkeeping exhaustiveness proof inside the already
fixed native positive source measure / installed ledger setup.

It does not prove:

```math
TPS.Remove.A,
\qquad
TPS.Charge.A,
\qquad
TPS.Rigidify.A,
```

and it does not prove absolute exhaustiveness of every conceivable
Navier-Stokes proof strategy.  It proves only that, once the forward supplier
has been reduced to `(RN3.1)` and a counterpacket has the normal form `(RN3.2)`,
remove / charge / rigidify are the complete RN bookkeeping exits.
