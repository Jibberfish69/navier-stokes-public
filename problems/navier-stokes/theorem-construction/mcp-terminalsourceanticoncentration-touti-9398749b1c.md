# TerminalSourceAntiConcentration.ToUTI

## Status

Failed discharge; sharper reduction recorded.

## Target

The terminal source anti-concentration branch closes if the native positive source measure satisfies a super-L1 temporal estimate:

```math
UniformTemporalSourceIntegrability_p.A:
\quad
\|\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\|_{L_s^p((-1,0))}\le C_R,
\qquad p>1.
```

By Holder, this gives

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])\le C_R\varepsilon^{1-1/p}.
```

Hence terminal atoms vanish in the weak-star limit:

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

Therefore

```math
UniformTemporalSourceIntegrability_p.A
\Longrightarrow
TerminalResidueAtomExclusion.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

## Test result

The installed compactness and source ledgers give finite L1 temporal mass on fixed cylinders.  L1 mass permits terminal-layer concentration.  Fixed positive viscosity supplies no additional temporal reverse Holder gain at the normalized heat scale.  Same-fluid ancestry supplies packet lineage and legal routing, while temporal residence still requires a separate native source theorem.

## Exact remaining atom

```math
\boxed{TerminalSourceReverseHolder.A}
```

or equivalently

```math
\boxed{UniformTemporalSourceIntegrability_p.A.}
```

A proof of either gives the post-ASAC Zeno closure and hence feeds `SourcePulseExclusion.A` through the already installed ASAC/no-free-sink reductions.

## Verdict

The branch remains open.  The next theorem must prove super-L1 temporal control for the native positive source measure without importing the scale-critical Carleson reserve.