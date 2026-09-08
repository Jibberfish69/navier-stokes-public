# GraphCompatiblePLSClockReadoutReplacement.A

Status: graph-compatible pressure/collar clock is sufficient for material-record readout, conditional on the relative defect estimate and the existing free-material PLS budget.

## 0. Clock replacement

Replace the old pointwise pressure-lobe clock

```math
d\Omega_N^{press/collar,lobe}
```

by the graph-compatible pressure/collar clock

```math
d\Omega_N^{press/collar,graph}
:=
d\Omega_N^{graph.driver}+d\Omega_N^{rel.defect}.
\tag{GCR.1}
```

Here the pressure/collar variables split as

```math
Z_N=(q,C_N)=\Gamma_N(Y_N)+W_N,
\tag{GCR.2}
```

where \(Y_N\) is the free same-material packet, \(\Gamma_N(Y_N)\) is the forced elliptic/collar graph, and \(W_N\) is the relative pressure/collar defect.

The graph driver is the PLS service required to move \(\Gamma_N(Y_N)\).  It consists only of free material variables: velocity tower, coefficient/frame, material Helmholtz--Leray/Stokes projection, transported collar, strain, viscosity/tower, and annular stress-work.  Therefore

```math
d\Omega_N^{graph.driver}\subset d\Omega_N^{free\ material}.
\tag{GCR.3}
```

## 1. Material-record readout

The continuation-depth pressure/collar record satisfies

```math
\|Z_N\|_{pc,N}
\le
\|\Gamma_N(Y_N)\|_{pc,N}+\|W_N\|_{pc,N}.
\tag{GCR.4}
```

The elliptic/collar graph estimate gives

```math
\|\Gamma_N(Y_N)\|_{pc,N}
\le
C_N\big(\mathcal P_N^{free}(Y_N)\big),
\tag{GCR.5}
```

because pressure is recovered from the material elliptic equation

```math
L_Gq=R(v,A,G)
```

and the collar graph is transported by the same \(A,G,\phi,\mathbb P_A\) packet.

Thus

```math
\mathcal P_N^{mat}
\le
C_N\Big(
1+\mathcal P_N^{free}(Y_N)+\|W_N\|_{pc,N}^2
\Big).
\tag{GCR.6}
```

Consequently, the positive material-record variation obeys

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N d\Omega_N^{free\ material}
+C_N d\Omega_N^{rel.defect}
+dR_N^{legal}.
\tag{GCR.7}
```

This is the required readout.  It does not mention the old pointwise pressure-lobe clock.

## 2. Entropy for the relative defect

The Schur-complement storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=-{1\over2}\|W_N\|_{pc,N}^2
```

pays \(d\Omega_N^{rel.defect}\), provided the relative defect lower-bound estimate holds:

```math
\|W_N\|_{pc,N}^2
\le
C_N(u_0)+\text{paid lower-rank/top-strain/viscous/annular/legal terms}.
\tag{GCR.8}
```

Under `(GCR.8)`, the pressure/collar entropy sector is closed for the graph-compatible clock.

## 3. Consequence

For continuation, the old lobe clock is stronger than necessary.  The material record needs only the graph-compatible clock:

```math
\boxed{
 d\Omega_N^{press/collar,graph}
 =
 d\Omega_N^{graph.driver}+d\Omega_N^{rel.defect}.
}
```

The pointwise pressure-lobe clock is a coordinate/lobe overcount useful for older terminal packet arguments, but it is not required by the material-record readout once pressure/collar variables are treated by the Schur graph.

## 4. Remaining global closure requirement

The pressure/collar sector is reduced to the relative defect estimate `(GCR.8)` and the existing free-material PLS budget.  Therefore the new full-clock target should be

```math
d\Omega_N^{PLS,graph}
:=
d\Omega_N^{free\ material}
+d\Omega_N^{rel.defect}
+d\Omega_N^{recirc,finite},
\tag{GCR.9}
```

not the old clock containing \(d\Omega_N^{press/collar,lobe}\).

The remaining theorem is to install `(GCR.9)` as the final PLS clock in the live edge and prove the free-material available entropy plus the relative-defect lower-bound estimate.  The old pressure-lobe positive-part theorem is no longer needed for continuation if `(GCR.7)` is accepted as the record readout.

## Verdict

Graph-compatible pressure/collar clock replacement preserves the material-record readout.  The lobe clock is not necessary for continuation.  The remaining proof burden is the graph-compatible full-clock entropy, not pointwise CZ pressure positive-part cancellation.