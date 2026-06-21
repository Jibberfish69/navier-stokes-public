# MPP GoodScale Failure To Field Exit For The H^{1/2} Route

## Status

Conditional CM failure-classification theorem. The proof is direct under the Field row used by the GoodScale / Field.TTU surfaces.

## Statement

Let

```math
\mathcal W_*=(O_{NS}^{work},Q,N,\Phi,\mathcal T)
```

be the synchronized CM witness data, with the Field scale left variable. Assume `Pack_Q(\mathcal W_*)` and `Part_{N,Q}(\mathcal W_*)` are retained.

Let `\neg GoodScale.TTU(\mathcal W_*)` mean that there exists an active terminal material point

```math
(a_*,t_*)\in Q^\Phi([t_0,T_*),A_\sharp)
```

such that every positive same-fluid cylinder centered at `(a_*,t_*)` is SCF-bad:

```math
\forall \rho>0,
\qquad
SCF_{base}(Q_\rho^\Phi(a_*,t_*))>\varepsilon_m.
```

Then the retained Part plus Field-window evidence branch selects the Field face:

```math
Pack_Q(\mathcal W_*)
\wedge
Part_{N,Q}(\mathcal W_*)
\wedge
\neg GoodScale.TTU(\mathcal W_*)
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}(\mathcal W_*).
```

## Proof

`Pack_Q` keeps the active terminal point inside the same material packet and supplies the retained material address. The point is therefore still being tested inside the CM witness ledger.

`Part_{N,Q}` keeps the same pressure-viscosity participation law attached to that retained material point. The active terminal point remains inside the same Navier--Stokes participation row.

The Field row requires a positive local same-fluid coherence scale. In the GoodScale / Field.TTU surfaces this positive scale is exactly the SCF-good cylinder that supports `READ.COVER`, `ATD_m^\varepsilon`, and then pointwise `Field` readout.

The GoodScale failure gives an active terminal material point with no positive SCF-good cylinder at any radius. Hence no positive local Field scale exists at that point. With Pack and Part retained, the remaining failed CM Part/Field is Field coherence.

Thus the branch lands in the Field face. In the averaged endpoint grammar, the same obstruction appears as `Jump_avg`.

## Physical / ontological reading

The material point still has an address. The same pressure-viscosity law still participates. Yet no positive neighborhood around that material point supports coherent same-fluid field readout. The flow has retained a material carrier and a governing law while losing local tower coherence. That is the Field exit.

## Consequence for the H^{1/2} route

The `H^{1/2}` class-exit chain now has a clean GoodScale split.

Pass branch:

```math
GoodScale.TTU
\Longrightarrow
READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field
\Longrightarrow
\text{matched finite-difference shell control.}
```

Failure branch:

```math
\neg GoodScale.TTU
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

So the route no longer needs a positive proof of `GoodScale.TTU` on every branch. The GoodScale failure branch is a CM Field exit.
