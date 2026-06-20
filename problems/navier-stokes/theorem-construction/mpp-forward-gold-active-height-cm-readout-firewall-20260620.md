# MPP Forward-Gold Active Height / CM Readout Firewall

Date: 2026-06-20

## Status

Direct role-separation test complete.

The first-created reserve and active-height calculations have two different
uses.  They do not prove the forward-gold reserve.  They do supply a CM-facing
readout once the retained pulse is admitted to the Pack-first witness tree.

The firewall is:

```math
\boxed{
\text{large active height is a blowup/readout signal, not a forward-gold
payment by itself.}
}
\tag{AHF.1}
```

Forward gold needs an estimate that forbids or pays the pulse.  CM uses the
retained pulse as evidence of a Pack, Part, or Field face failure.

## 1. What first-created reserve proves

For

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
\mathcal R_N(W):=\int_W\sum_{k>N}2^kT_k(t)^2\,dt,
\tag{AHF.2}
```

and

```math
M_N(W):=\int_W\sum_{k>N}T_k(t)\,dt,
\qquad
H_N(W):=\sup_{t\in W}\sup_{k>N}2^kT_k(t),
\tag{AHF.3}
```

the exact inequality is

```math
\mathcal R_N(W)\le H_N(W)M_N(W).
\tag{AHF.4}
```

Thus a minimal first-created reserve window with

```math
\mathcal R_N(W_m)\ge\eta,
\qquad
M_N(W_m)\to0
\tag{AHF.5}
```

forces

```math
H_N(W_m)\ge{\eta\over M_N(W_m)}\to\infty.
\tag{AHF.6}
```

This is a true consequence.  It says the surviving square pulse carries
unbounded active height.

## 2. Why this is not a forward-gold payment

The same heat-scale model that creates the reserve also creates the height:

```math
h_m=2^{-2m},
\qquad
D_{m+5}(t)=2^{-3m/2}h_m^{-1}{\bf 1}_{(T-h_m,T]}(t).
\tag{AHF.7}
```

Then

```math
\int D_{m+5}(t)\,dt\to0,
\qquad
\int 2^mT_m(t)^2\,dt=1,
\qquad
H_m\ge2^{3m/2}.
\tag{AHF.8}
```

So the height blowup is not an extra cost.  It is another description of the
same unpaid terminal pulse.  To use it as a forward-gold exclusion, one still
needs a theorem such as

```math
H_N(W_N)\le C
\tag{AHF.9}
```

or a same-carrier square/source/no-waste estimate.  But `(AHF.9)` is
continuation-strength: it gives a terminal high-tail \(H^1\)-type bound and is
not supplied by the energy/local-energy ledger.

Thus the implication

```math
\text{first-created reserve}
\Longrightarrow
\text{large active height}
\tag{AHF.10}
```

does not imply

```math
\text{first-created reserve}
\Longrightarrow
\text{forward-gold contradiction}.
\tag{AHF.11}
```

It implies only that the retained obstruction has become visibly high-field.

## 3. The CM readout

Once the terminal object is admitted to the same-solution CM tree, the logic is
different.

If Pack fails, the branch lands at the Pack face:

```math
\neg Pack_Q.
\tag{AHF.12}
```

If Pack survives and Part fails, it lands at the participation face:

```math
Pack_Q\wedge\neg Part_{N,Q}.
\tag{AHF.13}
```

If Pack and Part both survive, the unbounded active height is a same-ledger
critical concentration.  At a continuation depth \(N_s\), Field would give a
positive-scale one-field certificate and the installed \(H^s\), \(s>5/2\),
readout.  Unbounded retained critical height is incompatible with that Field
certificate.  This is the same role as the local \(L^3\) critical-concentration
translator:

```math
Pack_Q\wedge Part_{N_s,Q}\wedge H_N(W_m)\to\infty
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q}.
\tag{AHF.14}
```

This is a CM face readout.  It is not a proof that the heat-scale pulse was
positively erased.

## 4. Exact role separation

The active-height conclusion can be used in either of two lawful ways.

First, as a forward-gold supplier only after a new estimate supplies a bound or
summability theorem:

```math
\boxed{
ActiveWindowHeight.A
\text{ or }
SourceSquareReserve.A
\text{ or }
StrictRescaledNoWasteLyapunov.A
\Longrightarrow
\text{heat-scale pulse excluded}.
}
\tag{AHF.15}
```

Second, as a CM readout after the retained pulse is admitted to the witness
tree:

```math
\boxed{
\text{retained active-height blowup}
\Longrightarrow
\text{Pack/Part/Field face failure}.
}
\tag{AHF.16}
```

The invalid move is to treat `(AHF.16)` as `(AHF.15)`.  That would replace a
forward estimate with a classification readout.

## Verdict

The active-height route is closed as an independent forward-gold supplier from
current inputs.

It proves:

```math
\boxed{
\text{first-created unweighted reserve}
\Rightarrow
\text{unbounded active height}.
}
\tag{AHF.17}
```

It does not prove:

```math
\boxed{
\text{unbounded active height}
\Rightarrow
\text{unweighted terminal reserve is paid}.
}
\tag{AHF.18}
```

The surviving object is now typed cleanly.  For forward gold it is still
`UnweightedTerminalCriticalActionReserve.A` or one of its same-carrier
equivalents.  For CM it is a retained critical-height/source-reserve readout
that must land through Pack, Part, or Field, with the existing source-reserve
CM face-consumption notes as authority.
