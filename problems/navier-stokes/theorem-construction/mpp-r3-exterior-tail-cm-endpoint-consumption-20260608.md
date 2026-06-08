# R3 Exterior Tail CM Endpoint Consumption

Date: 2026-06-08

Status: theorem-state correction installed for the whole-space CM branch; direct positive exterior \(H^s\) tail closure remains only a stronger optional export theorem.

## Target

The remaining R3 paper gap had this form:

```text
Either prove a direct noncircular R3 Hs tail theorem or strengthen dyadic
survivor face landing into an accepted whole-space endpoint exclusion.
```

The direct theorem is

```text
Tail.Hs_R3:
  lim_{R -> infinity} sup_{t < T_*} || eta_R u(t) ||_{H^s(R^3)} = 0.
```

The CM route does not need to prove this stronger positive theorem when the
only surviving alternative is already forced into Pack, Part, or Field failure
on the same terminal object. The object to consume is the surviving exterior
high-order Duhamel source after the initial tail and compact-core source have
already been removed.

## Installed Inputs

The installed R3 notes provide the following chain.

1. `mpp-r3-tail-hs-duhamel-source-reduction-20260607.md` separates the exterior
   \(H^s\) tail into initial ancestry, compact-core far-kernel source, and the
   genuinely exterior nonlinear source. The first two parts vanish at infinity.

2. `mpp-r3-exterior-source-dyadic-escape-cm-face-20260607.md` proves that a
   nonzero exterior nonlinear-source tail cannot be carried by bounded
   frequency. A surviving source selects radii \(R_j\to\infty\), times
   \(t_j<T_*\), and dyadic frequencies \(N_j\to\infty\) with

   ```text
   N_j^s || P_{N_j} W_{R_j}(t_j) ||_2 >= c > 0.
   ```

3. `mpp-r3-exterior-dyadic-survivor-field-incompatibility-20260607.md` proves
   that this dyadic survivor cannot coexist with retained Pack, retained Part,
   and a positive fixed Field scale. Under retained Pack and Part, the survivor
   forces

   ```text
   forall rho > 0, not Field_{M,rho,Q}
   ```

   for the terminal CM object selected by the survivor.

## Theorem

Let \(u\) be the whole-space smooth solution under the R3 branch hypotheses, and
let \(s>5/2\). After the Duhamel source reduction, exactly one of the following
holds:

```text
Exterior nonlinear-source Hs tail vanishes
  => Tail.Hs_R3 is supplied for the export branch;

Exterior nonlinear-source Hs tail survives
  => not Pack_Q or not Part_{M,Q} or forall rho>0 not Field_{M,rho,Q}.
```

Thus the R3 exterior high-order tail face is consumed by the CM endpoint matrix.
It is not a live fourth branch and not a separate class-member continuation
candidate.

## Proof

The initial-data tail and compact-core far-kernel source are already removed by
the Duhamel reduction. If the genuinely exterior nonlinear source also vanishes
in exterior \(H^s\), then the positive tail input `Tail.Hs_R3` is supplied.

Assume instead that the exterior nonlinear source does not vanish in exterior
\(H^s\). The bounded-frequency lemma removes every fixed frequency window using
the installed exterior \(L^2\) tightness and the same off-diagonal source
separation. Therefore the surviving source has a dyadic high-frequency packet:

```text
N_j^s || P_{N_j} W_{R_j}(t_j) ||_2 >= c > 0,
N_j -> infinity.
```

Let \(Q\) be the terminal CM test object selected by this survivor. If the
packet has no retained material address in the same terminal object, then the
Pack face fails: `not Pack_Q`. If the packet is detached from the same
Navier-Stokes equation, pressure, viscosity, and source ancestry, then the Part
face fails: `not Part_{M,Q}`.

It remains to consider the retained Pack+Part branch. On that branch the
survivor is attached to the same terminal object and must be visible inside the
retained Field windows. If a fixed positive Field scale \(\rho>0\) held through
depth \(M>s\), each localized Field-window piece would have a uniform
finite-depth derivative bound. The standard Littlewood-Paley cancellation
estimate gives

```text
|| P_N f ||_2 <= C_{rho,M,Q} N^{-M},
```

and hence

```text
N^s || P_N f ||_2 <= C_{rho,M,Q} N^{s-M} -> 0.
```

The finite number of retained Field windows gives the same decay for the whole
selected terminal packet. This contradicts the dyadic survivor lower bound.
Therefore no fixed positive Field scale survives on retained Pack+Part:

```text
forall rho > 0, not Field_{M,rho,Q}.
```

The surviving exterior high-order source is therefore a Pack, Part, or Field
face failure. The direct positive theorem `Tail.Hs_R3` remains useful as a
stronger export theorem, but it is not required for the CM-facing whole-space R3
branch.

## Effect On The Gap Log

The R3 gap is discharged by the second route named in the gap itself:

```text
strengthen dyadic survivor face landing into an accepted whole-space endpoint
exclusion.
```

No active generic Clay-closing bridge remains after the finite-obstruction
inventory reconciliation. A future R3 reopening has to name a concrete
whole-space terminal obstruction row that lacks same-solution CM entry or a
derived Pack, Part, or Field face.
