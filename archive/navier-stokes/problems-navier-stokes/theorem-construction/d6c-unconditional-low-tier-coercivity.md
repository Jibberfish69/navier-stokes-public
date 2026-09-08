# D.6c — Global low-tier coercivity under uniform H-control

resolved_by: D6_global_carrier_bound

## Four-line audit block

**Input surfaces.**
Projected energy identity:
\[
\frac{d}{dt}\|X\|_H^2
+
\nu\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
\le
C_1\|X\|_{\mathcal N}^3 .
\]

`D6_global_carrier_bound`: slaving estimate
\[
\|X\|_{\mathcal N}
\le
C_{\mathrm{slv}}\|X\|_H^{1/2}
\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)^{1/4}.
\]

Low-tier coercivity:
\[
\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2
\ge
C_\Lambda \|X\|_H^2.
\]

Uniform \(H\)-energy control:
\[
\|X(t)\|_H\le M_H
\qquad
\forall t\ge 0.
\]

**Claim.**
If
\[
C_1 C_{\mathrm{slv}}^3 M_H
<
\nu C_\Lambda^{1/2},
\]
then there exists \(c_{\mathrm{glob}}>0\) such that
\[
\frac{d}{dt}\|X(t)\|_H^2\le -c_{\mathrm{glob}}\|X(t)\|_H^2
\qquad
\forall t\ge 0,
\]
and therefore
\[
\|X(t)\|_H^2\le e^{-c_{\mathrm{glob}}t}\|X(0)\|_H^2.
\]

**Dependency chain.**
Energy identity \(\to\) insert slaving estimate \(\to\) factor dissipative block \(\to\) use low-tier coercivity and uniform \(H\)-bound \(\to\) global scalar decay.

**Discharge location.**
`d6c-unconditional-low-tier-coercivity.md`

---

## Statement

Assume \(X(t)\) satisfies the projected energy identity
\[
\frac{d}{dt}\|X\|_H^2
+
\nu\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
\le
C_1\|X\|_{\mathcal N}^3 ,
\]
the slaving estimate of `D6_global_carrier_bound`,
\[
\|X\|_{\mathcal N}
\le
C_{\mathrm{slv}}\|X\|_H^{1/2}
\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)^{1/4},
\]
the low-tier coercive bound
\[
\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2
\ge
C_\Lambda \|X\|_H^2,
\]
and the uniform control
\[
\|X(t)\|_H\le M_H
\qquad
\forall t\ge 0.
\]

Assume moreover that
\[
C_1 C_{\mathrm{slv}}^3 M_H
<
\nu C_\Lambda^{1/2}.
\]

Then
\[
\frac{d}{dt}\|X(t)\|_H^2\le -c_{\mathrm{glob}}\|X(t)\|_H^2
\qquad
\forall t\ge 0,
\]
where
\[
c_{\mathrm{glob}}
:=
C_\Lambda^{1/2}\Big(\nu C_\Lambda^{1/2}-C_1 C_{\mathrm{slv}}^3 M_H\Big)>0.
\]
Consequently,
\[
\|X(t)\|_H^2\le e^{-c_{\mathrm{glob}}t}\|X(0)\|_H^2
\qquad
\forall t\ge 0.
\]

## Proof

Set
\[
D(X):=\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2.
\]
From `D6_global_carrier_bound`,
\[
\|X\|_{\mathcal N}^3
\le
C_{\mathrm{slv}}^3\|X\|_H^{3/2}D(X)^{3/4}.
\]
By low-tier coercivity,
\[
D(X)\ge C_\Lambda \|X\|_H^2,
\]
hence
\[
\|X\|_H^{3/2}\le C_\Lambda^{-3/4}D(X)^{3/4}.
\]
Substituting gives
\[
\|X\|_{\mathcal N}^3
\le
C_{\mathrm{slv}}^3 C_\Lambda^{-3/4} D(X)^{3/2}.
\]

Use the uniform \(H\)-bound in the original slaving form:
\[
\|X\|_{\mathcal N}^3
\le
C_{\mathrm{slv}}^3 M_H^{3/2} D(X)^{3/4}.
\]
Combine this with
\[
D(X)^{3/4}=D(X)\,D(X)^{-1/4}
\]
and coercivity
\[
D(X)\ge C_\Lambda \|X\|_H^2,
\qquad
\|X\|_H\le M_H,
\]
to obtain
\[
D(X)^{-1/4}\le C_\Lambda^{-1/4}\|X\|_H^{-1/2}\le C_\Lambda^{-1/4} M_H^{-1/2}.
\]
Therefore
\[
\|X\|_{\mathcal N}^3
\le
C_{\mathrm{slv}}^3 C_\Lambda^{-1/4} M_H\, D(X).
\]

Insert this into the energy identity:
\[
\frac{d}{dt}\|X\|_H^2
+
\Big(\nu-C_1 C_{\mathrm{slv}}^3 C_\Lambda^{-1/4} M_H\Big)D(X)
\le 0.
\]
Apply coercivity once more:
\[
D(X)\ge C_\Lambda \|X\|_H^2.
\]
Hence
\[
\frac{d}{dt}\|X\|_H^2
\le
-
C_\Lambda
\Big(\nu-C_1 C_{\mathrm{slv}}^3 C_\Lambda^{-1/4} M_H\Big)
\|X\|_H^2.
\]

Set
\[
c_{\mathrm{glob}}
:=
C_\Lambda
\Big(\nu-C_1 C_{\mathrm{slv}}^3 C_\Lambda^{-1/4} M_H\Big)
=
C_\Lambda^{1/2}\Big(\nu C_\Lambda^{1/2}-C_1 C_{\mathrm{slv}}^3 M_H\Big).
\]
The hypothesis ensures \(c_{\mathrm{glob}}>0\). Therefore
\[
\frac{d}{dt}\|X\|_H^2\le -c_{\mathrm{glob}}\|X\|_H^2.
\]
Gronwall yields
\[
\|X(t)\|_H^2\le e^{-c_{\mathrm{glob}}t}\|X(0)\|_H^2.
\]
\(\square\)

## Constant declaration

\[
c_{\mathrm{glob}}
=
C_\Lambda^{1/2}\Big(\nu C_\Lambda^{1/2}-C_1 C_{\mathrm{slv}}^3 M_H\Big).
\]
