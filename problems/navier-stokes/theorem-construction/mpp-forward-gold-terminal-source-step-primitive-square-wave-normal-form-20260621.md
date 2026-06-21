---
ns_viewer:
  theorem_id: forward-gold-terminal-source-step-primitive-square-wave-normal-form-20260621
  status: normal-form-installed-forward-gold-not-solved
  proof_role: forward_gold_terminal_source_step_primitive_square_wave_normal_form
  logical_landing_node: terminal_source_step_primitive_no_waste_profile_route
  edge_effect: "Develops Thomas's square-wave approximation idea into the exact terminal-source normal form. If a bad unweighted selected pulse survives with positive mass and vanishing terminal first moment, its cumulative source primitive converges to a Heaviside step at the terminal time face. Fourier approximation of that step has coefficients of size 1/k and derivative square energy growing linearly with the cutoff; this is the toy Fourier form of the same source-square/unweighted critical-action bill. The note does not prove the no-waste contradiction. It identifies the proof target: after rescaling the first minimal retained pulse, show that Navier-Stokes cannot carry this positive terminal step primitive with zero first-moment input unless source-square/no-waste action is paid or the same witness exits through Part/Field."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-cumulative-source-curve-compactness-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-residence-trace-ac-residual-lpas-consolidation-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-post-stirling-apportionment-attack-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-basac-local-energy-trace-no-positive-jump-reentry-20260609.md
  downstream_consequence: "The Fourier square-wave approximation is useful as the compact-profile/no-waste normal form, not as a direct coefficient estimate. It converts the surviving heat-scale pulse into a terminal step primitive whose derivative carries unavoidable square energy. The remaining theorem is a PDE no-positive-step result on the same selected carrier, or CM Part/Field consumption after same-witness admission."
---

# MPP Forward-Gold Terminal Source Step Primitive Square-Wave Normal Form

Date: 2026-06-21

## Status

This note makes the square-wave idea precise.

The live assumption is the one Thomas named:

```math
\text{a bad unweighted pulse survives,}
\quad
\text{we rescale the first minimal one,}
\quad
\text{we extract a terminal profile.}
\tag{SWN.1}
```

The result here is not a proof of the no-waste contradiction.  It is the exact
normal form of the object that the no-waste/profile theorem has to forbid.

## 1. Surviving pulse and first moment collapse

Let \(a_j(s)\ge0\), \(-1\le s\le0\), denote the selected normalized positive
source density on the retained moving heat-scale packet after legal exits,
finite donor trees, nonselected leakage, and retained signed partners have been
removed.

Assume the bad unweighted pulse survives:

```math
\int_{-1}^{0}a_j(s)\,ds
\ge c_0>0.
\tag{SWN.2}
```

Assume also that the first terminal moment vanishes:

```math
\int_{-1}^{0}|s|a_j(s)\,ds
\to0.
\tag{SWN.3}
```

Then all positive mass is forced into the terminal face.  For every fixed
\(\theta>0\),

```math
\int_{-1}^{-\theta}a_j(s)\,ds
\le
{1\over\theta}
\int_{-1}^{0}|s|a_j(s)\,ds
\to0.
\tag{SWN.4}
```

Thus every retained positive amount lives in \((-\theta,0]\) for all fixed
\(\theta>0\).

## 2. The primitive becomes a terminal step

Define the forward primitive

```math
B_j(s)
:=
\int_{-1}^{s}a_j(\sigma)\,d\sigma,
\qquad -1\le s\le0.
\tag{SWN.5}
```

For every fixed \(s<0\), `(SWN.4)` gives

```math
B_j(s)\to0.
\tag{SWN.6}
```

At the terminal endpoint,

```math
B_j(0)
=
\int_{-1}^{0}a_j(s)\,ds
\ge c_0.
\tag{SWN.7}
```

After passing to a subsequence, \(B_j(0)\to M\ge c_0\).  Hence the primitive
converges pointwise away from the endpoint to the terminal step:

```math
B_\infty(s)=0\quad(s<0),
\qquad
B_\infty(0)=M.
\tag{SWN.8}
```

Equivalently, use the terminal cumulative source curve

```math
A_j(\theta)
:=
\int_{-\theta}^{0}a_j(s)\,ds,
\qquad 0\le\theta\le1.
\tag{SWN.9}
```

Then, for every fixed \(\theta>0\),

```math
A_j(\theta)\to M,
\qquad
A_j(0)=0.
\tag{SWN.10}
```

So \(A_j\) converges to a Heaviside step at \(\theta=0\):

```math
A_\infty(\theta)
=
M{\bf 1}_{(0,1]}(\theta).
\tag{SWN.11}
```

This is the square-wave object.  The terminal source atom is the derivative of
this step.

## 3. Fourier square-wave approximation measures the missing square bill

Put the step on the unit circle and subtract its mean:

```math
H_M(\theta)
:=
M{\bf 1}_{(0,1/2)}(\theta)-{M\over2},
\qquad \theta\in\mathbb T.
\tag{SWN.12}
```

Its Fourier coefficients satisfy

```math
|\widehat H_M(k)|
\simeq
{M\over |k|}
\quad(k\ne0,\ k\text{ odd}),
\tag{SWN.13}
```

and vanish for even \(k\).  Therefore the \(N\)-mode square-wave approximation

```math
H_{M,N}:=\sum_{|k|\le N}\widehat H_M(k)e^{2\pi ik\theta}
\tag{SWN.14}
```

has bounded \(L^2\) size but derivative square size growing like \(N\):

```math
\|H_{M,N}\|_{L^2(\mathbb T)}^2
\le C M^2,
\tag{SWN.15}
```

while

```math
\|\partial_\theta H_{M,N}\|_{L^2(\mathbb T)}^2
=
\sum_{|k|\le N}(2\pi k)^2|\widehat H_M(k)|^2
\ge
c M^2 N.
\tag{SWN.16}
```

This is exactly why a square wave is the right toy model.  The primitive looks
bounded, but its edge has an unweighted square bill that grows with the cutoff.

The heat-scale pulse is the localized version.  If

```math
a_\tau(s)
=
M\tau^{-1}{\bf 1}_{(-\tau,0]}(s),
\tag{SWN.17}
```

then

```math
\int_{-1}^{0}a_\tau(s)\,ds=M,
\qquad
\int_{-1}^{0}|s|a_\tau(s)\,ds={M\tau\over2}\to0,
\tag{SWN.18}
```

but

```math
\int_{-1}^{0}a_\tau(s)^2\,ds
=
M^2\tau^{-1}.
\tag{SWN.19}
```

So the Fourier derivative energy and the source-square pulse energy are the
same mechanism in two languages: the edge of a step costs square action.

## 4. What the no-waste/profile theorem must prove

The square-wave normal form turns the remaining theorem into a precise
no-positive-step statement:

```math
\boxed{
\begin{gathered}
\text{No retained same-carrier Navier-Stokes terminal profile can have}\\
\text{a positive selected source primitive step at }s=0\\
\text{while all first-moment input, legal ledgers, and earlier selected source
slices vanish.}
\end{gathered}
}
\tag{SWN.20}
```

This statement is stronger than BV compactness.  BV allows the step.  It is
also stronger than weak trace continuity, because the selected source is
positive, quadratic, and one-sided after packet selection.

The only useful proof paths are:

```math
\boxed{
\text{source-square / critical-action payment}
}
\tag{SWN.21}
```

or

```math
\boxed{
\text{strict no-waste / source-residue evacuation}
}
\tag{SWN.22}
```

or, after same-witness admission,

```math
\boxed{
\neg Pack_Q\ \vee\ \neg Part_{N,Q}\ \vee\
\forall r>0\,\neg Field_{N,r,Q}.
}
\tag{SWN.23}
```

The Fourier square-wave model does not itself prove `(SWN.20)`.  It identifies
the exact profile and the exact missing coercivity.

## 5. Consequence for the attack

The surviving pulse should be handled by a minimal-step argument:

```math
\boxed{
\text{first minimal retained pulse}
\Longrightarrow
\text{terminal Heaviside source primitive}
\Longrightarrow
\text{no-positive-step/no-waste theorem or CM Part/Field exit.}
}
\tag{SWN.24}
```

This is sharper than trying to estimate a diffuse pulse directly.  It says the
bad object is a jump/front in the cumulative selected source curve.

## Verdict

The square-wave approximation is useful in exactly this role:

```math
\boxed{
\text{it is the Fourier normal form of the terminal source primitive jump.}
}
\tag{SWN.25}
```

It does not fix the unweighted problem by adding a weight.  It tells the proof
what the unweighted problem is: forbid a positive terminal step on the actual
selected Navier-Stokes carrier, or charge its edge by source-square/no-waste
action, or consume the admitted same witness through Part/Field.
