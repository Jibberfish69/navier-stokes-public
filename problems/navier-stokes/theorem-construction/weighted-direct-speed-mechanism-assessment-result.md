# Weighted Direct Speed Mechanism Assessment Result

## Target

This note assesses the branch

```text
weighted direct speed mechanism
```

as a possible bypass for the fixed-shell amplitude obstruction in the coherent speed gate.

The unweighted speed gate needed by the collar route is

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{WDS.1}
```

## Candidate weighted estimate

A weighted direct mechanism has the form

```math
\|w_j u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\kappa_W\nu2^j+C_W2^{-j}\Phi(\mathcal E_D(X)),
\tag{WDS.2}
```

where `w_j` is an active selector weight on the persistent support.

## Conversion condition

If the weight has a positive lower envelope on the active support,

```math
w_j(x,t)\ge m_j>0
\qquad (x,t)\in\Gamma_j(t)\times I_j,
\tag{WDS.3}
```

then `WDS.2` implies

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
m_j^{-1}\kappa_W\nu2^j+m_j^{-1}C_W2^{-j}\Phi(\mathcal E_D(X)).
\tag{WDS.4}
```

Thus the weighted mechanism supplies the required collar gate exactly when

```math
m_j^{-1}\kappa_W\le\kappa_U
\tag{WDS.5}
```

and the lower-order constant is admissible in the route ledger.

## Degenerate-weight obstruction

A weighted estimate with no lower envelope leaves the fixed-shell amplitude obstruction active.

Let `x_0` be an active support point with `w_j(x_0,t)=0` or with arbitrarily small values along a sequence. Choose a coherent state `e` whose readout is nonzero at that point and set

```math
X_A:=Ae.
```

Then

```math
u_A:=u_{coh}[X_A]=A u_{coh}[e].
\tag{WDS.6}
```

The weighted quantity at a degenerate point can remain small while

```math
\|u_A\|_{L_x^\infty(\Gamma_j(t))}
=A\|u_{coh}[e]\|_{L_x^\infty(\Gamma_j(t))}
\tag{WDS.7}
```

grows linearly. Therefore a degenerate weighted estimate gives no unweighted collar-speed gate.

## Result

The weighted direct speed mechanism is a valid bypass only with a selector-weight coercivity theorem:

```math
\boxed{
\|w_j u_{coh}\|_{L_x^\infty}\le \kappa_W\nu2^j+C_W2^{-j}\Phi,
\qquad
w_j\ge m_j>0,
\qquad
m_j^{-1}\kappa_W\le\kappa_U.
}
\tag{WDS.8}
```

With these three inputs, the weighted branch implies the amplitude/speed gate and enters the collar chain exactly like the uniform-threshold branch.

Without the lower-envelope input `WDS.3`, the branch stays at weighted control and fails to feed the unweighted `L^\infty` collar estimate.

## Placement in the route

The current collar route has three supplier branches:

```text
uniform H_D^s threshold branch: closes high active shells;
finite low-shell residual branch: controls the finite block below threshold;
weighted direct branch: closes only under a positive selector-weight envelope.
```

## Boundary

The weighted direct branch cannot bypass the amplitude obstruction by weighting alone. It can bypass the threshold split only after proving a positive lower envelope for the active selector weight or after replacing the collar estimate itself with a weighted collar theorem.

## Source surfaces

- `problems/navier-stokes/theorem-construction/persistent-support-speed-gate-geometric-supplier-result.md`
- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-amplitude-residual-control-result.md`
- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`