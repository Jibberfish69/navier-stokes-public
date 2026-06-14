# MPP PressureSustainResidueToSourceResidue.A Direct Limit Attempt

Date: 2026-05-17

Status: failed direct limit bridge; conditional replacement isolated.

Purpose: continue the pressure/eigenframe branch after the finite packet tether reached

```math
LocalizedLeraySourceTether.A
```

and after that tether was identified with the terminal skew/source-current ledger. The goal is to test the genuinely new limit bridge

```math
\boxed{PressureSustainResidueToSourceResidue.A}
```

without importing `TerminalSkewLocalizationLedger.A`.

## 0. Target

A failed terminal pressure graph gives a sequence with

```math
\Pi_N^{press,+}\ge c_0>0,
\qquad
Legal_N^{press}\to 0,
```

and a limit pressure-sustain residue

```math
\mu_*^{press-sus}(Q_1^-)\ge c_0.
```

The desired bridge is

```math
\boxed{
PressureSustainResidueToSourceResidue.A:
\mu_*^{press-sus}>0
\Longrightarrow
\mu_*^{src}>0
\quad\text{or}\quad
\mu_*^{legal,src}>0.
}
```

Here `\mu_*^{src}` is the native same-fluid source-current residue used by the source-wall / Zeno branch, not merely a pressure quadratic-gradient defect measure.

## 1. Measure normal form

At finite level the pressure sustain bill has the form

```math
d\pi_N^{press,+}
=
\left[
W_N\,T_N(Q_N)
\right]_+d\eta_N
+
Legal_N^{press},
```

where `T_N` is the localized Calderon--Zygmund pressure-Hessian operator and `Q_N` is the localized quadratic gradient block. Compactness gives a pressure carrier

```math
Q_N d\eta_N \rightharpoonup \sigma_*^{quad}
```

and a selected positive pressure residue extracted from `T\sigma_*^{quad}`.

The native source residue has a different carrier. In the source-weighted angular branch it is represented by terminal packets of the form

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+
```

with same-fluid ancestry and source-current ledger structure.

Thus the bridge is exactly a uniform absolute-continuity statement:

```math
\boxed{
PressureSourceAC.A:
\mu_*^{press-sus}
\ll
\mu_*^{src}+\mu_*^{legal,src}
}
```

on the interior retained terminal region.

A finite packet version is:

```math
\Pi_N^{press,+}(E)
\le
C\,\nu_N^{src}(U_{\rho_N}(E))
+Legal_N(U_{\rho_N}(E))+o_N(1)
```

for terminal packet unions `E`, with `\rho_N\downarrow0` and without consuming `TerminalSkewLocalizationLedger.A`.

## 2. Direct limit attempt

The pressure Poisson law yields

```math
\nabla^2p
=
\mathcal R\mathcal R\bigl((S+\Omega)\otimes(S+\Omega)\bigr).
```

This identifies the pressure residue as an elliptic image of a quadratic-gradient defect. The image has angular cancellation and singular-integral structure. It lacks the material ancestry, packet refill structure, and one-sided source-current sign ledger carried by the native source residue.

Calderon--Zygmund mean-zero gives a signed full-pressure cancellation identity before one-sided terminal selection. Positive selection can keep an order-one positive pressure lobe while the cancelling negative angular mass is diffuse across many packets or below terminal selection. Compactness then preserves a pressure-sustain residue, while the native source-current residue remains absent from the argument.

Therefore the direct limit path proves only

```math
\mu_*^{press-sus}>0
\Longrightarrow
\sigma_*^{quad}\neq0
```

for the pressure quadratic-gradient carrier. It does not give

```math
\mu_*^{src}>0.
```

## 3. Algebraic tangent obstruction

The carrier mismatch already appears in the local pressure law. Take a trace-free symmetric tangent gradient

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
\Omega=0.
```

Then the vorticity source carrier vanishes:

```math
\omega=0,
\qquad
|\omega|^2[e\cdot Se]_+=0.
```

The pressure equation gives

```math
-\Delta p=\operatorname{tr}(S^2)>0.
```

The local polynomial pressure model

```math
p(x)=-\frac{\operatorname{tr}(S^2)}{6}|x|^2
```

has

```math
-n\cdot\nabla^2p\,n
=\frac{\operatorname{tr}(S^2)}{3}>0.
```

Scope of the model: algebraic tangent test for the pressure-source carrier relation. It shows that positive pressure-Hessian sustain and native vorticity source are distinct carriers at the level of the installed local identities. Turning this mismatch into a legal finite-energy terminal packet statement is exactly the missing `PressureSourceAC.A` / legal pressure-residue theorem.

## 4. Conditional theorem actually available

The valid bridge statement is conditional:

```math
\boxed{
PressureSourceAC.A
+TerminalPressureCollarLegal.A
\Longrightarrow
PressureSustainResidueToSourceResidue.A.
}
```

Proof. Remove collar, cutoff, harmonic, projector, and off-family pressure exits using `TerminalPressureCollarLegal.A`. On the remaining interior terminal region, `PressureSourceAC.A` gives

```math
\mu_*^{press-sus}
\ll
\mu_*^{src}+\mu_*^{legal,src}.
```

A positive pressure-sustain residue then forces positive native source residue or positive legal source-current residue. This is the desired source-wall input.

## 5. Verdict

The direct limit bridge is open. The pressure route has reached a sharper noncircular theorem:

```math
\boxed{PressureSourceAC.A}
```

or equivalently the finite packet theorem

```math
\boxed{LocalizedLeraySourceTether.A_{ind}}
```

where the subscript means independence from `TerminalSkewLocalizationLedger.A` and equivalent terminal source-current ledgers.

Pressure Poisson ellipticity, Calderon--Zygmund angular cancellation, strain-equation rewriting, and compactness all fall short of this bridge. They produce pressure quadratic-gradient residue. The source-wall Zeno branch requires native same-fluid source-current residue.

The next viable pressure/eigenframe continuation is one of:

```math
PressureSourceAC.A,
```

```math
LocalizedLeraySourceTether.A_{ind},
```

or a new legal class and Liouville theorem for pure pressure-sustain residue.
