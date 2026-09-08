# RelativeSchurComplementPressCollarEntropyTarget.A

Status: corrected live target installed.  This is a theorem target, not a discharge.

## Correction

The broad birth-ledger language is only a possible proof mechanism.  The actual live closure target is the bounded-below replacement for

```math
-E_p-E_{coll,N}
```

while preserving the good oriented derivative sign that taxes

```math
d\Omega_N^{press/RHS}+d\Omega_N^{collar}.
```

The raw negative pressure/operator and higher-collar records have the correct sign but are not bounded below noncircularly.  The desired replacement is not a scalar saturation.  It must be a relative Schur-complement storage.

## Target entropy

Construct

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-\big(E_p+E_{coll,N}\big)
+\mathcal G_N^{ell/collar},
\tag{RSC.1}
```

where \(\mathcal G_N^{ell/collar}\) is the elliptic/collar graph correction: the pressure and collar variables are subtracted relative to the graph forced by the velocity, material metric, Helmholtz--Leray/Stokes projection, transported collar, and stress packet.

The target estimates are

```math
\widetilde{\mathscr A}_N^{press/op+collar}(t)
\ge -C_N(u_0)
\tag{RSC.2}
```

and

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+c_N\left(d\Omega_N^{press/RHS}+d\Omega_N^{collar}\right)
\le dR_N^{legal}.
\tag{RSC.3}
```

## Proof strategy

The proof strategy is top-rank triangular/no-self-birth.

Pressure and collar are not independent free energies.  They are slaved variables of the full participation law through the material elliptic pressure equation, Helmholtz--Leray/Stokes projection, transported collar equations, material metric, and Cauchy stress.  The Schur-complement correction must remove the elliptically forced graph so that the apparent top-rank pressure/collar self-birth cancels by incompressibility and elliptic constraint.

After this graph subtraction, the remaining terms must descend to one of:

1. lower-rank pressure/collar service;
2. top-strain/frame storage;
3. viscosity/radial/tower dissipation;
4. annular stress-work, already with bounded-below storage;
5. typed legal residual.

Thus the actual mathematical burden is not to bound \(E_p+E_{coll,N}\) directly.  It is to prove that the relative pressure/collar defect has no autonomous top-rank self-birth.

## Exact remaining theorem

```math
\boxed{
\text{construct the elliptic/collar graph correction }\mathcal G_N^{ell/collar}
\text{ and prove }(RSC.2)-(RSC.3).
}
```

The top-rank triangular/no-self-birth argument is the intended proof mechanism for this theorem; it is not a substitute for the theorem statement.