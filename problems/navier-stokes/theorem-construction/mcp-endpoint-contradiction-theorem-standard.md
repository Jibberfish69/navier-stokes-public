# Endpoint Contradiction Theorem In Standard Form

## Statement

Let `(u,p)` be a maximal classical periodic Navier-Stokes solution on `[0,T_*)`. Suppose the averaged class package and endpoint certificates are installed on a terminal same-fluid approach tail. Then a first finite endpoint cannot occur.

Equivalently, any alleged first finite endpoint must enter one of the endpoint faces

```math
Dead,
\qquad packing\text{-}detached,
\qquad tower\text{-}blown_{avg},
\qquad Jump_{avg},
\qquad response\text{-}margin\text{-}collapse,
```

and each face is eliminated by the terminal package. The historical four-face
form is valid only after the Part row has retained strict response margins or
closed terminal response predicates.

## Proof

A first finite endpoint is a first failure of the terminal class package or its tower readout. The endpoint matrix minimality theorem says that every primitive failure is one of these faces:

1. participation failure, recorded as `Dead`;
2. strict response-margin collapse in the Part row, recorded as
   `response-margin-collapse`;
3. packing failure, recorded as `packing-detached`;
4. averaged tower amplitude escape, recorded as `tower-blown_avg`;
5. terminal loss of positive-scale averaged field cover, recorded as `Jump_avg`.

Mixed failures reduce to unions of these primitive failures by the cross row.

The terminal package supplies the eliminators:

```math
Part\Longrightarrow Dead\text{ excluded},
```

```math
Part\text{ with closed terminal predicates or }\mathcal R_\ell\ge\gamma_\ell
\Longrightarrow response\text{-}margin\text{-}collapse\text{ excluded},
```

```math
Pack\Longrightarrow packing\text{-}detached\text{ excluded},
```

```math
DTC.A_{avg}\Longrightarrow tower\text{-}blown_{avg}\text{ excluded},
```

and

```math
Field_{avg}+OFP.A_{avg}\Longrightarrow Jump_{avg}\text{ excluded}.
```

Thus every possible first endpoint face is excluded. This contradicts the existence of a first finite endpoint.

## Consequence

The averaged endpoint package gives

```math
End_{NS,avg}.
```

After terminal readout, the pointwise endpoint package gives

```math
End_{NS}.
```

## Boundary

This theorem is the endpoint contradiction only. The final continuation step is supplied by the periodic continuation readout theorem.
