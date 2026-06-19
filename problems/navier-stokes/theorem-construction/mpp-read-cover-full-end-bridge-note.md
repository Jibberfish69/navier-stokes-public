# MPP READ.COVER / FULL.END Bridge Note

Status: installed theorem-facing compatibility theorem, conditional on the
averaged endpoint package and on the separately named readout suppliers. This
file does not claim unconditional Navier-Stokes closure.

Source anchors:

- `problems/navier-stokes/live-theorem-edge.yaml`
- `problems/navier-stokes/theorem-packet.yaml`
- `problems/navier-stokes/proof-obligation-matrix.yaml`
- `problems/navier-stokes/theorem-construction/mpp-endpoint-source-terminal-conditional-assembly-note.md`
- `problems/navier-stokes/theorem-construction/mpp-averaged-act-kx-scale-critical-forcing-packet-note.md`

## READ.COVER

The bridge target is

```math
\boxed{
READ.COVER:
End_{NS,\mathrm{avg}}
\Longrightarrow
\text{uniform positive-scale SCF-good finite cover}
}
```

on the retained same-fluid approach window

```math
Q^\Phi(I,A_\sharp).
```

The averaged bad material set at threshold `\varepsilon` is

```math
\mathcal B_{\varepsilon}^{\Phi}
:=
\left\{(a,t):
\forall r>0,\quad
SCF_{\mathrm{base}}(Q_r^\Phi(a,t))>\varepsilon
\right\}.
```

The bad-set absorption row is

```math
CAVG.J_\varepsilon:
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{\mathrm{avg}}.
```

The averaged endpoint package discharges the averaged jump face:

```math
End_{NS,\mathrm{avg}}
\Longrightarrow
\neg Jump_{\mathrm{avg}}.
```

Therefore, for any threshold for which `CAVG.J_\varepsilon` is installed,

```math
End_{NS,\mathrm{avg}}
\Longrightarrow
\mathcal B_{\varepsilon}^{\Phi}=\varnothing.
```

Apply this at a strict margin threshold, for example
`\varepsilon=\varepsilon_m/2`. Then every material point in the retained
approach window has some positive same-fluid cylinder satisfying

```math
SCF_{\mathrm{base}}(Q_{r(a,t)}^\Phi(a,t))
\le
\varepsilon_m/2.
```

The strict margin is essential. It prevents the compactness step from depending
on a borderline equality at threshold `\varepsilon_m`. By local stability of the
SCF packet under sufficiently small changes of center and radius inside the
same-fluid admissible coordinate chart, after shrinking the radius if needed
there is an open material neighborhood on which the corresponding cylinder
remains `\varepsilon_m`-good.

These open neighborhoods cover the compact retained approach window. Hence
there are finitely many material centers and radii

```math
(a_i,t_i),\quad r_i>0,\qquad 1\le i\le M,
```

such that

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^M Q_{r_i}^{\Phi}(a_i,t_i),
```

and

```math
SCF_{\mathrm{base}}(Q_{r_i}^{\Phi}(a_i,t_i))
\le
\varepsilon_m
\qquad (1\le i\le M).
```

Since the cover is finite,

```math
r_\ast:=\min_{1\le i\le M}r_i>0.
```

Thus `READ.COVER` supplies the uniform positive-scale SCF-good finite cover
needed by the pointwise readout layer.

## READ.END

The compatibility bridge to the old pointwise endpoint matrix is

```math
\boxed{
READ.END:
End_{NS,\mathrm{avg}}
+
READ.COVER
+
Field.Read
+
DTC.Read
\Longrightarrow
End_{NS}.
}
```

Here `READ.COVER` is not an upstream averaged-route supplier. It is a downstream
consequence of `End_NS_avg` after the averaged endpoint grammar has already
removed `Jump_avg`.

`Field.Read` is the pointwise field-coherence readout:

```math
Field_{\mathrm{avg}}
+
\text{uniform positive-scale SCF-good finite cover}
+
ATD_m^\varepsilon
\Longrightarrow
Field.
```

This is where the positive lower scale and finite chain connectivity are spent.
Without that scale, averaged field coherence remains averaged control and does
not become the old pointwise `Field` row.

`DTC.Read` is the transported-center/tower readout:

```math
DTC.A_{\mathrm{avg}}
+
\text{fixed-scale finite same-fluid cover}
+
ATD_m^\varepsilon
\Longrightarrow
DTC.A.
```

The velocity tower readout uses the fixed finite cover, the local averaged tower
packet, and the three-dimensional embedding `H^2\hookrightarrow L^\infty` on
the shrunken cover elements. For the forcing rungs

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
```

the viscous part is supplied by the `U_{q+2}` readout. The pressure part still
requires the local Poisson / packet-pressure theorem at the exact derivative
depth. This pressure readout is part of `DTC.Read`; it is not supplied merely by
velocity `H^2` control.

Once `Field.Read` and `DTC.Read` are available, the old endpoint rows are fed as
follows:

```math
Field.Read \Longrightarrow END.Field
\quad\text{and the old }Field\text{ factor inside }CM,
```

while

```math
DTC.Read \Longrightarrow END.TowerAmp \Longrightarrow END.TowerBound.
```

The pack and participation rows are shared between the averaged and old endpoint
grammars. Therefore the old endpoint package follows:

```math
End_{NS,\mathrm{avg}}
+
READ.COVER
+
Field.Read
+
DTC.Read
\Longrightarrow
End_{NS}.
```

## FULL.END

The final compatibility theorem is

```math
\boxed{
FULL.END:
AVG.MAIN.A
+
READ.COVER
+
READ.END
\Longrightarrow
End_{NS}.
}
```

Equivalently, expanding the dependency order:

```math
AVG.MAIN.A
\Longrightarrow
End_{NS,\mathrm{avg}},
```

then

```math
End_{NS,\mathrm{avg}}
\Longrightarrow
READ.COVER,
```

and finally

```math
End_{NS,\mathrm{avg}}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

Thus `FULL.END` is a bridge from the completed averaged route back to the old
pointwise endpoint matrix only after the two readout suppliers are present.

## Boundaries

- `READ.COVER` is downstream of `End_NS_avg`; it cannot be used to prove
  `AVG.MAIN.A`.
- The compactness step needs a strict-margin bad-set exclusion, such as
  `CAVG.J_{\varepsilon_m/2}` plus `End_NS_avg => \neg Jump_avg`.
- `ATD_m^\varepsilon` must be applied only on CKN-admissible same-fluid
  cylinders uniformly comparable to ordinary parabolic cylinders, with suitable
  solution hypotheses in force.
- `DTC.Read` requires the pressure component of `K_q`; velocity tower readout
  alone is insufficient.
- The strengthened source route does not erase the separate exact same-depth
  pressure branch unless the route surfaces explicitly replace that branch.

Current status:

```math
\boxed{\text{Averaged route: installed as a typed conditional route.}}
```

```math
\boxed{\text{Old pointwise endpoint route: installed through }Field.Read,\ DTC.Read,\ READ.COVER,\ READ.END,\ FULL.END.}
```
