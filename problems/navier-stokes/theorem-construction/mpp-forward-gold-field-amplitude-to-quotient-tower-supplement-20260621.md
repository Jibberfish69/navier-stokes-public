---
theorem_id: forward-gold-field-amplitude-to-quotient-tower-supplement-20260621
status: supplement-criterion-proved-amplitude-production-not-installed
logical_landing_node: field_amplitude_to_quotient_tower_supplement
edge_effect: "Proves the finite-order amplitude/Field supplement in the current four-body frontier. On the same selected carrier, a bound on the expanding strain/source coefficient lowers the native trilinear main carrier chi |W|^2 [e.Sigma.e]_+ to a quadratic gauge-quotient tower carrier. The gauge-quotient tower drain-production criterion then pays it by the weighted parabolic tower drain plus cutoff, gauge, selector, compactness, geometry, and legal defects. If such finite-order amplitude control fails on shrinking terminal windows after Pack and Part survive, the already installed finite-order consumer routes the retained atom to the Field face. This proves the supplement criterion but does not produce the amplitude bound from Navier-Stokes energy."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-quotient-tower-carrier-drain-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-order-selected-carrier-atom-to-cm-field-face-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-stretching-atom-to-finite-rung-field-face-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Field-Amplitude to Quotient-Tower Supplement

Date: 2026-06-21

## 0. Aim

The native pre-Cauchy bridge test found the exact obstruction:

```math
\left[\mathcal R_P^{main}\right]_+
=
\chi_P |W_P|^2
\left[e_P\cdot \Sigma_Pe_P\right]_+
\tag{FAS.1}
```

is cubic, while the parabolic tower drain is quadratic.

This note proves one precise supplement from that list.

If the expanding coefficient

```math
\left[e_P\cdot \Sigma_Pe_P\right]_+
\tag{FAS.2}
```

is bounded on the same selected carrier by a finite-order Field/amplitude
readout, then the cubic native carrier becomes a quadratic quotient-tower
carrier.  The gauge-quotient tower criterion then pays it by the same-carrier
weighted parabolic drain.

## 1. Same-carrier amplitude hypothesis

Work on the same normalized selected packet \(Q_1=I\times B_1\).

Let \(W_P\) be the selected finite tower component and write

```math
e_P={W_P\over |W_P|}
\tag{FAS.3}
```

on the set where \(W_P\ne0\).  Let

```math
\Sigma_P=S_{<j_P}^{loc}
\tag{FAS.4}
```

or the corresponding finite-order strain/source coefficient selected by the
packet.

Assume the same-carrier finite-order amplitude bound

```math
\left[e_P\cdot\Sigma_Pe_P\right]_+
\le B_P
\tag{FAS.5}
```

almost everywhere on the selected packet, with \(B_P<\infty\).

This is the supplement.  It is not derived from energy in this note.

## 2. Cubic carrier becomes quadratic

From `(FAS.1)` and `(FAS.5)`,

```math
\boxed{
\left[\mathcal R_P^{main}\right]_+
\le
B_P\,\chi_P|W_P|^2.
}
\tag{FAS.6}
```

The right-hand side is a quadratic finite tower carrier, provided \(W_P\) is
represented in the same gauge-quotient tower packet.

If the selected \(W_P\) contains a spatially constant mode, split

```math
W_P
=
\bigl(W_P-\langle W_P\rangle(s)\bigr)
+
\langle W_P\rangle(s).
\tag{FAS.7}
```

The gauge-quotient tower carrier keeps the first term.  Any charge placed on
the second term is a Galilean/affine-pressure gauge charge and is recorded as
\(K_{\rm gauge}^+\).

Thus

```math
\boxed{
\int_{Q_1}
\left[\mathcal R_P^{main}\right]_+
\le
B_P\,A_{\rm gqtw,\eta}(P)
+
B_P\,K_{\rm gauge}^+(P).
}
\tag{FAS.8}
```

## 3. Payment by weighted parabolic drain

The gauge-quotient tower criterion gives

```math
A_{\rm gqtw,\eta}(P)
\le
C(N,\rho_{\max},\nu,C_P)
\left[
D_{Q,\eta}^w(P)
+
K_{\rm cut,\eta}(P)
+
K_{\rm gauge}^+(P)
\right].
\tag{FAS.9}
```

Combining `(FAS.8)` and `(FAS.9)` gives the same-carrier payment:

```math
\boxed{
\int_{Q_1}
\left[\mathcal R_P^{main}\right]_+
\le
C\,B_P
\left[
D_{Q,\eta}^w(P)
+
K_{\rm cut,\eta}(P)
+
K_{\rm gauge}^+(P)
\right].
}
\tag{FAS.10}
```

For a bounded-overlap selected family \(\mathcal F_N\), if

```math
B_*:=\sup_{P\in\mathcal F_N}B_P<\infty,
\tag{FAS.11}
```

then summing `(FAS.10)` gives

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[\mathcal R_P^{main}\right]_+
\le
C\,B_*
\left[
D_Q^w(\mathcal F_N)
+
K_{\rm cut}(\mathcal F_N)
+
K_{\rm gauge}^+(\mathcal F_N)
\right].
}
\tag{FAS.12}
```

Adding the selector, compactness, geometry, and legal defects from the
pre-Cauchy-to-quotient bridge gives

```math
\boxed{
dA_{\rm preCauchy}^{main}
\le
C\,B_*\,dD_Q^w
+
C\,B_*
\left(dK_{\rm cut}+dK_{\rm gauge}^+\right)
+
dK_{\rm sel}
+
dK_C^+
+
dK_G^+
+
dR_{\rm legal}.
}
\tag{FAS.13}
```

This is the exact four-body payment supplied by finite-order amplitude control.

## 4. Field/readout branch when the bound fails

Now suppose terminal selected windows \(I_m\) shrink:

```math
|I_m|=\theta_m\to0,
\tag{FAS.14}
```

and the main carrier has a retained atom:

```math
\int_{I_m}
\int
\left[\mathcal R_{P_m}^{main}\right]_+
\ge a_0>0.
\tag{FAS.15}
```

The installed finite-order selected-carrier consumer applies whenever

```math
\left[\mathcal R_{P_m}^{main}\right]_+
\le
C_{\rm op}X_m(s)^p
\tag{FAS.16}
```

for a finite-rung readout \(X_m\) on the same retained witness.

For the native stretching carrier, one concrete readout is

```math
X_m(s)=\|v_m(s)\|_{H^2(B_R)},
\qquad
\left[\mathcal R_{P_m}^{main}\right]_+
\le
C_\eta X_m(s)^3.
\tag{FAS.17}
```

If \(Pack_Q\) and \(Part_{N,Q}\) both survive and a positive finite-rung
Field certificate controls \(X_m\), then

```math
\operatorname*{ess\,sup}_{s\in I_m}X_m(s)\le C_X<\infty.
\tag{FAS.18}
```

Consequently,

```math
\int_{I_m}
\left[\mathcal R_{P_m}^{main}\right]_+
\le
C_{\rm op}C_X^p\theta_m
\to0,
\tag{FAS.19}
```

contradicting `(FAS.15)`.

Therefore the retained atom and finite-order readout imply the CM-facing
alternative

```math
\boxed{
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}.
}
\tag{FAS.20}
```

This is not a forward-gold payment.  It is the exact readout branch when
finite-order amplitude control is not available as a same-carrier bound.

## 5. Boundary

The supplement proves:

```math
\boxed{
\text{finite-order amplitude bound}
\Longrightarrow
\text{native main carrier paid by quotient-tower/parabolic drain.}
}
\tag{FAS.21}
```

It also records:

```math
\boxed{
\text{retained atom plus same finite-rung readout}
\Longrightarrow
\text{Pack/Part/Field face after same-witness admission.}
}
\tag{FAS.22}
```

It does not prove:

```math
\boxed{
B_*<\infty
\quad\text{from Navier-Stokes energy/local energy alone.}
}
\tag{FAS.23}
```

It also does not reduce the full localized pre-Cauchy carrier to the main
carrier.  That still requires legal/charged remainder reduction:

```math
\left[
\mathcal N_{preCauchy}^{loc}
\right]_+
\le
C\left[
\mathcal R_P^{main}
\right]_+
+
\text{legal/charged remainder}.
\tag{FAS.24}
```

## 6. Current state

The amplitude/Field supplement is now exact:

```math
\boxed{
\text{same-carrier amplitude control}
\Rightarrow
\text{four-body parabolic-drain payment for the native main carrier.}
}
\tag{FAS.25}
```

The remaining gold suppliers are the other same-carrier supplements from the
native bridge test:

```math
\boxed{
\text{critical-density budget, source-square/no-waste control, signed polar
saturation, rigid source-residue production, or full pre-Cauchy remainder
reduction.}
}
\tag{FAS.26}
```

So this supplement narrows the branch: the native cubic carrier is paid when
the expanding coefficient is bounded on the same carrier; when the only
available output is unbounded finite-rung amplitude on shrinking terminal
windows, the branch is finite-rung Field-facing rather than a hidden
four-body payment.
