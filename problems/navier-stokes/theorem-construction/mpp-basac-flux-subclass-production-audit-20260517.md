# MPP B_ASAC^flux spatial-exhaustion subclass production audit

Date: 2026-05-17

Status: failed production. The subclass would be useful, yet the current `B_ASAC` extraction does not generate it.

## Target

After the `B_ASAC` no-incoming-flux attempt, the next narrower class is

```math
B_{ASAC}^{flux}
```

consisting of `B_ASAC` tangent objects with an added global spatial exhaustion / transported-cylinder flux control, for example one of:

```math
\sup_{s<0}\int_{\mathbb R^3}|u_*(y,s)|^2\,dy<\infty,
\tag{FGE}
```

or

```math
\lim_{R\to\infty}Flux_{\partial Q_R^\Phi}(u_*,p_*,\mu_*^{src})=0
\tag{VTF}
```

along a same-fluid transported-cylinder exhaustion.

If the extraction produced this subclass, the equality-route survivor would become:

```math
B_{ASAC}^{flux}\Longrightarrow NoIncomingFlux_{global}.A / TransportedCylinderNoFlux.A.
```

## Attempt 1: finite global ancient energy from original energy

Under parabolic rescaling

```math
u^{(m)}(y,s)=r_m u(x_m+r_my,t_m+r_m^2s),
```

the global kinetic energy transforms as

```math
\|u^{(m)}(s)\|_{L^2_y}^2
=
r_m^{-1}\|u(t_m+r_m^2s)\|_{L^2_x}^2.
```

Since `r_m\downarrow0`, an original finite energy bound gives no finite global ancient energy bound for the tangent object. It gives local compactness after choosing fixed-radius cylinders and local-energy normalization.

Therefore `B_ASAC` does not generate `(FGE)`.

## Attempt 2: local compactness gives spatial exhaustion

The Zeno tangent extraction gives local suitable compactness: on every fixed `R`, the local energy, pressure, and source-residue measures are finite after passing to a subsequence.

The no-incoming-flux theorem needs control as `R\to\infty` over a transported exhaustion. Fixed-radius compactness provides no uniform tail decay and no vanishing boundary flux sequence.

Thus local compactness supports local cylinder identities, while spatial exhaustion remains absent.

## Attempt 3: same-fluid transport gives vanishing transported flux

Same-fluid transport aligns the cylinder with the selected carrier. This removes carrier mismatch and keeps the branch licensed.

A transported boundary can still carry physical velocity/pressure flux. Alignment of the bookkeeping carrier supplies no impermeability condition and no decay at large transported radius.

So same-fluidity gives admissibility of the cylinder family, not `(VTF)`.

## Attempt 4: zero ASAC defect gives tail decay

The ASAC defect is an angular/pair-weight leakage channel. Its vanishing says the ASAC-paid retained defect disappears in the tangent class.

Spatial exhaustion flux includes velocity and pressure traces at transported boundaries, plus possible unselected components of the tangent object. These are not ASAC pair-defect terms. A theorem identifying every transported flux contribution with ASAC defect would be a new bridge theorem and is not present.

## Attempt 5: legal-exit absence gives global no incoming flux

Legal-exit absence classifies the selected terminal branch after projected/cutoff/boundary ledgers are routed. It says the residue is not paid by the named legal exit ledger.

That does not imply every physical boundary flux in a global transported exhaustion vanishes. It only says such a term is not available as an already-paid legal exit in the selected bookkeeping.

## Conditional theorem retained

The following conditional route is valid:

```math
\boxed{
B_{ASAC}^{flux}
\Longrightarrow
NoIncomingFlux_{global}.A / TransportedCylinderNoFlux.A
}
```

provided `B_ASAC^flux` includes a genuine exhaustion hypothesis such as `(FGE)`, `(VTF)`, or an equivalent tail theorem.

This removes external transported-cylinder replenishment once the exhaustion hypothesis is proved. The terminal residue then requires temporal anti-concentration or residue Liouville for the remaining internally terminal atom.

## Verdict

`B_ASAC^flux` is a useful target class, but current extraction does not produce it.

The production obstruction is precise:

```math
B_{ASAC}\nRightarrow B_{ASAC}^{flux}.
```

The missing theorem is a global spatial exhaustion / transported boundary-flux trace estimate for the `B_ASAC` tangent object. Original energy scales incorrectly under the terminal blowup, local suitable compactness stays local, same-fluidity provides carrier fidelity, and zero ASAC defect controls only the ASAC-paid channel.

This closes the no-incoming-flux continuation as a failed unconditional path. The remaining live source-wall atoms stay the same: temporal anti-concentration, produced rigid residue class, or scale-critical active/source Carleson reserve.
