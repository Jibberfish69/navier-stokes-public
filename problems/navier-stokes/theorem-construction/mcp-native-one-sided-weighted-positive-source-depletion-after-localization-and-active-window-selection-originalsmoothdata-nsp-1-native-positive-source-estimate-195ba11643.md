# Native one-sided weighted positive-source depletion after localization and active-window selection

## Target

Prove the minimal native source-pulse estimate:

```math
(NSP.1):
\quad
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le o_N(1)+\operatorname{Loss}_{legal}(\mathcal F_N).
```

This is the one-sided weighted positive-source depletion theorem after terminal active-window selection and same-fluid localization.

## Direct tests

Signed global cancellation acts before terminal selection, localization, weights, and positive-part extraction. It gives no bound on the selected positive part without a native negative-part comparison.

The local energy inequality controls local flux, pressure/cutoff leakage, and boundary terms. Once those are routed into legal losses, the native interior positive source remains.

Paraproduct and Coifman-Meyer bounds give mapping estimates and positive envelopes. They reduce the problem to coefficient bounds, active-square Carleson, or alignment decorrelation.

First-moment dissipation is finite, while the target is scale-critical on heat-scale terminal windows. A singular positive source component can remain orthogonal to the installed first-moment reserve.

Preterminal smoothness applies on every compact subinterval before `T_*`. The selected family has `j_P\to\infty` and `t_P\uparrow T_*`, so no uniform terminal Carleson bound follows.

Compactness converts failure into an ancient local suitable source-residue limit with nonzero residue. It closes only with a produced rigid class plus residue Liouville theorem.

## Result

`NSP.1` is absent from current original-data inputs. The remaining valid routes are:

```math
TerminalSourceCoherence.A,
\quad
ScaleCriticalTreeCarleson.A,
\quad
ZenoBoundedClass_{\mathcal B}.A+ZenoResidueLiouville_{\mathcal B}.A,
```

or a direct proof that the native singular source measure vanishes:

```math
\mu_*^{sing}=0.
```

## Verdict

The native one-sided weighted positive-source theorem remains open. It is the current minimal formulation of `SourcePulseExclusion.A`.