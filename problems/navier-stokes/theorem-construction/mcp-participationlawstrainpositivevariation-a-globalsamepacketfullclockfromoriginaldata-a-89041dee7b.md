# Participation-law--strain positive variation attempt

Status: failed unconditional discharge; exact theorem frontier sharpened.

## Target

Prove

```math
\operatorname{Var}^+_{(0,T^*)}(m^{PLS})<\infty,
```

where `PLS` denotes the participation-law--strain interface on the original transported Navier-Stokes material history.

The carrier is the full participation law coupled to strain:

```math
(v,q,A,G),\quad L_G=-\operatorname{div}_a(G\nabla_a),\quad \mathbb P_A,\quad T=-pI+2\nu S,\quad S,\quad \phi,\quad m_j^{PLS}.
```

Pressure/RHS, Helmholtz--Leray/Stokes projection, coefficient motion, collar motion, Cauchy stress, viscosity, incompressibility, and strain are coordinates of the same participation-law carrier.

## 1. Correct primitive identity

For the weighted material record

```math
E_w(t)=\frac12\sum_jw_j\|v_j(t)\|_{L_a^2}^2,
```

the same-material shell identity gives

```math
\frac{d}{dt}E_w(t)+\nu D_w(t)=m_w^{PLS}(t).
```

Therefore, globally,

```math
d(-E_w)+[m_w^{PLS}]_+dt
=
\nu D_wdt+[-m_w^{PLS}]_+dt.
```

This identity makes the live obstruction exact.  The signed primitive trades positive participation-law--strain service against negative service plus viscosity.  Finite positive variation follows only after the negative side or total rectified variation of the same interface is controlled.

## 2. Signed donor law gives net control

The same-fluid donor law gives

```math
T_{j\leftarrow\ell}^{(k)}+T_{\ell\leftarrow j}^{(k)}=0.
```

This proves same-material attachment and net exchange.  The positive variation theorem requires rectified exchange:

```math
\int_0^{T^*}\sum_j[m_j^{PLS}(t)]_+dt.
```

The two-shell model gives the algebraic obstruction:

```math
E_H'(t)=b(t),\qquad E_L'(t)=-b(t),\qquad E_H(t)+E_L(t)=E_0.
```

The finite reservoir controls the signed total.  Repeated alternating transfer can make

```math
\int_0^{T^*}[b(t)]_+dt
```

arbitrarily large while the net reservoir stays finite.  The same donor symmetry alone therefore supplies no finite positive variation theorem.

## 3. Candidate storages tested

The current-state primitive

```math
X_0=-E_w
```

has the correct signed differential.  Its lower bound is the continuation-depth weighted record bound.

A saturation

```math
X_\Phi=-\Phi(E_w)
```

keeps a lower bound only by reducing \(\Phi'\) at large record size.  That reduction loses uniform payment of the PLS service.

A pairwise donor cross-storage with coefficients comparable to \(w_j-w_\ell\) recreates the weighted record.  Coefficient truncation restores a lower bound and loses full rectified payment.

## 4. Exact missing theorem

A valid proof must add a Navier-Stokes-specific bounded-variation law for the full participation law:

```math
\boxed{
\operatorname{Var}^+_{(0,T^*)}(m^{PLS})
\le
C(u_0)+\text{finite viscous/top-strain/legal terms}.
}
```

Equivalent form:

```math
\boxed{
\int_0^{T^*}[-m_w^{PLS}(t)]_+dt
\le
C(u_0)+\text{finite terms}.
}
```

Inserted into

```math
d(-E_w)+[m_w^{PLS}]_+dt=\nu D_wdt+[-m_w^{PLS}]_+dt,
```

this would give the desired positive-variation estimate.

## 5. Verdict

The installed material identities establish the correct carrier, exact signed primitive, same-fluid donor law, pressure/RHS-Helmholtz--Leray participation coupling, fixed-annulus tails, fixed-collar service, and top-strain/frame/collar payments.

They leave the BV/no-recirculation law for the full participation-law--strain interface as the live producer.  The statement

```math
\operatorname{Var}^+_{(0,T^*)}(m^{PLS})<\infty
```

remains equivalent to the finite full material service clock at the current frontier.