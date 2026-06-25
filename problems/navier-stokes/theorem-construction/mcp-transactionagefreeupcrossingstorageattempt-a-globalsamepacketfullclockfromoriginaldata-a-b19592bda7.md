# TransactionAgeFreeUpcrossingStorageAttempt.A

Status: failed direct discharge; reduces free-material no-free-upcrossing to a native fresh-birth packing/no-reuse theorem.

## 0. Target

After graph-compatible pressure/collar replacement, the remaining positive clock is

```math
\int_0^{T^*}\sum_j [m_j^{PLS,free}(t)]_+\,dt .
\tag{TAU.1}
```

Previous notes show that signed shell transfer attaches every positive upcrossing to a same-fluid donor, but signed attachment alone does not control rectified total variation.

The transaction-age idea is to split `(TAU.1)` into:

```math
d\Omega_N^{free,+}
=
d\Omega_N^{return,+}
+d\Omega_N^{fresh,+}.
\tag{TAU.2}
```

Here `return` means the upcrossing is part of a previously born same-material recirculation/return transaction, while `fresh` means the upcrossing creates a new active high-shell material demand not already attached to a live transaction.

## 1. Return branch

The installed wrong-sign/recirculation closure already covers the return branch.  Bounded-record cycles are finite on finite intervals; accelerated cycles are paid by viscosity, top-strain/frame storage, or legal PLS service; top-frequency regeneration is itself part of the PLS service.  Thus

```math
\int_0^{T^*}d\Omega_N^{return,+}<\infty
\tag{TAU.3}
```

provided the event is genuinely a return of an existing transaction and not a new material birth relabeled as recirculation.

## 2. Fresh branch storage attempt

Try a bounded-below transaction-age storage

```math
X_N^{birth}(t)
=
\sum_{\rho\in\mathcal R_N^{free}(u_0)\text{ unspent at }t}\rho
-
\sum_{\gamma\in\Gamma_N^{fresh}\text{ active at }t}d_\gamma .
\tag{TAU.4}
```

The intended inequality is

```math
dX_N^{birth}
+c_N d\Omega_N^{fresh,+}
\le
dR_N^{legal}
+C dD_N^{vis}
+C d\Omega_N^{top\ strain}
+C d\Omega_N^{annular}.
\tag{TAU.5}
```

For `(TAU.4)` to be bounded below, every fresh upcrossing must either:

1. consume a unique finite native reserve ticket \(\rho\in\mathcal R_N^{free}(u_0)\);
2. be immediately paid by viscosity/top-strain/annular/legal service;
3. enter an already-counted return transaction.

This requires a packing/no-reuse map

```math
\iota:\Gamma_N^{fresh}\to\mathcal R_N^{free}(u_0)
\tag{TAU.6}
```

such that

```math
\sum_{\gamma\in\Gamma_N^{fresh}}\omega_\gamma
\le
C\sum_{\rho\in\mathcal R_N^{free}(u_0)}\rho
+
C\int dD_N^{vis}
+
C\int d\Omega_N^{top\ strain}
+
C\int d\Omega_N^{annular}
+
\int dR_N^{legal},
\tag{TAU.7}
```

with

```math
\sum_{\rho\in\mathcal R_N^{free}(u_0)}\rho<\infty .
\tag{TAU.8}
```

## 3. Why current inputs do not prove this

The signed donor identity supplies a same-time parent for each upcrossing, but it does not prove no-reuse of that parent.  The same lower shell energy can donate, be refilled, and donate again.  Recirculation closure controls the branch when this is an actual return cycle, but the current installed inputs do not prove that every repeated donation is either such a closed recirculation or consumes a finite native birth ticket.

Equivalently, the missing theorem is not another pressure/collar statement.  It is the free-material native birth-packing theorem:

```math
\boxed{
\text{Every fresh positive free-material upcrossing has a unique native birth charge or is paid by viscosity/top-strain/annular/legal service.}
}
\tag{TAU.9}
```

## Verdict

The transaction-age storage is the right refined shape, but it is not closed by current installed identities.  The live theorem is sharpened from `FreeMaterialNoFreeUpcrossing.A` to the native fresh-birth packing/no-reuse theorem `(TAU.9)`.