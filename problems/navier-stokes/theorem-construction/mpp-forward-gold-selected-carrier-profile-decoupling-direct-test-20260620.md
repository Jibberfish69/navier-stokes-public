# MPP Forward-Gold Selected-Carrier Profile-Decoupling Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SelectedCarrierProfileDecoupling.A` plus
`CompactOrbitProduction.A` is a valid consumer route, but it is not produced by
ordinary profile decomposition or raw orthogonality.

The obstruction has two faces.  Endpoint time concentration can leave no
interior profile for compact ancient rigidity to consume.  Near-resonant
profile molecules can also create a selected positive carrier through
positive-part cross terms even when the signed or raw pieces look orthogonal in
the weaker ledgers.

## 1. Target

The hoped-for profile route is:

```math
\text{minimal terminal reserve failure}
\Longrightarrow
\text{one compact critical profile carrying the selected positive carrier}.
\tag{SPD.1}
```

The needed decoupling statement is:

```math
\mu_{m}^{src,+}
\sim
\sum_\alpha \mu^{src,+}(U^\alpha)
+o_m(1),
\tag{SPD.2}
```

after localization, Leray projection, lifting, packet selection, and
positive-part extraction.

If `(SPD.2)` were available together with compact orbit production, then a
minimal surviving carrier would belong to one rigid profile, and the route could
try a Liouville/no-waste contradiction on that profile.

Current inputs do not supply `(SPD.2)`.

## 2. Endpoint atom is not an interior compact profile

Let the selected time marginal be

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{SPD.3}
```

It has fixed mass:

```math
\int_{-1}^{0}a_m(s)\,ds=1.
\tag{SPD.4}
```

But for every \(a>0\),

```math
\int_{-1}^{-a}a_m(s)\,ds=0
\tag{SPD.5}
```

for all sufficiently large \(m\).  Thus every strict negative-time strip sees
no selected source profile, while

```math
a_m(s)\,ds\stackrel{*}{\rightharpoonup}\delta_{s=0}.
\tag{SPD.6}
```

This is the first failure of compact-orbit production.  The terminal defect is
a boundary measure, not a compact ancient orbit on \(s<0\).  Ordinary profile
compactness of the velocity can therefore be true on open strips while the
selected source carrier remains as a terminal atom.

To turn `(SPD.6)` into an interior profile one must already prove terminal
trace tightness:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
\tag{SPD.7}
```

That is `SelectedCarrierEndpointUI.A`, the target itself.

## 3. Positive-part selection is not raw profile additivity

Even away from the pure endpoint-atom issue, raw profile orthogonality does not
imply additivity of the selected positive carrier.

Use the local algebraic normal form

```math
S_0=
\begin{pmatrix}
0&1&0\\
1&0&0\\
0&0&0
\end{pmatrix},
\qquad
\operatorname{tr}S_0=0.
\tag{SPD.8}
```

Let

```math
W^{(1)}=\psi(y)e_1,
\qquad
W^{(2)}=\psi(y)e_2.
\tag{SPD.9}
```

Then each individual signed quadratic is zero:

```math
\langle S_0W^{(1)},W^{(1)}\rangle=0,
\qquad
\langle S_0W^{(2)},W^{(2)}\rangle=0.
\tag{SPD.10}
```

But the combined packet \(W=W^{(1)}+W^{(2)}\) has a positive selected carrier:

```math
\langle S_0W,W\rangle
=
2\psi(y)^2.
\tag{SPD.11}
```

After choosing \(\psi\) so that \(2\int_{B_R}\psi(y)^2\,dy=1\) and multiplying
by the endpoint time factor

```math
\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\tag{SPD.12}
```

the combined selected positive carrier has terminal mass

```math
\int_{-\tau_m}^{0}
\int_{B_R}2\psi(y)^2\tau_m^{-1}\,dy\,ds
=1,
\tag{SPD.12a}
```

while the two diagonal individual carrier readings carry zero mass.

This does not claim that `(SPD.8)`--`(SPD.12)` are exact Navier-Stokes profiles.
It is the local normal-form obstruction to deriving `(SPD.2)` from signed/raw
orthogonality alone.  The positive-part operation can keep a near-resonant
interaction that disappears from the diagonal profile ledger.

## 4. What separated-profile orthogonality actually gives

For genuinely separated profiles, ordinary decoupling can remove cross terms in
energy or critical norms.  That is useful, but it does not solve the terminal
carrier problem.

There are two possibilities.

First, the selected carrier belongs to one separated profile.  Then compactness
of that profile helps only if the profile is a genuine interior ancient object
with no terminal boundary defect.  Endpoint concentration `(SPD.3)` is exactly
the case where that production fails.

Second, the selected carrier belongs to a near-resonant low-high molecule.
Then the profiles are not separated enough for raw orthogonality to kill the
positive cross term `(SPD.11)`.  The molecule must be paid by the same-carrier
source-square/Carleson reserve, retained signed saturation, strict no-waste, or
a specific molecule-rigidity theorem.

Thus profile decomposition separates already separated pieces.  It does not
produce the missing one-sided same-carrier endpoint modulus.

## 5. Exact reduced burden

The profile route closes only after one of these stronger inputs is proved:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
}
\tag{SPD.13}
```

to remove terminal boundary atoms before compact orbit extraction;

```math
\boxed{
\text{SelectedPackPositivePartDecoupling.A}
}
\tag{SPD.14}
```

to make the positive carrier additive under the actual terminal selector;

```math
\boxed{
\text{TwoProfilePackMoleculeRigidity.A}
}
\tag{SPD.15}
```

to kill near-resonant positive cross-profile molecules; or

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A / SourceSquareReserve.A}
}
\tag{SPD.16}
```

to pay the selected carrier directly.

## Verdict

`SelectedCarrierProfileDecoupling.A + CompactOrbitProduction.A` is not an
independent installed supplier for the forward-gold endpoint obstruction.

The exact failed shortcut is:

```math
\boxed{
\text{ordinary profile orthogonality}
\not\Longrightarrow
\text{selected positive carrier endpoint UI or compact orbit production.}
}
\tag{SPD.17}
```

The branch returns to the same non-aliased target:

```math
\text{UnweightedTerminalCriticalActionReserve.A / SelectedCarrierEndpointUI.A}
\tag{SPD.18}
```

or to a genuinely new selected-positive profile stability or molecule-rigidity
theorem.
