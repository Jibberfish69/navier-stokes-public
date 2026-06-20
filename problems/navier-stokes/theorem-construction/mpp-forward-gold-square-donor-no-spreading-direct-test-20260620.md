---
theorem_id: forward-gold-square-donor-no-spreading-direct-test-20260620
status: direct-no-spreading-test-complete-not-proved
logical_landing_node: square_donor_no_spreading
edge_effect: "Tests whether the finite donor-graph / local donor-balance package can upgrade linear terminal signed saturation to the square-strength selected participation budget. It cannot. A scalar donor storage model can satisfy exact linear balance, nonnegative storage, vanishing terminal storage size, and no legal loss while a short receiver pulse has order-one normalized square cost and the longer lower donor input has vanishing normalized square cost."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-square-polar-saturation-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-reserve-signed-balance-merge-closeout-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-ladder-closeout-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-three-clock-strict-gap-test-20260620.md
downstream_consequence: "SquareDonorNoSpreading.A is not supplied by linear donor depletion, finite donor telescoping, or the packet participation identity. It needs a genuinely square reserve/evolution law, a normalized height/thickness throttle, a strict heat-clock gap, endpoint uniform integrability, or a rigid Zeno source-residue theorem."
---

# MPP Forward-Gold Square Donor No-Spreading Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SquareDonorNoSpreading.A` is not proved from the
installed donor-balance and participation inputs.

The obstruction is exact: linear donor accounting can be perfectly balanced
while the square-strength receiver cost remains unpaid.

## 1. Target

The square no-spreading theorem would say that a selected short/tall positive
receiver pulse cannot be fed by a longer/lower signed donor path without paying
a square ledger.  In normalized terminal variables, the desired form is

```math
\boxed{
\lambda
\int_{I_+}q_+(t)^2\,dt
\le
C\lambda
\int_{I_-}q_-(t)^2\,dt
+Legal^{sq}+o(1).
}
\tag{SDN.1}
```

The installed finite donor graph gives only a linear balance.  A model form is

```math
B'(t)=q_-(t)-q_+(t)-\ell(t),
\qquad
B(t)\ge0,
\qquad
\ell(t)\ge0,
\tag{SDN.2}
```

with terminal linear telescoping

```math
\int q_+(t)\,dt
\le
\int q_-(t)\,dt
B(t_-)-B(t_+)
+\int \ell(t)\,dt .
\tag{SDN.3}
```

This is the algebraic core of local donor balance.  It controls total transfer
and storage.  It does not control square transfer.

## 2. Exact scalar spreading model

Fix a large scale parameter \(\lambda\).  Let

```math
h=\lambda^{-2},
\qquad
H=\lambda^{-1},
\qquad
A=\lambda^{1/2}.
\tag{SDN.4}
```

Put the donor input on the longer interval \([-H,-h]\):

```math
q_-(t)
=
{Ah\over H-h}{\bf 1}_{[-H,-h]}(t),
\tag{SDN.5}
```

and put the selected receiver output on the terminal heat interval \([-h,0]\):

```math
q_+(t)
=
A{\bf 1}_{[-h,0]}(t).
\tag{SDN.6}
```

Set \(\ell=0\) and define

```math
B(t)
=
\int_{-H}^{t}(q_-(s)-q_+(s))\,ds.
\tag{SDN.7}
```

Then \(B(-H)=B(0)=0\), \(B(t)\ge0\), and `(SDN.2)` holds exactly.  The donor
builds a small linear reserve before the receiver drains it.

The total masses are equal:

```math
\int q_+\,dt
=
Ah
=
\int q_-\,dt.
\tag{SDN.8}
```

The storage height is small:

```math
\sup_t B(t)=Ah=\lambda^{-3/2}\to0.
\tag{SDN.9}
```

So even a vanishing linear donor reservoir can feed the receiver's linear mass.

## 3. Square payment fails

The receiver square cost is

```math
\lambda\int q_+^2\,dt
=
\lambda A^2h
=1.
\tag{SDN.10}
```

The donor square cost is

```math
\lambda\int q_-^2\,dt
=
\lambda {A^2h^2\over H-h}
\sim
\lambda^{-1}
\to0.
\tag{SDN.11}
```

Thus the same object has:

```math
\boxed{
\text{exact linear donor balance}
\quad\text{and}\quad
\text{vanishing donor square cost}
\quad\text{but}\quad
\text{order-one receiver square cost.}
}
\tag{SDN.12}
```

This is not a Navier-Stokes solution.  It is a sharp obstruction to deriving
`(SDN.1)` from the installed linear donor ledger `(SDN.2)`--`(SDN.3)`.

## 4. Why participation does not repair this by itself

The packet participation identity couples feed, drain, pressure response,
neighbor exchange, dilation, and legal loss.  In normalized heat variables it
has the form

```math
M'(s)+D(s)=F(s)+Legal(s),
\tag{SDN.13}
```

where \(F\) is the signed sum of the critical interface terms.

To rule out the model above, one needs a strict gap:

```math
F(s)\le(1-\gamma)D(s)+Legal(s),
\qquad
\gamma>0,
\tag{SDN.14}
```

or an equivalent square-reserve inequality.  The current participation law
does not supply `(SDN.14)`.  On heat scale, feed and drain live on the same
clock, so the neutral case

```math
F(s)=D(s)
\tag{SDN.15}
```

is not excluded by the identity alone.

Thus participation gives the correct ontology: the receiver is not private.
But square no-spreading needs a strict quantitative asymmetry inside that
coupled balance.

## 5. What would prove the theorem

The donor-spreading branch is closed by any one of the following genuinely
strong inputs.

First, a square storage law:

```math
\boxed{
\lambda q_+(t)^2
\le
C\lambda q_-(t)^2
-{d\over dt}\Psi(t)
+Legal^{sq}(t),
\qquad
\Psi\ge -C.
}
\tag{SDN.16}
```

This would telescope in square currency, not only in linear mass.

Second, a normalized height/thickness throttle:

```math
\boxed{
\|q_+\|_{L^\infty(I_+)}
\le
C\,{1\over |I_-|}
\int_{I_-}q_-(t)\,dt
+Legal.
}
\tag{SDN.17}
```

This forbids the short/tall receiver from being fed by a much longer/lower
donor.

Third, a strict heat-clock gap:

```math
\boxed{
\text{selected feed}
\le
(1-\gamma)\,\text{drain/return}
+Legal.
}
\tag{SDN.18}
```

Fourth, endpoint uniform integrability or source-square control on the actual
selected carrier:

```math
\boxed{
\sup_m\int_{-1}^{0}a_m(s)^2\,ds<\infty
\quad\Longrightarrow\quad
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
}
\tag{SDN.19}
```

Fifth, a rigid Zeno source-residue theorem turning the spreading branch into
an impossible terminal profile.

## 6. Exact reduction

At current input strength,

```math
\boxed{
SquareDonorNoSpreading.A
\not\Leftarrow
LocalDonorBalance.A
+EntranceLeafDecay.A
+TerminalDonorGraphDecomposition.A
+ParticipationIdentity.A.
}
\tag{SDN.20}
```

The exact remaining alternatives are:

```math
\boxed{
\begin{gathered}
SquareStorageBalance.A,\\
ActiveWindowHeight.A,\\
ParticipationStrictClockGap.A,\\
SelectedCarrierEndpointUI.A,\\
SourceSquareReserve.A,\\
StrictRescaledNoWasteLyapunov.A,\\
\text{or rigid Zeno source-residue production.}
\end{gathered}
}
\tag{SDN.21}
```

## Verdict

`SquareDonorNoSpreading.A` is not an installed theorem and is not a consequence
of the finite donor graph.

The finite donor graph pays linear mass.  The selected square budget pays
height squared.  The heat-scale pulse has vanishing linear mass, vanishing
linear storage, and order-one normalized square cost.  That is why the
forward-gold route cannot close this branch without a new square-strength
coercive input.
