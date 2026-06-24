---
theorem_id: forward-gold-uniform-terminal-zeno-annular-return-proof-20260623
status: conditional-on-finite-full-clock-from-signed-smooth-packet-coercivity
logical_landing_node: uniform_terminal_zeno_annular_return
edge_effect: >-
  Proves the daughter-packet implication for the uniform terminal-Zeno annular
  return theorem, conditional on a finite full same-packet clock. If the
  normalized later-annular stress/strain return fails to have a terminal
  modulus, then each bad terminal strip becomes a smaller daughter heat-scale
  packet. The counting contradiction is valid only after the daughter annular
  return is admitted to a full same-packet prelimit clock that is already known
  to be finite. The exactness audit shows that the finiteness of that clock
  still depends on the signed smooth same-packet commutator/coercivity theorem.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-material-annular-return-attachment-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-later-annular-return-modulus-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-infinite-material-zeno-stress-chain-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-same-material-dyadic-packet-overlap-selection-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
---

# Uniform Terminal-Zeno Annular Return Conditional Proof

Date: 2026-06-23

## 0. The theorem

For the retained same-material annular return density

```math
\widehat\rho_{A,m}(s)
=
2\nu\int \phi_m |S_y(V_m)|^2\,dy
+
\left|\int V_m\cdot(-Q_mI+2\nu S_y(V_m))\nabla_y\phi_m\,dy\right|,
\tag{UZR.1}
```

the uniform terminal-Zeno modulus is

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
\int_{-\theta}^{0}\widehat\rho_{A,m}(s)\,ds
=0.
}
\tag{UZR.2}
```

The proof uses the pay-it-back-later identity already installed: the center
storage/overlap pulse is attached to the same transported material annulus.
The counting step is not the raw physical stress-work estimate.  Raw physical
stress-work gives only the discounted scale budget.  The daughter argument uses
the full same-packet prelimit clock produced by the smooth master balance.

Define the full same-packet clock measure on the retained branch by

```math
d\Omega_{N,m}
:=
dA_{4B,N,m}
+
C_{log}d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
d\mathcal L_{4B,N,m}.
\tag{UZR.3}
```

After relaxed passage this becomes the limiting full clock

```math
d\Omega_N
:=
dA_{4B,N}
+
C_{log}d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
+
d\mathcal L_{4B,N}.
\tag{UZR.4}
```

The signed smooth-packet master balance would give

```math
\int_{\sigma_0}^{\infty}d\Omega_N<\infty.
\tag{UZR.5}
```

The needed same-packet admission is

```math
\widehat\rho_{A,m}(s)\,ds
\le
C\,d\Omega_{N,m}(s)
+
dR^0_{N,m}(s),
\tag{UZR.6}
```

with \(dR^0_{N,m}\) uniformly summable by the residual normal form.

This is the load-bearing point.  The contradiction below is a proof only with
`(UZR.5)` and `(UZR.6)`.  The annular identity supplies `(UZR.6)` on the same
material packet; the current open theorem is the signed smooth-packet
commutator/coercivity estimate needed to make `(UZR.5)` true.

## 0.1. Why the admission is legitimate on the retained branch

At the smooth prelimit level the transported cutoff identity

```math
\frac{d}{ds}M_m(s)
+
2\nu\int \phi_m |S_y(V_m)|^2\,dy
=
-\int V_m\cdot(-Q_mI+2\nu S_y(V_m))\nabla_y\phi_m\,dy
\tag{UZR.7}
```

is the zero-rung local-energy/stress part of the same transported material
Navier--Stokes packet used in the prelimit master balance.  The positive
annular return density `(UZR.1)` is placed in the clock before the four-current
cancellation.  Its pieces are:

```math
2\nu\int \phi_m|S_y(V_m)|^2\,dy
\subset
d\mathcal L_{4B,N,m},
\tag{UZR.8}
```

and

```math
\left|\int V_m\cdot(-Q_mI+2\nu S_y(V_m))\nabla_y\phi_m\,dy\right|\,ds
\subset
C\,dA_{4B,N,m}
+
C\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
dR^0_{N,m}.
\tag{UZR.9}
```

The stress-work term is total same-packet exchange, not signed net exchange.
That is why it is entered into the positive prelimit clock before any limiting
interface defect can appear.  Summing `(UZR.8)` and `(UZR.9)` gives `(UZR.6)`.

## 1. Assume the uniform modulus fails

Assume `(UZR.2)` fails.  Then there are

```math
\varepsilon_0>0,\qquad
\theta_j\downarrow0,\qquad
m_j\to\infty
\tag{UZR.10}
```

such that

```math
\int_{-\theta_j}^{0}\widehat\rho_{A,m_j}(s)\,ds
\ge
\varepsilon_0 .
\tag{UZR.11}
```

Let the parent heat-scale radius be \(r_j\).  The bad strip
\((-\theta_j,0]\) has physical time thickness \(\theta_j r_j^2\).  Define the
daughter radius

```math
\rho_j:=r_j\sqrt{\theta_j}.
\tag{UZR.12}
```

and rescale the same material annulus on that daughter heat scale:

```math
\widetilde V_j(\tau,z)
=
\rho_j\,
u(t_j+\rho_j^2\tau,x_j+\rho_j z),
\qquad
\tau\in(-1,0].
\tag{UZR.13}
```

The transported cutoff is the same material cutoff pulled back to the daughter
variables.  No new carrier is introduced.

## 2. Scale conversion preserves the normalized return mass

Set

```math
s=\theta_j\tau .
\tag{UZR.14}
```

The Navier--Stokes scaling gives exactly

```math
\int_{-1}^{0}
\widehat\rho_{\widetilde A,j}(\tau)\,d\tau
=
\int_{-\theta_j}^{0}
\widehat\rho_{A,m_j}(s)\,ds .
\tag{UZR.15}
```

Therefore `(UZR.11)` becomes

```math
\int_{-1}^{0}
\widehat\rho_{\widetilde A,j}(\tau)\,d\tau
\ge
\varepsilon_0 .
\tag{UZR.16}
```

This is the key point: a terminal strip of the parent packet is not a vanishing
object.  It is a full daughter heat-scale packet carrying the same normalized
annular return.

## 3. Daughter packets force full-clock mass

By the same-material annular attachment identity and the full-clock admission
`(UZR.6)`, `(UZR.16)` implies

```math
\int_{\widetilde P_j}d\Omega_N
\ge
c_0\varepsilon_0
-
\int_{\widetilde P_j}dR_{legal}.
\tag{UZR.17}
```

The legal residual is uniformly summable and has zero terminal tail after the
residual normal form.  Passing to a tail subsequence gives

```math
\int_{\widetilde P_j}dR_{legal}
\le
\frac12 c_0\varepsilon_0 .
\tag{UZR.18}
```

Hence every sufficiently late bad daughter packet satisfies

```math
\boxed{
\int_{\widetilde P_j}d\Omega_N
\ge
\eta_0
}
\qquad
\eta_0:=\frac12 c_0\varepsilon_0>0.
\tag{UZR.19}
```

## 4. Separated daughter subfamily

The daughter log-scales are

```math
\Sigma_j
=
-\log \rho_j
=
-\log r_j+\frac12\log\frac1{\theta_j}.
\tag{UZR.20}
```

Since \(m_j\to\infty\) and \(\theta_j\downarrow0\), we have

```math
\Sigma_j\to\infty .
\tag{UZR.21}
```

Choose a subsequence, still indexed by \(j\), such that

```math
|\Sigma_j-\Sigma_k|\ge 4
\qquad (j\ne k).
\tag{UZR.22}
```

Apply `SameMaterialDyadicPacketOverlapSelection.A` to the transported daughter
annuli.  The count is on the same-material log-scale clock atlas, not on naked
physical cylinders.  Let \(K\) be the material-atlas overlap constant.  Then

```math
\sum_{j=J}^{M}
\int_{\widetilde P_j}d\Omega_N
\le
K
\int_{\Sigma_J-c_\sigma}^{\infty}d\Omega_N.
\tag{UZR.23}
```

## 5. Contradiction with the finite four-body clock

The prelimit master balance gives the finite unweighted full clock:

```math
\int_{\sigma_0}^{\infty}d\Omega_N<\infty.
\tag{UZR.24}
```

Combining `(UZR.19)` and `(UZR.23)` gives, for \(M>J\),

```math
(M-J+1)\eta_0
\le
K
\int_{\Sigma_J-c_\sigma}^{\infty}d\Omega_N.
\tag{UZR.25}
```

The right side is finite and tends to zero as \(J\to\infty\), while the left
side can be made arbitrarily large by taking \(M\to\infty\).  This
contradiction proves `(UZR.2)` conditional on that finite full-clock producer.

## 6. Consequence for the terminal overlap

The installed terminal-overlap attachment gives

```math
\omega_m^{cs}((-\theta,0])
\le
\int_{-\theta}^{0}\widehat\rho_{A,m}(s)\,ds
+
\int_{-\theta}^{0}r_m^{mat}(s)\,ds .
\tag{UZR.26}
```

For transported material cutoffs, \(r_m^{mat}=0\).  For selected cutoffs, the
materiality term is a selector/collar legal residual and is uniformly terminal
absolutely continuous by the residual normal form.  Therefore `(UZR.2)` implies

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
\omega_m^{cs}((-\theta,0])
=0.
}
\tag{UZR.27}
```

So the terminal last-time storage/overlap contribution has no surviving
endpoint atom on the same material history.

## 7. Conditional route consequence

The infinite terminal Zeno version of the later annular return is reduced to the
finite full-clock producer:

```math
\text{failure of uniform annular return}
\Rightarrow
\text{infinitely many daughter packets with fixed full-clock mass}
\Rightarrow
\int d\Omega_N=\infty,
```

contradicting the finite full-clock master balance.

Together with the retained critical-packet lower-bound theorem and the
material-record clock, the branch split becomes:

```math
\begin{array}{ll}
\text{storage/overlap pulse on the material history}
&\Rightarrow
\text{uniform annular-return contradiction},\\[1mm]
\text{retained non-gauge critical packet on the material history}
&\Rightarrow
\text{A}_{4B}\text{ lower-bound contradiction},\\[1mm]
\text{material record or interface growth on the material history}
&\Rightarrow
\text{full-clock contradiction}.
\end{array}
\tag{UZR.28}
```

Thus the daughter-packet refinement is the correct terminal-Zeno annular return
mechanism.  The route is not closed by this note alone; it closes after the
signed smooth same-packet commutator/coercivity theorem proves the finite full
clock.
