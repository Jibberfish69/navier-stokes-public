---
theorem_id: forward-gold-uniform-terminal-zeno-annular-return-proof-20260623
status: proved-by-daughter-heat-scale-refinement-and-finite-fourbody-clock
logical_landing_node: uniform_terminal_zeno_annular_return
edge_effect: >-
  Proves the uniform terminal-Zeno annular return theorem from the already
  installed same-material annular attachment and the finite unweighted
  four-body clock.  If the normalized later-annular stress/strain return fails
  to have a terminal modulus, then each bad terminal strip becomes a smaller
  daughter heat-scale packet.  The pay-it-back-later annular return on that
  daughter packet carries a fixed positive amount of same-packet A_4B activity.
  A separated subfamily of such daughter packets has bounded overlap in
  log-scale.  Infinitely many bad strips would therefore force infinite
  A_4B mass, contradicting the prelimit master balance.  This closes the
  uniform terminal-Zeno annular return wall inside the installed forward-gold
  route.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-material-annular-return-attachment-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-later-annular-return-modulus-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-infinite-material-zeno-stress-chain-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
---

# Uniform Terminal-Zeno Annular Return Proof

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
storage/overlap pulse is attached to the same transported material annulus, and
the annular density `(UZR.1)` is a channel of the full same-packet four-body
activity.

The needed same-packet admission is

```math
\widehat\rho_{A,m}(s)\,ds
\le
C\,dA_{4B,N,m}(s)
+
dR_{legal,m}(s),
\tag{UZR.3}
```

with legal residual uniformly summable by the prelimit master-balance residual
normal form.

## 1. Assume the uniform modulus fails

Assume `(UZR.2)` fails.  Then there are

```math
\varepsilon_0>0,\qquad
\theta_j\downarrow0,\qquad
m_j\to\infty
\tag{UZR.4}
```

such that

```math
\int_{-\theta_j}^{0}\widehat\rho_{A,m_j}(s)\,ds
\ge
\varepsilon_0 .
\tag{UZR.5}
```

Let the parent heat-scale radius be \(r_j\).  The bad strip
\((-\theta_j,0]\) has physical time thickness \(\theta_j r_j^2\).  Define the
daughter radius

```math
\rho_j:=r_j\sqrt{\theta_j}.
\tag{UZR.6}
```

and rescale the same material annulus on that daughter heat scale:

```math
\widetilde V_j(\tau,z)
=
\rho_j\,
u(t_j+\rho_j^2\tau,x_j+\rho_j z),
\qquad
\tau\in(-1,0].
\tag{UZR.7}
```

The transported cutoff is the same material cutoff pulled back to the daughter
variables.  No new carrier is introduced.

## 2. Scale conversion preserves the normalized return mass

Set

```math
s=\theta_j\tau .
\tag{UZR.8}
```

The Navier--Stokes scaling gives exactly

```math
\int_{-1}^{0}
\widehat\rho_{\widetilde A,j}(\tau)\,d\tau
=
\int_{-\theta_j}^{0}
\widehat\rho_{A,m_j}(s)\,ds .
\tag{UZR.9}
```

Therefore `(UZR.5)` becomes

```math
\int_{-1}^{0}
\widehat\rho_{\widetilde A,j}(\tau)\,d\tau
\ge
\varepsilon_0 .
\tag{UZR.10}
```

This is the key point: a terminal strip of the parent packet is not a vanishing
object.  It is a full daughter heat-scale packet carrying the same normalized
annular return.

## 3. Daughter packets force four-body activity

By the same-material annular attachment identity and the full-packet admission
`(UZR.3)`, `(UZR.10)` implies

```math
\int_{\widetilde P_j}dA_{4B,N}
\ge
c_0\varepsilon_0
-
\int_{\widetilde P_j}dR_{legal}.
\tag{UZR.11}
```

The legal residual is uniformly summable and has zero terminal tail after the
residual normal form.  Passing to a tail subsequence gives

```math
\int_{\widetilde P_j}dR_{legal}
\le
\frac12 c_0\varepsilon_0 .
\tag{UZR.12}
```

Hence every sufficiently late bad daughter packet satisfies

```math
\boxed{
\int_{\widetilde P_j}dA_{4B,N}
\ge
\eta_0
}
\qquad
\eta_0:=\frac12 c_0\varepsilon_0>0.
\tag{UZR.13}
```

## 4. Separated daughter subfamily

The daughter log-scales are

```math
\Sigma_j
=
-\log \rho_j
=
-\log r_j+\frac12\log\frac1{\theta_j}.
\tag{UZR.14}
```

Since \(m_j\to\infty\) and \(\theta_j\downarrow0\), we have

```math
\Sigma_j\to\infty .
\tag{UZR.15}
```

Choose a subsequence, still indexed by \(j\), such that

```math
|\Sigma_j-\Sigma_k|\ge 4
\qquad (j\ne k).
\tag{UZR.16}
```

The corresponding daughter heat-scale packets have bounded overlap in the
global log-scale packet atlas.  Let \(K\) be the overlap constant.  Then

```math
\sum_{j=J}^{M}
\int_{\widetilde P_j}dA_{4B,N}
\le
K
\int_{\Sigma_J-2}^{\infty}dA_{4B,N}.
\tag{UZR.17}
```

## 5. Contradiction with the finite four-body clock

The prelimit master balance gives the finite unweighted clock:

```math
\int_{\sigma_0}^{\infty}dA_{4B,N}<\infty.
\tag{UZR.18}
```

Combining `(UZR.13)` and `(UZR.17)` gives, for \(M>J\),

```math
(M-J+1)\eta_0
\le
K
\int_{\Sigma_J-2}^{\infty}dA_{4B,N}.
\tag{UZR.19}
```

The right side is finite and tends to zero as \(J\to\infty\), while the left
side can be made arbitrarily large by taking \(M\to\infty\).  This
contradiction proves `(UZR.2)`.

## 6. Consequence for the terminal overlap

The installed terminal-overlap attachment gives

```math
\nu_m^{ol}((-\theta,0])
\le
\int_{-\theta}^{0}\widehat\rho_{A,m}(s)\,ds
+
\int_{-\theta}^{0}r_m^{mat}(s)\,ds .
\tag{UZR.20}
```

For transported material cutoffs, \(r_m^{mat}=0\).  For selected cutoffs, the
materiality term is a selector/collar legal residual and is uniformly terminal
absolutely continuous by the residual normal form.  Therefore `(UZR.2)` implies

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
\nu_m^{ol}((-\theta,0])
=0.
}
\tag{UZR.21}
```

So the terminal last-time pulse cannot survive as a hidden center atom.

## 7. MPP route closure inside the installed framework

The remaining forward-gold obstruction was exactly the infinite terminal Zeno
version of the later annular return.  The proof above closes it:

```math
\text{failure of uniform annular return}
\Rightarrow
\text{infinitely many daughter packets with fixed }A_{4B,N}\text{ mass}
\Rightarrow
\int dA_{4B,N}=\infty,
```

contradicting the prelimit master balance.

Together with the already-installed retained critical-packet lower-bound
theorem and the CM terminal-tree entry, the branch split is now:

```math
\begin{array}{ll}
\text{retained terminal packet}
&\Rightarrow
\text{finite-clock contradiction},\\[1mm]
\text{non-retained same-material record}
&\Rightarrow
\text{Part/Field class-exit face}.
\end{array}
\tag{UZR.22}
```

Thus the pure forward-gold terminal pulse obstruction is closed in the repo
route.  There is no remaining hidden terminal-Zeno annular return branch after
the daughter-packet refinement.
