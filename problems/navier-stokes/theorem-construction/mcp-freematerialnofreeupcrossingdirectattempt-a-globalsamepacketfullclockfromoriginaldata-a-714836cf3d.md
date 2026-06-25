# FreeMaterialNoFreeUpcrossingDirectAttempt.A

Status: failed direct discharge.  Signed donor attachment and same-material transaction structure are installed; noncircular rectified upcrossing coercivity is not.

## 0. Target

Prove the no-free-upcrossing estimate

```math
\sum_j [m_j^{PLS,free}]_+dt
\le
C\,dD_N^{vis}
+C\,d\Omega_N^{top\ strain}
+C\,d\Omega_N^{annular}
+dR_N^{legal}
+dR_N^{recirc,finite}.
\tag{NFU.1}
```

Equivalently, prove finite rectified free-material shell-transfer action:

```math
\int_0^{T^*}\sum_j [m_j^{PLS,free}(t)]_+dt<\infty.
\tag{NFU.2}
```

## 1. Installed signed shell reservoir

The orthogonal shell identity gives, for triadic transfers,

```math
T_{j\leftarrow \ell}^{(k)}+T_{\ell\leftarrow j}^{(k)}=0.
\tag{NFU.3}
```

For increasing continuation-depth weights \(w_j\),

```math
\mathcal T_w
={1\over2}\sum_{j,k,\ell}(w_j-w_\ell)T_{j\leftarrow\ell}^{(k)}.
\tag{NFU.4}
```

This proves attachment: every upward weighted gain has a same-fluid donor partner.  It does not prove finite one-way action from original data.  The toy two-shell model

```math
E_H'=b(t),\qquad E_L'=-b(t),\qquad E_H+E_L=E_0
```

is only the warning that signed cancellation is weaker than rectified
variation.  The recirculatory interpretation of that model has already been
spent by the PLS recirculation packing closure.  The remaining branch is
positive upcrossing which becomes one-way continuation-depth material-record
growth.

## 2. Shell-potential attempt

A decreasing shell potential

```math
\mathscr A_a=\sum_j a_j e_j
```

has the correct sign for upward transfer if \(a_j\) decreases with \(j\).  To pay a uniform normalized toll at arbitrarily high shells, adjacent drops must obey

```math
a_j-a_{j+1}\ge c>0
```

along the active range.  Then \(a_j\to-\infty\), and \(\mathscr A_a\) is not bounded below on the continuation-depth state space.  Bounded or saturated \(a_j\) restores lower boundedness but loses uniform high-shell payment.

Therefore no static scalar shell potential proves `(NFU.1)`.

## 3. Coupled PLS symmetrizer attempt

The only viable storage class is a coupled PLS symmetrizer

```math
\mathscr A_N=\langle H_NY_N,Y_N\rangle_{PLS},
\qquad
H_N=I+K_N,
```

with

```math
\mathscr A_N\ge -C_N(u_0),
\qquad
d\mathscr A_N+c_Nd\Omega_N^{PLS,graph}\le dR_N^{legal}.
```

The exact operator inequality required is

```math
\dot H_N+H_N\mathcal L_N^{PLS}+(\mathcal L_N^{PLS})^*H_N
\le
-c_N\mathcal Q_N^{PLS}+Legal.
\tag{NFU.5}
```

Installed same-material identities show that pressure, Hodge/Stokes projection, coefficient/frame, transported collar, annular stress-work, viscosity, and strain are one transaction.  They do not produce `(NFU.5)` with \(H_N\) bounded below/noncircular.

The formal Riccati/Gramian solution of `(NFU.5)` exists only as a future observability object:

```math
H_N(t)=\int_t^{T}U(s,t)^*\mathcal Q_N^{PLS}(s)U(s,t)ds+\cdots ,
```

whose boundedness is equivalent to the desired finite action.  That is circular.

## 4. Direct no-free-upcrossing obstruction

A positive free-material shell-transfer event can be classified as:

1. viscous high-shell residence;
2. top-strain/frame residence;
3. annular/interface service;
4. legal/collar exit;
5. recirculatory return;
6. unresolved one-way graph-compatible shell-transfer upcrossing.

Items 1--5 are paid by installed or separately finite clocks.  Item 6 is exactly `(NFU.1)`.  The current installed identities show that item 6 is same-material and signed-attached; they do not prove a finite total bound for one-way upcrossing of the continuation-depth material record.

## Verdict

`FreeMaterialNoFreeUpcrossing.A` is the exact remaining theorem after pressure/collar graph replacement.  It is not discharged by signed shell transfer, scalar shell potentials, or the currently installed coupled symmetrizer identities.

The necessary noncircular line is:

```math
\boxed{
\mathcal I_N+dX_{PLS,N}
+c_Nd\Omega_N^{PLS,graph}
\le
\varepsilon dD_N^{vis}
+\varepsilon dD_N^{rad}
+dR_N^{legal},
}
```

for a bounded-below same-material cross-storage \(X_{PLS,N}\).  Without that line, graph-compatible full-clock finiteness is still open.
