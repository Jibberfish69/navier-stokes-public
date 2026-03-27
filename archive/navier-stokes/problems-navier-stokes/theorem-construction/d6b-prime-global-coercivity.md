# D.6b' — Global coercive decay in H

## Four-line audit block

**Input surfaces.**
Energy identity for the projected flow:
\[
\frac{d}{dt}\|X\|_H^2
+
\nu\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
\le
C_1\|X\|_{\mathcal N}^3 .
\]

`D.2a`: cubic absorption
\[
C_1\|X\|_{\mathcal N}^3
\le
\varepsilon\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
+
C_\varepsilon\|X\|_H^6 .
\]

Low-tier spectral coercivity:
\[
\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2
\ge
C_\Lambda\|X\|_H^2 .
\]

**Claim.**
If \(\nu>\varepsilon\) and \(\|X(0)\|_H^2 \le \frac{(\nu-\varepsilon)C_\Lambda}{2C_\varepsilon}\),
then there exists \(c>0\) such that
\[
\|X(t)\|_H^2 \le e^{-ct}\|X(0)\|_H^2
\quad\text{for all } t\ge 0.
\]

**Dependency chain.**
Energy identity \(\to\) insert absorption \(\to\) reduce to scalar differential inequality \(\to\) bootstrap invariance \(\to\) Grönwall.

**Discharge location.**
`d6b-prime-global-coercivity.md`

---

## Statement

Let \(X(t)\) satisfy the energy identity and assumptions above.  
Assume
\[
\nu>\varepsilon,
\qquad
\|X(0)\|_H^2 \le \frac{(\nu-\varepsilon)C_\Lambda}{2C_\varepsilon}.
\]
Then there exists \(c=(\nu-\varepsilon)C_\Lambda/2>0\) such that
\[
\|X(t)\|_H^2 \le e^{-ct}\|X(0)\|_H^2
\qquad
\forall t\ge 0.
\]

## Proof

Insert `D.2a` into the energy identity:
\[
\frac{d}{dt}\|X\|_H^2
+
(\nu-\varepsilon)\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
\le
C_\varepsilon\|X\|_H^6 .
\]

Apply the spectral coercivity:
\[
\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2
\ge
C_\Lambda\|X\|_H^2 .
\]

Set \(Y(t):=\|X(t)\|_H^2\). Then
\[
Y'(t)
\le
-(\nu-\varepsilon)C_\Lambda Y(t)
+
C_\varepsilon Y(t)^3 .
\]

Define
\[
M:=\frac{(\nu-\varepsilon)C_\Lambda}{2C_\varepsilon}.
\]

Assume \(Y(0)\le M\).  
We show \(Y(t)\le M\) for all \(t\ge 0\).

If \(Y(t)\le M\), then
\[
C_\varepsilon Y(t)^3
\le
\frac{(\nu-\varepsilon)C_\Lambda}{2} Y(t).
\]

Hence
\[
Y'(t)
\le
-\frac{(\nu-\varepsilon)C_\Lambda}{2} Y(t).
\]

By continuity, the bound \(Y(t)\le M\) is preserved for all time.

Therefore
\[
Y'(t)\le -c\,Y(t),
\qquad
c:=\frac{(\nu-\varepsilon)C_\Lambda}{2}>0.
\]

Integrating,
\[
Y(t)\le e^{-ct}Y(0).
\]

Thus
\[
\|X(t)\|_H^2 \le e^{-ct}\|X(0)\|_H^2
\qquad
\forall t\ge 0.
\
