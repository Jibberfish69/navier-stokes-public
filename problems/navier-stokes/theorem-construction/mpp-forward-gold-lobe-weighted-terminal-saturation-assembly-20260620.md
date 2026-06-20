# Lobe-Weighted Terminal Saturation Assembly

Date: 2026-06-20

## Status

Assembly complete.  This note does not prove the forward-gold theorem.  It
proves that the positive and negative mode-lobe saturation tests do not combine
into a new third mechanism.  They assemble exactly into two lobe-weighted
selected polar saturation estimates on the same terminal ledger.

The only substantive wall left by the assembly is the old one: same-ledger
terminal signed saturation on a selected positive carrier, or an upstream
same-carrier source-square, strict no-waste, no-free Zeno donor-chain, or
endpoint-uniform-integrability theorem.

## 1. Starting identity

Let \(q_N(P)\) be the signed selected local pre-Cauchy source and let
\(\psi_N(P)\) be a legal mode multiplier on the same selected packet family.
Write

```math
\psi_N^+(P)=[\psi_N(P)]_+,
\qquad
\psi_N^-(P)=[-\psi_N(P)]_+.
\tag{LWT.1}
```

The mode-weighted positive carrier is

```math
M_{\psi,N}^+(q_N)
:=
\sum_{P\in\mathcal F_N^{sel}}
[q_N(P)\psi_N(P)]_+ .
\tag{LWT.2}
```

Pointwise,

```math
[q_N(P)\psi_N(P)]_+
=
\psi_N^+(P)[q_N(P)]_+
+
\psi_N^-(P)[-q_N(P)]_+ .
\tag{LWT.3}
```

Hence

```math
M_{\psi,N}^+(q_N)
=
C_{\psi^+,N}^+(q_N)
+
C_{\psi^-,N}^+(-q_N),
\tag{LWT.4}
```

where, for any nonnegative lobe weight \(\zeta_N\),

```math
C_{\zeta,N}^+(r_N)
:=
\sum_{P\in\mathcal F_N^{sel}}
\zeta_N(P)[r_N(P)]_+ .
\tag{LWT.5}
```

This is an identity, not an estimate.

## 2. Lobe-weighted saturation statement

For a legal nonnegative packet weight \(\zeta_N\), define
`LobeWeightedTerminalSignedSaturation.A(r,zeta)` as the same-ledger estimate

```math
C_{\zeta,N}^+(r_N)
\le
C_\zeta \|L_{\zeta,N}r_N\|_N
+
\operatorname{Legal}_{\zeta,N}
+
o_N(1).
\tag{LWT.6}
```

Here \(L_{\zeta,N}r_N\) is the usable same-shadow signed readout in the legal
lobe-weighted test class.  If the proof uses the original mode readout norm
\(\|L_{\psi,N}q_N\|_N\), the required compatibility is

```math
\|L_{\psi^+,N}q_N\|_N
+
\|L_{\psi^-,N}(-q_N)\|_N
\le
C\|L_{\psi,N}q_N\|_N
+
\operatorname{Legal}_{\psi,N}
+
o_N(1),
\tag{LWT.7}
```

or else the target readout norm must be enlarged to include the two lobe tests.
In the packet-label lobe route this is a test-class bookkeeping condition; it
does not pay the positive carrier.

## 3. Exact assembly

Assume `(LWT.6)` for \((r,\zeta)=(q_N,\psi_N^+)\) and for
\((r,\zeta)=(-q_N,\psi_N^-)\).  Then

```math
C_{\psi^+,N}^+(q_N)
\le
C_+\|L_{\psi^+,N}q_N\|_N
+
\operatorname{Legal}_{+,N}
+
o_N(1),
\tag{LWT.8}
```

and

```math
C_{\psi^-,N}^+(-q_N)
\le
C_-\|L_{\psi^-,N}(-q_N)\|_N
+
\operatorname{Legal}_{-,N}
+
o_N(1).
\tag{LWT.9}
```

Adding `(LWT.8)` and `(LWT.9)`, then using `(LWT.4)` and the readout
compatibility `(LWT.7)`, gives

```math
M_{\psi,N}^+(q_N)
\le
C_\psi\|L_{\psi,N}q_N\|_N
+
\operatorname{Legal}_{\psi,N}
+
o_N(1).
\tag{LWT.10}
```

This is `ModeWeightedSignedSaturation.A`.

Thus the exact sufficient route is

```math
\boxed{
\begin{gathered}
\text{LobeWeightReadoutCompatibility.A}(\psi^\pm)
\\
+
\text{LobeWeightedTerminalSignedSaturation.A}(q,\psi^+)
\\
+
\text{LobeWeightedTerminalSignedSaturation.A}(-q,\psi^-)
\Longrightarrow
\text{ModeWeightedSignedSaturation.A}.
\end{gathered}
}
\tag{LWT.11}
```

When the legal readout norm is already enlarged to contain the two lobe tests,
`LobeWeightReadoutCompatibility.A` is absorbed into the definition of that
norm.

## 4. No cancellation across the two lobes pays the wall

The lobe split is disjoint in sign:

```math
\psi^+[q]_+
\quad\text{and}\quad
\psi^-[-q]_+ .
\tag{LWT.12}
```

Both terms are nonnegative.  Adding them cannot create a signed cancellation
that controls either term.  Any cancellation available to the signed readout
occurs inside a lobe or inside the lobe-weighted signed shadow.

Positive-lobe cancellation remains the two-packet model

```math
\zeta(P_1)=\zeta(P_2)=1,
\qquad
q(P_1)=A,
\qquad
q(P_2)=-A,
\qquad
A>0,
\tag{LWT.13}
```

for which

```math
\sum_P\zeta(P)q(P)=0,
\qquad
\sum_P\zeta(P)[q(P)]_+=A.
\tag{LWT.14}
```

The negative lobe is the same model after replacing \(q\) by \(-q\):

```math
\zeta(P_1)=\zeta(P_2)=1,
\qquad
q(P_1)=-A,
\qquad
q(P_2)=A,
\qquad
A>0,
\tag{LWT.15}
```

for which

```math
\sum_P\zeta(P)q(P)=0,
\qquad
\sum_P\zeta(P)[-q(P)]_+=A.
\tag{LWT.16}
```

Therefore the sum of the two lobe tests has no extra coercivity beyond the two
lobe-weighted saturation estimates already named.

## 5. Relation to the previous lobe tests

`PositiveLobeCarrierSaturation.A` is exactly
`LobeWeightedTerminalSignedSaturation.A(q,psi^+)` after legal lobe weights are
admitted.

`NegativeLobeSinkSaturation.A` is exactly
`LobeWeightedTerminalSignedSaturation.A(-q,psi^-)` after the same admission.

The prior oriented-lobe compatibility result pays only the packet-label
test-class inheritance and sign-change bookkeeping.  The prior lobe-shadow
residue test shows that lobe restriction can leave an unpaid lobe-weighted
donor residue unless the lobe-weighted same-shadow identity is installed.  Both
facts are compatible with `(LWT.11)`: they describe the legal/readout side, not
the positive-carrier saturation side.

## 6. Remaining nonduplicated target

The assembly removes one apparent branch.  There is no independent theorem of
the form

```math
\text{positive lobe}
+
\text{negative lobe}
\Longrightarrow
\text{mode saturation}
\tag{LWT.17}
```

unless the two lobe-weighted saturation estimates have already been paid.

After legal exits, retained signed partners, entrance leaves, and finite donor
chains are removed, both lobe-weighted saturation estimates have the same
unpaid terminal branch:

```math
P_0\leftarrow P_1\leftarrow P_2\leftarrow\cdots,
\qquad
t_m\uparrow T^\ast.
\tag{LWT.18}
```

That branch is `NoFreeTerminalZenoDonorChain.A` on the lobe-weighted selected
ledger.  Equivalently, it may be replaced by a stronger same-carrier theorem:

```math
\boxed{
\text{source-square reserve}
\quad\text{or}\quad
\text{strict no-waste Lyapunov}
\quad\text{or}\quad
\text{selected endpoint uniform integrability}
\quad\text{or}\quad
\text{rigid Zeno source-residue Liouville production.}
}
\tag{LWT.19}
```

## Verdict

`ModeWeightedSignedSaturation.A` is not reopened by combining the positive and
negative lobes.  The lobe split gives only the exact algebraic assembly

```math
\boxed{
\text{ModeWeightedSignedSaturation.A}
\Longleftarrow
\text{LobeWeightedTerminalSignedSaturation.A}(q,\psi^+)
+
\text{LobeWeightedTerminalSignedSaturation.A}(-q,\psi^-)
}
\tag{LWT.20}
```

with lobe readout legality included in the chosen test norm.  Current inputs do
not prove those two lobe-weighted saturation estimates.  The nonduplicated
forward-gold target remains terminal signed saturation on the actual selected
carrier, or an upstream same-carrier no-jump/source-square/strict no-waste
reserve that makes saturation unnecessary.
