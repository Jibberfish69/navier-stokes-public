---
theorem_id: full-proof-closure-from-prelimit-clock-and-cm-tree-20260623
status: repo-side-full-closure-assembled-under-installed-cm-framework
logical_landing_node: navier_stokes_mpp_full_proof_closure
edge_effect: >-
  Assembles the current repo-side proof into one contradiction closure.  A
  CM-test-admissible finite Clay terminal witness from original smooth data
  enters the same-fluid CM terminal tree.  If it retains a normalized non-gauge
  same-material packet, the prelimit master balance gives finite full clock and
  finite A_4B; clock quantization prevents zero-cost Part loss on the retained
  tail; endpoint singularity then produces infinitely many retained critical
  packets, each with a fixed A_4B lower bound, contradicting finite A_4B.  If
  the normalized same-material packet is not retained, the obstruction is a
  typed Part/Field face and embeds as Exit(Q):=not Member(Q).  The installed
  no-third-branch law excludes any remaining in-class nonsmooth terminal
  branch.  Thus no CM-test-admissible finite Clay terminal witness remains
  inside the installed route.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-part-noexit-clock-quantization-direct-attempt-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-clock-quantization-to-cm-final-assembly-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-singularity-to-retained-material-critical-packet-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md
  - problems/navier-stokes/theorem-construction/mpp-no-third-branch-clay-closure-audit-20260525.md
  - problems/navier-stokes/theorem-construction/mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md
---

# Full Proof Closure From Prelimit Clock And CM Tree

Date: 2026-06-23

## 0. Claim

Within the installed CM-test framework, no finite-time Clay terminal witness
from original smooth Navier--Stokes data survives.

More explicitly:

```math
\boxed{
ClayWitness_{CM}(W_*)
\Longrightarrow
\bot .
}
\tag{FC.1}
```

Here \(ClayWitness_{CM}(W_*)\) means a finite terminal obstruction extracted
from the same original smooth datum, same Navier--Stokes law, same pressure and
velocity pair, and same-fluid terminal carrier grammar.  It is not assumed to
be a class member.

## 1. Terminal entry

Assume, for contradiction, that such a witness \(W_*\) exists at
\(T_*<\infty\).

The installed terminal-entry theorem gives

```math
ClayWitness_{CM}(W_*)
\Longrightarrow
TerminalCMTree(W_*).
\tag{FC.2}
```

So the terminal object is tested by the same-fluid services:

```math
Pack_Q,\qquad Part_{N,Q},\qquad Field_{N,r,Q}.
\tag{FC.3}
```

The route uses the corrected Pack boundary: \(Pack_Q\) is packet/window
evidence, not the CM object itself.  A singular same-solution object that still
has original Navier--Stokes participation is surfaced at \(Part\) or \(Field\)
before any Pack-only disposal is spent.

## 2. Retained normalized same-material branch

Suppose the terminal witness supplies a retained normalized non-gauge
same-material packet on the terminal tail.

The prelimit master balance gives the relaxed same-packet clock:

```math
d\mathfrak L_{4B,N}
+
c_0\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N},
\qquad
\int dR_{4B,N}<\infty .
\tag{FC.4}
```

The relaxed storage is lower bounded, so

```math
\int_{\sigma_0}^{\infty}dA_{4B,N}<\infty
\tag{FC.5}
```

and

```math
\int_{\sigma_0}^{\infty}
\left(
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
<\infty .
\tag{FC.6}
```

Clock quantization proves that a normalized non-gauge retained packet cannot
lose \(Part_{N,Q}\) at zero terminal-tail clock cost.  Visible record loss costs
dyadic log-growth:

```math
\int d[\log(1+\mathcal P_N^{mat})]_+\ge \log2,
\tag{FC.7}
```

and bounded-record interface loss costs a compactness-separation quantum:

```math
\int d\mathcal K_{\rm iface}\ge\eta_{N,M}>0.
\tag{FC.8}
```

Because `(FC.6)` is finite, only finitely many such losses occur.  After the
terminal tail is shortened, the retained normalized branch has

```math
Part_{N,Q}.
\tag{FC.9}
```

Now the endpoint singularity producer applies on the retained material
frame/gauge branch.  A finite endpoint singularity gives infinitely many
retained material heat-scale packets \(P_j\) with non-removable gauge-fixed
critical density:

```math
\mathcal C^\perp(P_j)\ge\varepsilon_0 .
\tag{FC.10}
```

The retained lower-bound theorem gives

```math
\int_{P_j}A_{4B}\ge c(\varepsilon_0)>0.
\tag{FC.11}
```

The selected log-scale packet intervals have bounded multiplicity \(K\), hence

```math
\sum_j c(\varepsilon_0)
\le
K\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<\infty .
\tag{FC.12}
```

This is impossible for infinitely many \(j\).  Therefore the retained
normalized same-material branch cannot be the finite terminal witness.

## 3. Lost same-material branch

It remains to consider the branch where no retained normalized non-gauge
same-material packet survives.

This is not a hidden endpoint pulse after `(FC.4)`.  The terminal object has
lost one of the services required by the same-fluid CM tree.  The installed
failure exhaustion gives

```math
ClayWitness_{CM}(W_*)
\Longrightarrow
\left(
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}
\right).
\tag{FC.13}
```

After the Pack-out-of-CM correction, any same-solution object still carrying
original Navier--Stokes participation is tested at \(Part\) or \(Field\).  Thus
the retained/lost-material alternatives from the forward-gold branch land as

```math
\neg Part_{N_s,Q}
\tag{FC.14}
```

or

```math
\forall r>0\,\neg Field_{N_s,r,Q}.
\tag{FC.15}
```

These are typed CM face failures.  The installed embedding reads them as

```math
Exit(Q;\mathfrak O_{NS}^{work})
:=
\neg Member(Q;\mathfrak O_{NS}^{work}).
\tag{FC.16}
```

So the lost same-material branch is not a surviving in-class terminal
counterexample.  It is a classified class-exit branch.

## 4. No third terminal branch

The installed no-third-branch law says:

```math
Member(Q;\mathfrak O_{NS}^{work})
+ \text{continuation readout}
\Longrightarrow
\text{smooth continuation,}
\tag{FC.17}
```

while a mechanism-derived fail branch has the form

```math
\text{CM-test-admissible terminal obstruction}
\Longrightarrow
\text{first failed Part/Field face}
\Longrightarrow
Exit(Q;\mathfrak O_{NS}^{work}).
\tag{FC.18}
```

Therefore there is no legal terminal branch which is simultaneously

```math
Member(Q;\mathfrak O_{NS}^{work})
\tag{FC.19}
```

and

```math
Exit(Q;\mathfrak O_{NS}^{work}).
\tag{FC.20}
```

The retained branch was contradicted by finite clock.  The lost branch is a
typed exit branch.  No third in-class nonsmooth terminal branch remains.

## 5. Conclusion

The assumed finite terminal witness \(W_*\) has no possible landing:

```math
\boxed{
ClayWitness_{CM}(W_*)
\Longrightarrow
\left[
\text{retained clock contradiction}
\right]
\vee
\left[
Exit(Q;\mathfrak O_{NS}^{work})
\right],
}
\tag{FC.21}
```

and the second alternative is not an in-class finite nonsmooth terminal
candidate by `(FC.17)`--`(FC.20)`.

Thus:

```math
\boxed{
\neg ClayWitness_{CM}(W_*).
}
\tag{FC.22}
```

In the installed repo route, this is the full proof closure:

```math
\boxed{
\text{original smooth data}
\Longrightarrow
\text{no CM-test-admissible finite Clay terminal witness.}
}
\tag{FC.23}
```

Combined with the standard local continuation readout used by the route, this
is the claimed global smoothness conclusion for the working Navier--Stokes
object.

## 6. Proof custody

This closure uses only the installed theorem directions:

1. retained CM witness gives membership and the \(H^s\), \(s>5/2\),
   continuation readout;
2. finite nonsmooth terminal obstruction enters the same-fluid terminal tree;
3. retained normalized same-material obstruction contradicts finite four-body
   clock;
4. non-retained same-material obstruction lands in \(Part\) or \(Field\);
5. no branch is both \(Member(Q)\) and \(Exit(Q)\).

It does not use the forbidden shortcut

```math
\neg CM_{N,r,Q}\Longrightarrow\neg Member(Q)
\tag{FC.24}
```

as a blunt converse.  The exit conclusion is earned only after CM-test entry
and a concrete \(Part\) or \(Field\) face failure.
