# Selected Positive Null Carrier CM Face Direct Test

Date: 2026-06-20

## Status

Direct CM-face test complete.  This note does not prove the forward-gold theorem
`SelectedPositiveConeNoNullReadout.A`.  It proves that failure of that theorem
is not a surviving class branch after same-witness CM admission.

The compact no-null branch is:

```math
M_m^+(q_m)\ge\eta>0,
\qquad
\|L_mq_m\|_m\to0,
\tag{SPC.1}
```

where \(M_m^+\) is the selected positive native source carrier and \(L_mq_m\)
is the same-shadow signed readout.  The signed readout may cancel, but the
positive carrier cannot survive together with the retained high-regularity
`Field` readout.

## 1. Same-witness object being consumed

Work on selected terminal heat-scale packets with radius

```math
r_m=2^{-j_m},
\qquad
j_m\to\infty,
\tag{SPC.2}
```

and normalized time

```math
s={t-T_m\over r_m^2}\in[-1,0].
\tag{SPC.3}
```

The selected positive carrier has the normalized form

```math
a_m(s)
:=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle S_{<j_m}^{loc}w_{j_m},w_{j_m}\right\rangle
\right]_+
(T_m+r_m^2s,x)\,dx.
\tag{SPC.4}
```

The compact no-null branch has a fixed positive carrier:

```math
\int_{-1}^{0}a_m(s)\,ds
\ge \eta>0.
\tag{SPC.5}
```

The extra condition \(\|L_mq_m\|_m\to0\) says that the signed same-shadow readout
does not see this positive carrier.  For CM Part/Field consumption, the decisive
quantity is already `(SPC.5)`: a retained same-witness positive source carrier
at arbitrarily high frequency.

## 2. Pack and Part faces

Assume `(SPC.5)` is admitted as part of the same terminal Clay witness.

If the selected terminal carrier does not survive as a same-solution carrier,
the first Part/Field fails:

```math
\neg Pack_Q.
\tag{SPC.6}
```

If the carrier survives but the positive source cannot be placed in the same
pressure, viscosity, incompressibility, donor, and readout tower through the
required depth, the participation face fails:

```math
Pack_Q\wedge\neg Part_{N_s,Q}.
\tag{SPC.7}
```

So it remains only to test the retained branch

```math
Pack_Q\wedge Part_{N_s,Q}
\tag{SPC.8}
```

against a positive `Field` certificate.

## 3. Field readout kills the positive high-frequency carrier

Assume a positive `Field` certificate survives at some radius:

```math
Field_{N_s,r,Q}
\qquad
\text{for some }r>0.
\tag{SPC.9}
```

By the installed continuation readout used in the CM Part/Field tests, choose
\(N_s\) above the local \(H^s\), \(s>5/2\), threshold.  Then `(SPC.9)` gives a
same-solution local high-regularity bound on the selected packet region:

```math
\sup_{t<T_*}\|u(t)\|_{H^s(Q)}\le C_s.
\tag{SPC.10}
```

Consequently the high-frequency shell obeys

```math
\|w_{j_m}(t)\|_{L^2(Q)}^2
\le
C_s\,2^{-2sj_m}.
\tag{SPC.11}
```

Since \(s>5/2\), the low-frequency strain is locally bounded:

```math
\|S_{<j_m}^{loc}(t)\|_{L^\infty(Q)}
\le C_s.
\tag{SPC.12}
```

Using `(SPC.11)` and `(SPC.12)` in `(SPC.4)` gives, for every normalized
time \(s\in[-1,0]\),

```math
a_m(s)
\le
r_m\,C_s\,\|w_{j_m}(T_m+r_m^2s)\|_{L^2(Q)}^2
\le
C_s\,2^{-j_m}2^{-2sj_m}.
\tag{SPC.13}
```

Integrating over the unit normalized time interval gives

```math
\int_{-1}^{0}a_m(s)\,ds
\le
C_s\,2^{-(2s+1)j_m}
\to0.
\tag{SPC.14}
```

This contradicts the retained positive carrier `(SPC.5)`.

Therefore

```math
Pack_Q\wedge Part_{N_s,Q}\wedge (SPC.5)
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q}.
\tag{SPC.15}
```

## 4. CM Part/Field consequence

Combining the Part and Field alternatives gives

```math
\boxed{
\begin{aligned}
&ClayWitness_{CM}(W_*)
+
\text{selected positive no-null carrier branch on }W_*\\
&\qquad\Longrightarrow
\neg Pack_Q
\vee
\bigl(Pack_Q\wedge\neg Part_{N_s,Q}\bigr)
\vee
\bigl(Pack_Q\wedge Part_{N_s,Q}\wedge
\forall r>0\,\neg Field_{N_s,r,Q}\bigr).
\end{aligned}
}
\tag{SPC.16}
```

By the CM embedding theorem, the Part/Field failure supports

```math
Exit(Q):=\neg Member(Q)
\tag{SPC.17}
```

inside the same-witness CM route.

## 5. Boundary against overclaiming

This note does not prove

```math
\text{SelectedPositiveConeNoNullReadout.A}.
\tag{SPC.18}
```

Before same-witness CM admission, `(SPC.1)` remains a forward-gold obstruction:
the signed same-shadow readout can cancel while the positive carrier survives.

After same-witness CM admission, `(SPC.5)` is enough to trigger the
Part/Field test.  A retained positive high-frequency source carrier is
incompatible with a positive high-regularity `Field` certificate, because
`Field` forces the normalized carrier to zero by `(SPC.14)`.

## Verdict

The compact no-null positive-carrier branch is now consumed at the CM Part/Field
level:

```math
\boxed{
\text{SelectedPositiveConeNoNullReadout.A}
\quad\text{or}\quad
\text{same-witness Part/Field Part/Field failure.}
}
\tag{SPC.19}
```

The remaining forward-gold content is unchanged: prove the no-null theorem as a
positive supplier, or use the CM route only after same-witness admission.
