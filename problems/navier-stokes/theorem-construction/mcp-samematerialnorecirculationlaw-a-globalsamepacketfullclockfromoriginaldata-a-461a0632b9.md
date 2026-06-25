# Same-material no-recirculation law attempt

Status: failed unconditional discharge; corrected live theorem sharpened.

## Target

Prove the same-material no-recirculation estimate

```math
\int_0^{T^*}\sum_j [m_j(t)]_+\,dt
\le
C(u_0)+\text{already finite viscous/top-strain/legal terms}.
```

Here \(m_j(t)\) is the signed moving same-shell material pressure-strain / Hodge-interface pump from the weighted material shell reservoir identity.

## 1. Corrected primitive identity

For the weighted material energy

```math
E_w(t)=\frac12\sum_j w_j\|v_j(t)\|_{L_a^2}^2,
```

the exact identity is

```math
\frac{d}{dt}E_w(t)+\nu D_w(t)=m_w(t).
```

With \(X_0=-E_w\), the global rectified identity is

```math
dX_0+[m_w]_+dt
=
\nu D_wdt+[-m_w]_+dt.
```

Thus \(-E_w\) is the signed primitive of the interface pump, and the correction shows the exact wall: positive pump is traded against viscosity and negative pump. The primitive controls rectified positive action only after negative pump/recirculation is controlled.

## 2. Two-shell recirculation obstruction to a pure signed donor proof

The signed donor law gives, for paired transfers,

```math
T_{j\leftarrow \ell}^{(k)}+T_{\ell\leftarrow j}^{(k)}=0.
```

A two-shell reservoir captures the algebra:

```math
E_H'(t)=b(t),
\qquad
E_L'(t)=-b(t),
\qquad
E_H(t)+E_L(t)=E_0.
```

The signed reservoir remains bounded for all time. The rectified positive transfer is

```math
\int_0^{T^*}[b(t)]_+dt.
```

By choosing alternating positive and negative pulses with decreasing support near \(T^*\), the signed storage stays bounded while the rectified positive transfer can be infinite. This model respects the donor symmetry and finite net reservoir. Therefore signed same-fluid attachment alone gives no finite rectified no-recirculation law.

## 3. Weighted-energy and donor cross-storage attempts

The current-state candidate

```math
X_0=-E_w
```

has the correct signed differential primitive, since it differentiates into \(-m_w+\nu D_w\). Its lower bound is equivalent to a bound on \(E_w\), which is the continuation-depth record.

A saturated storage

```math
X_\Phi=-\Phi(E_w),\qquad 0\le \Phi'\le1,
```

keeps a lower bound only when \(\Phi'\) decays at high record size. That decay also removes fixed-fraction payment of the pump. Full payment requires \(\Phi'\ge c>0\) at arbitrarily large record size, which makes \(X_\Phi\) unbounded below.

A pairwise donor cross-storage with coefficients comparable to \(w_j-w_\ell\) recreates the same weighted record. Reducing the coefficients restores a lower bound and loses full payment of the moving pressure-strain pump.

## 4. What a valid no-recirculation proof must add

A proof of the target estimate must supply a Navier-Stokes-specific bounded-variation law for the moving pressure-strain interface. The required statement has the form

```math
\operatorname{Var}_{(0,T^*)}^{+}(m_{interface})
\le
C(u_0)+\text{viscous/top-strain/legal terms already installed}.
```

Equivalently, the negative pump term in the corrected primitive identity must be paid:

```math
\int_0^{T^*}[-m_w(t)]_+dt
\le
C(u_0)+\text{already finite terms}.
```

Then the identity

```math
d(-E_w)+[m_w]_+dt=\nu D_wdt+[-m_w]_+dt
```

would give the desired positive-pump bound, provided the lower bound for \(-E_w\) is replaced by this variation law rather than by continuation-depth boundedness.

## 5. Verdict

The no-recirculation law remains the exact live theorem. The installed inputs prove same-material attachment, signed donor symmetry, weighted material energy accounting, fixed-annulus tails, fixed-collar service, top-strain/frame/collar payment, and pressure/RHS interface identification. They do not prove finite rectified variation of the moving pressure-strain interface.

The current obstruction is precise:

```math
\boxed{
\text{signed same-material transfer controls net exchange, while the theorem needs rectified exchange.}
}
```

The next required theorem is a genuine same-material bounded-variation/no-recirculation law for the pressure-strain interface, beyond any current-state weighted-energy primitive.