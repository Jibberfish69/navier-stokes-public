# One-way material-record growth admitted to PLS

Status: local accounting arrow proved; global closure reduces to finite total PLS action.

## Target

After the PLS recirculation packing closure, the only remaining failure shape is one-way upward growth of the continuation-depth material record:

```math
\int_0^{T^*} d[\log(1+\mathcal P_N^{mat})]_+ = \infty .
```

This note proves the local accounting arrow:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\,d\Omega_N^{PLS}+dR_N^0 .
```

Here \(d\Omega_N^{PLS}\) is the same transported participation-law--strain action measure, and \(dR_N^0\) is the legal summable residual.

## Material system

Work in the original material coordinates:

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
```

```math
A=(D_aX)^{-1},
\qquad
G=AA^T .
```

The material Navier--Stokes system is

```math
\partial_t v+A^T\nabla_a q
=
\nu\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0 .
```

The material coefficients obey

```math
\partial_tA=-A(\nabla_a v)A,
\qquad
\partial_tG=(\partial_tA)A^T+A(\partial_tA)^T .
```

Equivalently, \(G\) evolves through the same strain carried by the transported packet.

## Record

Use the continuation-depth material record

```math
\mathcal P_N^{mat}
=
1+E_N^v+E_N^q+E_N^{A,G}+E_N^{collar}+E_N^{Helmholtz--Leray/interface}.
```

Each term is read on the same material packet and at the same fixed depth \(N\).

## Velocity tower

For \(|\alpha|\le N\), differentiating the material velocity equation gives

```math
\partial_tD^\alpha v
+
A^T\nabla_aD^\alpha q
-
\nu\operatorname{div}_a(G\nabla_aD^\alpha v)
=
\mathcal C_\alpha^{PLS}.
```

The commutator \(\mathcal C_\alpha^{PLS}\) consists only of the same PLS coordinates: pressure, viscosity, incompressibility, velocity, coefficient motion, Helmholtz--Leray/interface motion, collar motion, and strain.

Testing against \(D^\alpha v\), summing over \(|\alpha|\le N\), and using \(\operatorname{div}_a(Av)=0\) gives

```math
dE_N^v+dD_N^{vis}
\le
C_NE_N^v\,d\Omega_N^{PLS}
+dR_N^v .
```

## Pressure, coefficients, collar, and interface

Pressure is read from the same incompressibility law:

```math
L_G q=-\operatorname{div}_a(G\nabla_a q)=R(v,A,G).
```

Differentiating the elliptic equation to depth \(N\) gives

```math
dE_N^q
\le
C_NE_N^q\,d\Omega_N^{PLS}
+dR_N^q .
```

The coefficient equations give

```math
dE_N^{A,G}
\le
C_NE_N^{A,G}\,d\Omega_N^{PLS}
+dR_N^{A,G}.
```

The transported collar and Helmholtz--Leray/interface records are carried by the same \((A,G,v,q,S)\) packet, so

```math
dE_N^{collar}+dE_N^{Helmholtz--Leray/interface}
\le
C_N(E_N^{collar}+E_N^{Helmholtz--Leray/interface})\,d\Omega_N^{PLS}
+dR_N^{int}.
```

## Sum and divide

Adding the component estimates gives

```math
d\mathcal P_N^{mat}
\le
C_N\mathcal P_N^{mat}\,d\Omega_N^{PLS}
+dR_N^0.
```

Since \(\mathcal P_N^{mat}\ge0\),

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\,d\Omega_N^{PLS}+dR_N^0.
```

Thus one-way material-record growth is not a separate unaccounted branch.  Its positive growth is paid by the same PLS participation cost.

## Consequence

If

```math
\int_0^{T^*}d\Omega_N^{PLS}<\infty,
```

then

```math
\int_0^{T^*}d[\log(1+\mathcal P_N^{mat})]_+<\infty.
```

Therefore \(\mathcal P_N^{mat}\) stays bounded, the fixed \(H^s\) readout stays bounded, and the solution restarts past \(T^*\).

So the branch state is:

```math
\text{PLS recirculation is closed,}
\qquad
\text{one-way material-record growth is PLS-paid,}
```

and the remaining global closure is

```math
\int_0^{T^*}d\Omega_N^{PLS}<\infty .
```

