# TerminalSourceReverseHolder.A failed attempt

## Status

Failed unconditional discharge from installed inputs.  This note records the outcome after `SourceWallRootDichotomy.A`: the non-Carleson Zeno temporal anti-concentration branch remains open.

## Target

Prove a reverse-Holder estimate for the native terminal source marginal:

```math
TerminalSourceReverseHolder.A:
\quad
\left\|\,\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,\right\|_{L_s^p((-1,0))}
\le C_R,
\qquad p>1.
```

This would imply

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p},
```

hence terminal anti-concentration and evacuation of the Zeno source-residue atom.

## Installed inputs

The branch supplies same-fluid terminal carrier fidelity, ASAC-paid pair-weight defects, legal cutoff and boundary exits, finite donor-tree telescoping through `LocalDonorBalance.A`, and preterminal entrance-leaf decay.

It also supplies the measure-level bound

```math
\int_{-1}^{0}\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}ds\le C_R.
```

This is an `L^1_s` estimate.

## Obstruction

The terminal layer model

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has

```math
\|g_m\|_{L^1(-1,0)}=1,
\qquad
\|g_m\|_{L^p(-1,0)}=m^{1-1/p}\to\infty
\quad(p>1),
```

and converges weakly to a terminal time atom.  This model matches the current measure-level information: bounded native source mass, terminal support, and positive residue at the terminal slice.

Same-fluid ancestry records the chain carrying the mass and licenses finite-tree telescoping.  It gives lineage, legal matching, and routing fidelity.  It supplies no reverse-Holder exponent.

First-pulse selection localizes the mass to the terminal layer.  The reverse-Holder target requires quantitative temporal spread away from that layer.

Fixed viscosity gives spatial smoothing after positive heat time.  On a layer of thickness `1/m`, the Duhamel response

```math
\int_{-1/m}^{0}e^{(0-s)\nu\Delta}F_m(s)ds
```

can remain order-size because the semigroup is close to identity at normalized heat times `|s|\ll1`.

Finite donor balance telescopes finite truncations.  The infinite Zeno tail still requires a uniform estimate on the terminal leaves, which is exactly a local positive source Carleson / PRD packet.

## Rigid-class fallback

The generated class

```math
B_{sfZ,ASAC}
```

records same-fluid Zeno ancestry, ASAC-paid retained defects, legal exits removed, finite donor truncations paid, and locally finite native positive source mass.  This class still admits terminal source-atom limits of the form

```math
d\mu_m^{src}(y,s)=\rho(y)m\mathbf 1_{(-1/m,0]}(s)dyds
\rightharpoonup
\rho(y)dy\otimes\delta_{s=0}.
```

Thus this class has no residue Liouville theorem from installed inputs.

## Verdict

The conditional implication is valid:

```math
TerminalSourceReverseHolder.A
\Longrightarrow
TerminalSourceAntiConcentration.A
\Longrightarrow
TerminalZenoRefillNoFreeSink.A_{ind}.
```

The unconditional proof from same-fluid ancestry fails.  The terminal refill sink returns to one of three theorem-facing atoms:

```math
LocalPositiveSourceCarleson.A / PositiveRemainderDepletion.A,
\qquad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
\text{ for a genuinely produced new }B,
\qquad
PositiveActiveCarlesonReserve.A
\text{ with independent scale-critical content.}
```

Operationally, the next shortest target is the PRD / source-weighted angular depletion path.