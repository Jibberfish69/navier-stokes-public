---
ns_viewer:
  theorem_id: forward-gold-brascamp-lieb-loomis-whitney-projection-coercion-direct-test-20260620
  status: direct-test-complete-projection-inequalities-not-independent-source-square-suppliers
  proof_role: forward_gold_projection_coercion_test
  logical_landing_node: unweighted_terminal_critical_action_reserve
  edge_effect: "Tests whether Brascamp-Lieb/Loomis-Whitney projection inequalities can turn transverse projection visibility, finite mode lobes, or common nodal-collar geometry into the missing same-carrier square reserve. They cannot produce the reserve from current inputs. They are useful consumer lemmas after transversality plus same-carrier p>1/Orlicz/source-square control, or after a native signed residue identity, has already been paid."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-mode-lobe-carrier-expansion-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-legal-mode-norming-family-compact-separation-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-post-nowaste-equivalence-closeout-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-common-mode-nodal-source-evacuation-proof-20260620.md
  downstream_consequence: "Do not respawn Brascamp-Lieb, Loomis-Whitney, finite projection volume, or nodal-collar transversality as independent gold suppliers. They can support finite-mode/nodal geometry only after the actual selected positive carrier has a same-carrier integrability reserve or after the projected same-shadow residue identity is proved."
---

# MPP Forward-Gold Brascamp-Lieb / Loomis-Whitney Projection Coercion Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Brascamp--Lieb and Loomis--Whitney are useful
projection geometry tools, but they do not close the terminal heat-scale source
problem from the current Navier--Stokes inputs.

They can say that a set with small transverse projections has small volume.
They cannot say that the selected positive source measure on that set is small
unless the proof already has a same-carrier integrability reserve.

So the route is a consumer route:

```math
\boxed{
\text{projection geometry}
+
\text{same-carrier }p>1\text{ / Orlicz / source-square control}
\Longrightarrow
\text{nodal or projection evacuation}.
}
\tag{BLLW.1}
```

It is not a producer route:

```math
\boxed{
\text{projection geometry alone}
\not\Longrightarrow
\text{same-carrier source-square / terminal anti-atom}.
}
\tag{BLLW.2}
```

## 1. The usable projection inequalities

In Brascamp--Lieb form, let \(B_i:\mathbb R^d\to\mathbb R^{d_i}\) be linear
maps and let \(c_i>0\) be exponents in an admissible datum.  Then for
nonnegative functions \(f_i\),

```math
\int_{\mathbb R^d}
\prod_i f_i(B_i z)^{c_i}\,dz
\le
C_{BL}
\prod_i
\left(
\int_{\mathbb R^{d_i}} f_i
\right)^{c_i}.
\tag{BLLW.3}
```

For characteristic functions, this gives a projection-volume estimate

```math
|E|
\le
C_{BL}
\prod_i |B_iE|^{c_i}.
\tag{BLLW.4}
```

The Loomis--Whitney special case in \(\mathbb R^3\) says

```math
|E|^2
\le
|\pi_{12}E|\,|\pi_{13}E|\,|\pi_{23}E|.
\tag{BLLW.5}
```

Both `(BLLW.4)` and `(BLLW.5)` are upper bounds on geometric size from
projections.  They are not lower bounds on a positive source measure, and they
do not create time spreading.

## 2. What the gold route would need

The live selected carrier is not Lebesgue volume.  It is a positive terminal
source measure after localization, projection, lifting, packet selection, and
positive-part extraction:

```math
d\mu_m^+(P)
:=
\left[
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,dxdt
\right]_+.
\tag{BLLW.6}
```

Projection geometry would help only after it can be converted into one of the
actual source estimates.  The nodal-collar version is:

```math
\mu_m^+(N_{\kappa,m})
\le
Legal_{\kappa,m}+o_m(1),
\tag{BLLW.7}
```

where \(N_{\kappa,m}\) is the common finite-mode nodal collar.  The
source-square version is:

```math
\int_{I_m}
\lambda_m
\left(\Pi_m^+(t)\right)^2\,dt
\le
Legal_m+o_m(1).
\tag{BLLW.8}
```

The projected residue version is:

```math
\sum_{P\in F_{\ell,m}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,dxdt
=
\ell\cdot \Phi_m
-Legal_m
-o_m(1).
\tag{BLLW.9}
```

Brascamp--Lieb or Loomis--Whitney can support `(BLLW.7)` only if small volume
or small projected volume implies small \(\mu_m^+\)-mass.  That implication is
exactly a same-carrier uniform-integrability input:

```math
\mu_m^+(A)
\le
C
|A|^{1-1/p}
\|\rho_m^+\|_{L^p},
\qquad
p>1.
\tag{BLLW.10}
```

The estimate `(BLLW.10)` is not supplied by projection geometry.  It is the
same \(p>1\), Orlicz, or source-square reserve already isolated elsewhere.

## 3. Terminal time pulse survives all spatial projections

Let \(E\subset B_1\subset\mathbb R^3\) have positive finite measure and let
\(\varphi\ge0\) be supported in \(E\).  For \(\tau\downarrow0\), define

```math
\rho_\tau(s,x)
:=
{\bf 1}_{(-\tau,0]}(s)\,\tau^{-1}\varphi(x),
\qquad
\int_E\varphi(x)\,dx=1.
\tag{BLLW.11}
```

Then

```math
\int_{-1}^0\int_{B_1}\rho_\tau(s,x)\,dxds=1,
\tag{BLLW.12}
```

but for every fixed \(\varepsilon>0\),

```math
\lim_{\tau\downarrow0}
\int_{-\varepsilon}^0\int_{B_1}\rho_\tau(s,x)\,dxds
=1.
\tag{BLLW.13}
```

This is the terminal time-face atom.  Its spatial projections are independent
of \(\tau\).  A spatial projection inequality sees the shape \(E\), not the
terminal time concentration.

If one uses space-time projections that include time, the set
\((-\tau,0]\times E\) has small volume, but the density grows like
\(\tau^{-1}\).  The \(L^p\) cost records exactly the missing super-\(L^1\)
input:

```math
\|\rho_\tau\|_{L^p((-1,0)\times B_1)}^p
=
\tau^{1-p}
\int_E\varphi(x)^p\,dx,
\qquad p>1.
\tag{BLLW.14}
```

Thus any projection route that kills `(BLLW.11)` has inserted a \(p>1\)
same-carrier control.  It has not obtained that control from
Loomis--Whitney or Brascamp--Lieb.

## 4. The square-only heat-scale pulse is also invisible to projection volume

The square-reserve enemy can have vanishing linear mass.  Let
\(\lambda\to\infty\), let \(I_\lambda=(-\lambda^{-2},0]\), and choose
\(\varphi\ge0\) with \(\int\varphi^2=1\).  Set

```math
a_\lambda(s,x)
:=
\lambda^{1/2}
{\bf 1}_{I_\lambda}(s)
\varphi(x).
\tag{BLLW.15}
```

Then its linear mass vanishes:

```math
\int_{I_\lambda}\int a_\lambda(s,x)\,dxds
=
\lambda^{-3/2}
\int\varphi(x)\,dx
\longrightarrow0,
\tag{BLLW.16}
```

while the normalized square reserve remains order one:

```math
\lambda
\int_{I_\lambda}\int a_\lambda(s,x)^2\,dxds
=1.
\tag{BLLW.17}
```

Projection inequalities on the spatial support of \(\varphi\) do not see the
time-square normalization in `(BLLW.17)`.  They can bound the geometry of the
support, but the gold obstruction is the square-strength carrier density on a
heat-scale clock.

## 5. Common nodal collars need carrier integrability

The finite mode-lobe route leaves a nodal remnant.  A Brascamp--Lieb style
transversality lemma could be useful here.  For example, if the finite mode map

```math
\Psi_m=(\psi_{1,m},\ldots,\psi_{J,m})
\tag{BLLW.18}
```

has a nondegenerate differential on the packet, one expects a volume estimate

```math
|N_{\kappa,m}|
:=
\left|
\{|\psi_{1,m}|<\kappa,\ldots,|\psi_{J,m}|<\kappa\}
\right|
\le
C\kappa^\alpha .
\tag{BLLW.19}
```

This is a geometric statement.  It becomes a source evacuation only through
uniform integrability:

```math
\mu_m^+(N_{\kappa,m})
\le
C
|N_{\kappa,m}|^{1-1/p}
\|\rho_m^+\|_{L^p}
\le
C\kappa^{\alpha(1-1/p)}
\|\rho_m^+\|_{L^p}.
\tag{BLLW.20}
```

Without the \(L^p\), Orlicz, or source-square bound on the same selected
carrier, the source can concentrate inside the small nodal collar:

```math
\rho_{\kappa,m}
=
|N_{\kappa,m}|^{-1}{\bf 1}_{N_{\kappa,m}},
\qquad
\int\rho_{\kappa,m}=1.
\tag{BLLW.21}
```

The volume tends to zero, but the source mass stays equal to one.  This is the
same terminal-carrier concentration problem in nodal-collar language.

## 6. Projection inequalities do not identify the signed native residue

The finite lobe expansion reduces the source-mode route to a lobe-shadow
residue identity:

```math
\text{ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows}.
\tag{BLLW.22}
```

Brascamp--Lieb and Loomis--Whitney do not prove `(BLLW.22)`.  They have no
signed Navier--Stokes stress, pressure, local pre-Cauchy source, positive-part
selection, or same-shadow residue content.  They can estimate geometric overlap
after a lobe-shadow carrier is already legally identified.  They cannot replace
the native PDE identity.

## 7. Exact route classification

The projection route is valid only as this conditional consumer:

```math
\boxed{
\begin{aligned}
&\text{finite projection / lobe / nodal transversality}\\
&\quad
+
\text{same-carrier }p>1\text{ / Orlicz / source-square UI}\\
&\Longrightarrow
\text{nodal-collar source evacuation or projection-volume cleanup}.
\end{aligned}
}
\tag{BLLW.23}
```

or as this PDE-identity consumer:

```math
\boxed{
\begin{aligned}
&\text{finite projection / lobe partition}\\
&\quad
+
\text{ModeProjectedMinimalChainResidueIdentity.A on the same shadows}\\
&\Longrightarrow
\text{source-mode score comparison on the refined carrier}.
\end{aligned}
}
\tag{BLLW.24}
```

At current input strength, neither consumer supplies the missing reserve:

```math
\boxed{
\text{Brascamp--Lieb / Loomis--Whitney}
\not\Longrightarrow
\text{UnweightedTerminalCriticalActionReserve.A}.
}
\tag{BLLW.25}
```

## Verdict

The projection inequalities are useful after the proof already controls the
selected carrier in a stronger-than-\(L^1\) way or after the native projected
residue identity is proved.  They do not themselves forbid the terminal
time-face atom, the square-only heat-scale pulse, or source concentration in a
small nodal collar.

So this branch returns to the same non-aliased wall:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{BLLW.26}
```

in one of its concrete forms: same-carrier source-square, selected critical
strain/normalized CKN carrier UI, strict no-waste with real critical action,
selected polar saturation/no-free Zeno donor chain, or a native projected
same-shadow residue identity that lands on the actual selected positive
carrier.
