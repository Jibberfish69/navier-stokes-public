# ZenoCancellationClassProduction.A / rigid-class production

## Target

After the installed compactness extraction, prove a rigidity supplier:

```math
OriginalSmoothData\Longrightarrow ZenoCancellationClassProduction.A
```

or equivalently produce a class `\mathcal B` such that

```math
ZenoBoundedClass_{\mathcal B}.A+ZenoResidueLiouville_{\mathcal B}.A.
```

## Installed extraction

`ZenoCompactnessExtraction.A` produces an ancient local suitable source-residue limit

```math
(u_*,p_*,\mu_*^{src})
```

with native positive residue:

```math
\mu_*^{src}(Q_1^-)
\ge c_0>0.
```

## Weak cancellation test

Weak signed cancellation means

```math
\mathcal N_{preCauchy}^{loc}(u_*;\varphi)=0
```

for signed source tests. This does not imply

```math
\mu_*^{src}=0,
```

because the native residue is the positive active source-residue measure extracted by the branch. Signed cancellation can hide positive active mass.

## Strong native cancellation test

Strong native cancellation means

```math
\int\varphi\,d\mu_*^{src}=0
\qquad\forall \varphi\ge0.
```

This gives `\mu_*^{src}=0`. It also directly contradicts the extracted lower bound. Thus strong native cancellation is already the desired contradiction, not an independently produced class from the surviving Zeno branch.

## Rigid-class route

The viable statement must produce a genuine rigid class:

```math
\mathcal B\in\{\text{Type I},\text{finite global ancient energy},\text{critical smallness},\text{bounded ancient vorticity},\text{self-similar},\text{2D/axisymmetric},\ldots\}
```

and then prove a residue Liouville theorem on that class. Current compactness, pressure, local energy, same-fluid transport, and finite-band structure produce an ancient local suitable object only. They do not produce membership in such a class.

## Verdict

`ZenoCancellationClassProduction.A` remains open. The sharpened target is:

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_{\mathcal B}.A
```

for an explicit rigid class `\mathcal B`, together with

```math
ZenoResidueLiouville_{\mathcal B}.A.
```

No current surface supplies that package.
