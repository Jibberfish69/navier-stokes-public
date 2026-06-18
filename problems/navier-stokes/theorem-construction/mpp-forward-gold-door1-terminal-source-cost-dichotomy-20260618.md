# Door 1 Terminal Source Cost Dichotomy

Date: 2026-06-18

Status: proved dichotomy for the Door 1 shadow-ledger source marginal.  This
does not prove `Door1TerminalSourceTimeAntiAtom.A`; it identifies the exact
remaining production alternatives.

Role: continue from

```text
mpp-forward-gold-door1-shadow-ledger-attempt-20260618.md
```

where the finite signed-current cases were paid and the only surviving Door 1
branch was the zero-thickness terminal Zeno source-refill marginal.

## Target marginal

Let

```math
\mu_{src,N}^{+,sh}
```

be the selected positive native source marginal carried by the Door 1 shadow
ledger after retained partners, legal exits, ASAC pair-weight defects, and
finite donor trees have been removed.

The terminal atom obstruction is:

```math
I_N=(T_N-\tau_N,T_N],
\qquad
\tau_N\downarrow0,
\tag{DC.1}
```

with nonnegative time densities `g_N` satisfying

```math
\int_{I_N}g_N(s)\,ds\ge M_0>0,
\qquad
\sup_N\int_{I_N}g_N(s)\,ds<\infty.
\tag{DC.2}
```

The model is

```math
g_N(s)={a\over\tau_N}{\bf 1}_{(T_N-\tau_N,T_N]}(s).
\tag{DC.3}
```

## Dichotomy

Exactly one of the following proof roles must be supplied for the Door 1
terminal refill branch.

### Branch A: same-shadow super-L1 residence

There exists `p>1` and `C_R<infinity` such that, for the same shadow-ledger
family and every retained terminal window in `B_R`,

```math
\int_{I_N}g_N(s)^p\,ds\le C_R.
\tag{DC.4}
```

Then Holder gives

```math
\int_{I_N}g_N(s)\,ds
\le
|I_N|^{1-1/p}
\left(\int_{I_N}g_N(s)^p\,ds\right)^{1/p}
\le
\tau_N^{1-1/p}C_R^{1/p}
\to0.
\tag{DC.5}
```

This proves the Door 1 terminal slab modulus on the selected shadow source:

```math
\mu_{src,N}^{+,sh}(B_R\times[T-\varepsilon,T])
\le
\omega_R(\varepsilon)+o_N(1),
\qquad
\omega_R(\varepsilon)\downarrow0.
\tag{DC.6}
```

Thus

```math
\boxed{
\text{Door1SameShadowSuperL1Residence.A}
\Longrightarrow
\text{Door1TerminalSourceTimeAntiAtom.A}.
}
\tag{DC.7}
```

### Branch B: atom persists

If `(DC.2)` persists along `\tau_N\downarrow0`, then for every `p>1`,

```math
\int_{I_N}g_N(s)^p\,ds
\ge
M_0^p\tau_N^{1-p}
\to\infty.
\tag{DC.8}
```

So the surviving terminal source atom is not merely "untracked."  It is
infinite-cost in every super-`L1_s` temporal residence currency.

In the Door 1 setting, this leaves only a rigidity or artifact theorem:

```math
\boxed{
\text{StressFluxZenoRefillRigidity.A}
}
\tag{DC.9}
```

or the more explicit artifact statement

```math
\boxed{
\text{Door1InfiniteCostEndpointArtifact.A}.
}
\tag{DC.10}
```

The first kills the terminal refill by producing a rigid Zeno residue class
incompatible with the stress-flux/native-carrier identity.  The second says the
infinite-cost endpoint strip is not a valid forward Door 1 source payment and
must be consumed outside the forward payment route.

## What this proves

The Door 1 terminal source branch now has a precise mathematical split:

```math
\boxed{
\text{Door1SameShadowSuperL1Residence.A}
\quad\text{or}\quad
\text{StressFluxZenoRefillRigidity.A / Door1InfiniteCostEndpointArtifact.A}.
}
\tag{DC.11}
```

This is smaller than the enclosing `Door1TerminalSourceTimeAntiAtom.A` label.
It says exactly what must be produced:

1. a same-shadow super-`L1_s` residence budget for the selected native source
   marginal; or
2. a proof that the endpoint strip extracted when every such budget diverges is
   rigidly impossible or cannot be used as the forward Door 1 payment.

## Verdict

`Door1TerminalSourceTimeAntiAtom.A` is not proved here.  The proved content is
the cost dichotomy:

```math
\boxed{
\text{uniform super-L1 residence kills the atom; a surviving atom has infinite
super-L1 residence cost and must be handled by rigidity/artifact exclusion.}
}
\tag{DC.12}
```

The live Door 1 children after this pass are:

```math
\boxed{
\text{Door1SameShadowSuperL1Residence.A}
}
\qquad
\boxed{
\text{StressFluxZenoRefillRigidity.A}
\quad\text{or}\quad
\text{Door1InfiniteCostEndpointArtifact.A}.
}
\tag{DC.13}
```
