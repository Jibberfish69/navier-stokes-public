# READ.COVER From `End_NS_avg`

## Status

Conditional readout-cover theorem.

## Statement

On the retained same-fluid approach window,

```math
End_{NS,avg}
\Longrightarrow
READ.COVER:
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_*:=\min_i r_i>0,
```

with

```math
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

## Proof

Define the averaged bad material set at threshold `\varepsilon` by

```math
\mathcal B_{\varepsilon}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon\}.
```

The averaged endpoint grammar gives

```math
CAVG.J_\varepsilon:
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

The endpoint package contains the averaged jump exclusion:

```math
End_{NS,avg}\Longrightarrow \neg Jump_{avg}.
```

Apply this at the strict threshold `\varepsilon=\varepsilon_m/2`. Then

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

Therefore every material point in the retained approach window has a positive same-fluid cylinder with

```math
SCF_{base}(Q_{r(a,t)}^\Phi(a,t))\le\varepsilon_m/2.
```

Strict margin stability gives an open material neighborhood around each point and a possibly smaller radius on which the cylinder remains `\varepsilon_m`-good:

```math
SCF_{base}(Q_{\tilde r(a,t)}^\Phi(\tilde a,\tilde t))\le\varepsilon_m.
```

These neighborhoods cover the retained approach window. Compactness of the retained same-fluid approach window gives a finite subcover:

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i).
```

Since the subcover is finite and each radius is positive,

```math
r_*:=\min_{1\le i\le M}r_i>0.
```

This is the uniform positive-scale SCF-good finite cover required by terminal readout.

## Dependency Order

The dependency order is

```math
AVG.MAIN.A\Longrightarrow End_{NS,avg}\Longrightarrow READ.COVER.
```

`READ.COVER` feeds only the terminal readout layer:

```math
READ.COVER+ATD_m^\varepsilon+Field_{avg}\Longrightarrow Field.Read,
```

```math
READ.COVER+ATD_m^\varepsilon+DTC.A_{avg}\Longrightarrow DTC.Read.
```

## Output

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

This proves the readout cover theorem used by `Field.Read`, `DTC.Read`, and `READ.END`.