---
theorem_id: forward-gold-square-storage-from-linear-ledger-direct-test-20260620
status: direct-linear-ledger-to-square-storage-test-complete-not-proved
logical_landing_node: square_storage_balance_from_linear_ledger
edge_effect: "Tests whether the square storage law left by SquareDonorNoSpreading.A can be obtained from the installed linear donor reservoir / local donor-balance ledger. It cannot. The scalar spreading model has vanishing linear storage height and vanishing linear storage variation while retaining order-one normalized square output. Any square storage functional dominated by the existing linear reservoir is too small; an unrestricted square storage law would be a new unweighted critical-action reserve, not a consequence of the donor ledger."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-donor-no-spreading-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-reserve-signed-balance-merge-closeout-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-ladder-closeout-20260619.md
downstream_consequence: "Do not list SquareStorageBalance.A as a lower-level escape hatch unless it is supplied by a genuinely new square-sized state. The existing linear donor storage, finite donor telescoping, local energy storage, and first-moment source ledgers cannot produce the square drop."
---

# MPP Forward-Gold Square Storage From Linear Ledger Direct Test

Date: 2026-06-20

## Status

Direct test complete.  A square storage law is not obtained from the installed
linear donor ledger.

This does not disprove every possible square storage theorem.  It proves that
the storage object would have to be new and square-sized.  It cannot be the
existing linear donor reservoir in disguised form.

## 1. The desired square storage law

The useful square law would be

```math
\lambda q_+(t)^2
\le
C\lambda q_-(t)^2
-{d\over dt}\Psi(t)
+Legal^{sq}(t),
\qquad
\inf_t\Psi(t)>-\infty .
\tag{SSL.1}
```

After integration,

```math
\lambda\int q_+^2
\le
C\lambda\int q_-^2
\Psi(t_-)-\Psi(t_+)
+Legal^{sq}.
\tag{SSL.2}
```

So to pay a retained terminal heat-scale pulse, \(\Psi\) must drop by an
order-one amount in normalized square currency.

The installed donor ledger has only a linear reservoir:

```math
B'(t)=q_-(t)-q_+(t)-\ell(t),
\qquad
B(t)\ge0.
\tag{SSL.3}
```

It gives

```math
\int q_+
\le
\int q_-
B(t_-)-B(t_+)
+\int\ell.
\tag{SSL.4}
```

The question is whether `(SSL.1)` follows from `(SSL.3)` plus ordinary bounds
on \(B\).

## 2. The same spreading model defeats linear storage

Use the model from the no-spreading test:

```math
h=\lambda^{-2},
\qquad
H=\lambda^{-1},
\qquad
A=\lambda^{1/2},
\tag{SSL.5}
```

```math
q_-(t)
=
{Ah\over H-h}{\bf 1}_{[-H,-h]}(t),
\qquad
q_+(t)
=
A{\bf 1}_{[-h,0]}(t),
\tag{SSL.6}
```

and

```math
B(t)=\int_{-H}^{t}(q_-(s)-q_+(s))\,ds.
\tag{SSL.7}
```

Then

```math
B(-H)=B(0)=0,
\qquad
B(t)\ge0,
\qquad
\sup_tB(t)=Ah=\lambda^{-3/2}\to0.
\tag{SSL.8}
```

The total variation of the linear storage is also small:

```math
\operatorname{Var}_{[-H,0]}B
=
2Ah
=
2\lambda^{-3/2}\to0.
\tag{SSL.9}
```

But the square costs satisfy

```math
\lambda\int q_+^2\,dt=1,
\qquad
\lambda\int q_-^2\,dt\to0.
\tag{SSL.10}
```

Thus every storage functional whose total possible drop is controlled by the
existing linear reservoir size or variation,

```math
|\Psi(t_-)-\Psi(t_+)|
\le
C\Bigl(\sup_t B(t)+\operatorname{Var}B+\int\ell\Bigr),
\tag{SSL.11}
```

has only \(o(1)\) drop on this model and cannot imply `(SSL.2)`.

## 3. Local energy storage has the same scale defect

The same issue appears for ordinary packet energy.  A heat-scale critical
packet at radius \(r=\lambda^{-1}\) has physical energy of order \(r\).  Its
normalized critical action can be order one on one heat window.

Thus any candidate \(\Psi\) satisfying an energy-dominated bound

```math
|\Psi(t)|
\le
C\,E_{phys}(Q_\lambda)+Legal_\lambda
=
O(\lambda^{-1})+Legal_\lambda
\tag{SSL.12}
```

cannot pay

```math
\lambda\int q_+^2\,dt\simeq1.
\tag{SSL.13}
```

The square storage object must carry the unweighted heat-scale critical
currency itself.  It cannot be recovered from first-moment energy, first-moment
source mass, or the linear donor reservoir.

## 4. What an actual square storage theorem would mean

An unrestricted theorem of the form `(SSL.1)` is not a bookkeeping theorem.  It
is one of the main missing forward-gold suppliers:

```math
\boxed{
SquareStorageBalance.A
\simeq
UnweightedTerminalCriticalActionReserve.A
}
\tag{SSL.14}
```

in a new storage variable.

To make it noncircular, the proof would have to identify a specific
Navier-Stokes quantity \(\Psi\) that is:

```math
\begin{gathered}
\text{lower bounded uniformly on terminal heat scales},\\
\text{differentiable or telescoping across the selected family},\\
\text{large enough to drop by the selected square action},\\
\text{and not merely bounded by physical energy or linear donor mass.}
\end{gathered}
\tag{SSL.15}
```

The existing pressure-corrected, local-energy, commutator, cubic-corrector,
pressure-memory, and donor-reservoir notes do not provide such a quantity.

## Verdict

The linear donor ledger cannot be upgraded into a square storage law.

The exact surviving statement is:

```math
\boxed{
\text{square storage must be a new unweighted critical-action object,}
\quad
\text{not the old linear donor reservoir.}
}
\tag{SSL.16}
```

So `SquareStorageBalance.A` is either another name for
`SourceSquareReserve.A` / `StrictRescaledNoWasteLyapunov.A` / compact
critical-residue rigidity, or it is still uninstalled.
