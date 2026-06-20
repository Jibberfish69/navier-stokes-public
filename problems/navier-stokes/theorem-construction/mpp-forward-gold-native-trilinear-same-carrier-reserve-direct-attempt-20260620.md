# MPP Forward-Gold Native Trilinear Same-Carrier Reserve Direct Attempt

Date: 2026-06-20

## Status

Direct native-trilinear attempt complete.  The Navier-Stokes trilinear carrier
is the correct same-fluid feed-rate object, but the current installed balances
do not convert it into an unweighted same-carrier source-square reserve.

The attempted proof fails for a precise reason: the trace-free low strain can
run at the heat-clock rate on a shrinking packet, the selected high packet can
align with its expanding eigendirection, and the physical cost remains
radius-weighted while `(NTSR.13)` gives the normalized square source as the
fixed positive value \(\left(M_{\sigma,\psi}K_\psi^{-1}\right)^2\).

This is not asserted as an exact Navier-Stokes solution.  It is the normal-form
test for any proposed estimate that tries to derive the unweighted reserve from
incompressibility, the shell energy law, first-moment dissipation, or signed
trilinear cancellation alone.

## 1. Target estimate

For a selected shell \(j\), write \(r=2^{-j}\).  The native positive carrier is

```math
\Phi_j^+(t)
=
\int
\left[
\langle S_{<j}^{loc}(t,x)w_j(t,x),w_j(t,x)\rangle
\right]_+\,dx.
\tag{NTSR.1}
```

The source-square bridge wants a same-carrier domination of the form

```math
r^{1/2}\Phi_j^+(T+r^2s)
\le
C\,G_j(s)+\ell_j(s),
\qquad
\sup_j\int_{-1}^{0}G_j(s)^2\,ds<\infty,
\tag{NTSR.2}
```

with a terminal strip modulus for \(\ell_j\).  Then Cauchy--Schwarz gives the
moving-packet no-jump modulus.

At the energy-shell level, set

```math
D_j(t)=\nu r^{-2}\|w_j(t)\|_2^2.
\tag{NTSR.3}
```

The same-carrier square reserve has the model density

```math
2^jD_j(t)^2=r^{-1}D_j(t)^2.
\tag{NTSR.4}
```

The target is to prove an unweighted terminal bound for this density on the
actual selected packet family.

## 2. Heat-clock trilinear normal form

Take a heat-scale terminal interval

```math
I_j=(T-r^2,T].
\tag{NTSR.5}
```

Let the low strain coefficient on the selected packet be at the viscous heat
clock:

```math
\lambda_j=\nu r^{-2}.
\tag{NTSR.6}
```

Use the trace-free expanding normal form

```math
S_j^{model}(x,t)
=
\lambda_j\,\sigma\!\left({x-x_j\over r}\right)
\operatorname{diag}(2,-1,-1),
\tag{NTSR.7}
```

and take the high packet direction aligned with \(e_1\):

```math
w_j(x,t)
=
b_j\,\psi\!\left({x-x_j\over r}\right)e_1.
\tag{NTSR.8}
```

Choose \(\sigma,\psi\in C_c^\infty(B_1)\), with \(\sigma\ge0\), \(\psi\ge0\),
and define the fixed positive constants

```math
K_\psi:=\int_{B_1}\psi(y)^2\,dy,
\qquad
M_{\sigma,\psi}:=2\int_{B_1}\sigma(y)\psi(y)^2\,dy.
\tag{NTSR.8a}
```

Choose \(b_j\) so that

```math
D_j(t)=r^{-1/2}
\qquad (t\in I_j).
\tag{NTSR.9}
```

Equivalently,

```math
\|w_j(t)\|_2^2
=
\nu^{-1}r^{3/2}.
\tag{NTSR.10}
```

This is obtained by taking

```math
b_j^2=\nu^{-1}K_\psi^{-1}r^{-3/2}.
\tag{NTSR.10a}
```

Then the positive trilinear feed is source-balanced:

```math
\Phi_j^+(t)
=
M_{\sigma,\psi}K_\psi^{-1}r^{-1/2}
=
M_{\sigma,\psi}K_\psi^{-1}D_j(t).
\tag{NTSR.11}
```

The first moment on the heat window vanishes:

```math
\int_{I_j}\Phi_j^+(t)\,dt
=
M_{\sigma,\psi}K_\psi^{-1}r^{3/2}
\to0.
\tag{NTSR.12}
```

But the normalized source-square contribution is a fixed positive constant:

```math
\int_{I_j}r^{-1}\left(\Phi_j^+(t)\right)^2\,dt
=
\left(M_{\sigma,\psi}K_\psi^{-1}\right)^2.
\tag{NTSR.13}
```

Thus finite first-moment source visibility does not force the same-carrier
square reserve to vanish.

## 3. Physical cost check

The low strain has \(L^2\)-scale physical cost

```math
\int_{I_j}\int_{B_r}
|S_j^{model}|^2\,dxdt
=
C_\sigma\nu^2r,
\qquad
C_\sigma:=6\int_{B_1}\sigma(y)^2\,dy.
\tag{NTSR.14}
```

This is summable along a dyadic Zeno chain.

The selected high packet energy is small:

```math
\|w_j(t)\|_2^2
=
\nu^{-1}r^{3/2}\to0,
\tag{NTSR.15}
```

and its heat-window residence is smaller:

```math
\int_{I_j}\|w_j(t)\|_2^2\,dt
=
\nu^{-1}r^{7/2}\to0.
\tag{NTSR.16}
```

The critical strain currency is a fixed positive constant:

```math
\int_{I_j}\int_{B_r}
|S_j^{model}|^{5/2}\,dxdt
=
C_{\sigma,5/2}\nu^{5/2},
\qquad
C_{\sigma,5/2}:=
6^{5/4}\int_{B_1}\sigma(y)^{5/2}\,dy.
\tag{NTSR.17}
```

So the normal form is exactly at the known critical threshold: \(L^2\) strain is
radius-discounted, while \(L^{5/2}\) strain is unweighted.

## 4. Why the native identities do not reject the normal form

The shell energy inequality has the structure

```math
{1\over2}{d\over dt}\|w_j(t)\|_2^2
+cD_j(t)
\le
\Phi_j^+(t)+Legal_j(t).
\tag{NTSR.18}
```

The choice `(NTSR.11)` is source-balanced: the positive trilinear feed can
match the viscous heat-clock drain on the same window.  The identity records
participation, but it does not produce an extra square payment.

Incompressibility gives only trace-free strain:

```math
\operatorname{tr}S_j^{model}=0.
\tag{NTSR.19}
```

The negative directions in `(NTSR.7)` are the signed partners, but the selected
positive carrier keeps the \(e_1\) expanding direction:

```math
\left[
\langle S_j^{model}w_j,w_j\rangle
\right]_+
=
2\lambda_j\sigma\!\left({x-x_j\over r}\right)|w_j|^2.
\tag{NTSR.20}
```

Thus signed cancellation is present in the tensor and absent from the selected
positive scalar.  A proof must either retain the signed partner in the same
terminal ledger, charge its exit, or prove a no-free terminal Zeno donor-chain
theorem.

## 5. Exact failed implication

The direct native-trilinear proof would need

```math
\int_{I_j}\Phi_j^+(t)\,dt\to0
\quad\Longrightarrow\quad
\int_{I_j}r^{-1}\left(\Phi_j^+(t)\right)^2\,dt\to0
\tag{NTSR.21}
```

on selected heat-scale packets.

The normal form gives the opposite:

```math
\int_{I_j}\Phi_j^+(t)\,dt
=M_{\sigma,\psi}K_\psi^{-1}r^{3/2}\to0,
\qquad
\int_{I_j}r^{-1}\left(\Phi_j^+(t)\right)^2\,dt
=\left(M_{\sigma,\psi}K_\psi^{-1}\right)^2.
\tag{NTSR.22}
```

So the missing theorem is not hidden in the trilinear identity itself.  It must
be a genuinely stronger same-carrier statement:

```math
\begin{gathered}
\text{ActiveWindowHeight.A},\\
\text{SourceSquareReserve.A},\\
\text{SelectedCriticalStrainCarleson.A},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{SelectedPositivePolarSaturation.A / NoFreeTerminalZenoDonorChain.A}.
\end{gathered}
\tag{NTSR.23}
```

## Verdict

The native trilinear route is the right local language, but it does not by
itself prove the gold anti-atom.

```math
\boxed{
\text{same-fluid trilinear visibility}
\not\Longrightarrow
\text{same-carrier unweighted source-square reserve}.
}
\tag{NTSR.24}
```

New forward-gold progress must add a one-sided same-carrier coercive mechanism,
not merely re-use incompressibility, first-moment source mass, or signed
trilinear cancellation.
