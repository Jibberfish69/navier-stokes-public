# MPP ACT.KX Hidden-Spending Audit Note

## Status

Theorem-facing audit surface for the `ACT.KX` conditional route completion
packet. This note does not replace the theorem status surfaces, class-membership
notes, `LCI.A`, `CSP.A`, `OFP.A`, or the endpoint matrix.

Audit target:

```text
problems/navier-stokes/theorem-construction/mpp-act-kx-conditional-route-completion-packet.md
```

Audit question:

```text
Does any cell spend LCI.A, CSP.A, OFP.A, Field, or endpoint closure before the
position at which that object is produced or explicitly authorized?
```

Verdict:

```text
Retained-smooth branch: pass, with two hard ordering flags.

Finite-energy-native branch: the old point-center route fails as stated,
because NKF.Native and ACT.X-Scale spend retained local smoothness. The
replacement target is SCF_base + SGC.A_a.e + ATD_m^epsilon => SCF_avg^m =>
AACT.KX off B_epsilon^Phi => DTC.A_avg => AVG.RCV.A => LCI.A_avg =>
CSP.A_avg => OFP.A_avg => CFI.A_avg => AVG.MAIN.A. A nonempty B_epsilon^Phi is folded
directly into Jump_avg by CAVG.J. Finite energy supplies only SCF_base at good material restarts;
ATD_m^epsilon is the local epsilon-regularity tower supplier, while SGC.A_strong
is off the main line as regularity-equivalent. DTC.Read is the fixed-scale
finite-cover pointwise endpoint/tower recovery, while Field.Read or CM.Read is required before
recovering old CFI.A.

1. The source-side cells FPCR.C, FSCR.C, and FCC.C1 are post-LCI.A cells.
   They cannot be cited back into NKF.*, ACT.X-*, ACT.KX, ACT.X-Readout,
   ACT.A, RCF.A, or the proof of LCI.A.

2. Endpoint Field is supplied only by OFP.A at the endpoint matrix stage.
   Field is not available inside ACT.KX, the source channel, DTC-to-TowerBound,
   END.Exh, or END.Cross except as a formal endpoint certificate label.
```

## Ordered Objects

Receiver order:

```text
RSCB.NKF
=> NKF.Native + NKF.Ann + NKF.Quad
=> ACT.X-Press

ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc
=> ACT.KX

ACT.KX + ACT.X-Scale + RWS.C_scale
=> ACT.X-Readout
=> ACT.A
=> RCF.A
=> LCI.A
```

Source order:

```text
LCI.A
=> FPCR.C + FSCR.C + FCC.C1
=> FCI.5f
```

Class-membership order:

```text
LCI.A + FCI.5f
=> CSP.A
=> OFP.A
=> CFI.A
```

Endpoint order:

```text
DTC-to-TowerBound + END.Exh + END.Cross + END.Pack + END.Field
=> End_NS
```

Terminal order:

```text
CFI.A + End_NS
=> no finite-time class exit
```

Averaged receiver replacement order:

```text
SCF_base + SGC.A_a.e + ATD_m^epsilon
=> SCF_avg^m
=> AACT.KX off B_epsilon^Phi
=> X_R in Linfty + N_R in L1 + K_le_m^{avg,R} in L1
=> DTC.A_avg
=> AVG.RCV.A
=> LCI.A_avg
=> CSP.A_avg
=> OFP.A_avg
=> CFI.A_avg
=> End_NS_avg
=> AVG.MAIN.A

DTC.Read:
DTC.A_avg + fixed-scale finite same-fluid cover + ATD_m^epsilon => DTC.A

Field.Read / CM.Read:
Field_avg + uniform positive-scale SCF-good finite cover + ATD_m^epsilon => Field
CM_avg => CM

READ.END:
End_NS_avg + Field.Read + DTC.Read => End_NS
```

`DTC.A_avg` must remain typed as averaged data unless `DTC.Read` is invoked.
`CFI.A_avg` must remain typed as averaged class membership until `Field.Read`
or `CM.Read` is proved. `End_NS_avg` must remain typed as averaged endpoint
exclusion until `READ.END` is proved.

## Global Non-Spending Rule

Before the cell that produces `LCI.A`, the only allowed receiver-side inputs are
retained-window data, native center forcing, local pressure response, cutoff
geometry, finite-depth affine-center equations, top-viscous readout data,
same-fluid cover/scale data, and bounded pack gauge where explicitly stated.

For the averaged branch, replace "retained-window data" and "native center
forcing" by `SCF_base + SGC.A_a.e + ATD_m^epsilon` on the SCF-good complement,
with `CAVG.J` folding nonempty `B_epsilon^Phi` directly into `Jump_avg`. Finite energy
supplies only `SCF_base`; `ATD_m^epsilon` is the local tower-density supplier.
The averaged branch does
not import `NKF.Point`, point pressure-center control, retained center-ball
smoothness, or `DTC.Read`.

The following are forbidden as pre-`LCI.A` receiver inputs:

```text
LCI.A
CSP.A
OFP.A
Field
End_NS
CFI.A
FPCR.C
FSCR.C
FCC.C1
FCI.5f
```

`ACT.KX` specifically spends none of

```text
LCI.A, CSP.A, OFP.A, Field, End_NS.
```

Its allowed budget is the simultaneous core/excess system

```text
dX + c_nu N <= (L0 + C A_core) X + C_X X^(1/2) N + F0,
dA_core <= K_le_m^ctr + T_tri(A_core),
K_le_m^ctr <= C(X^(1/2)N^(1/2) + X) + F_K,
```

with the `eta_X` first-exit absorption. The center ledger is carried inside the
joint theorem; it is not imported from `LCI.A`, `CSP.A`, `OFP.A`, `Field`, or
endpoint closure.

## Cell Audit

| # | Cell | Allowed inputs | Forbidden early spends checked | Verdict |
| --- | --- | --- | --- | --- |
| 1 | `NKF.Native` | `RSCB.NKF`, retained windows, transported mollifiers, point recovery, local Poisson split, finite-energy far tail. | No `LCI.A`, `CSP.A`, `OFP.A`, `Field`, source theorem, or endpoint closure. | Clean pre-`LCI.A` forcing supplier only on the retained-smoothness branch; not a finite-energy-native proof. |
| 2 | `NKF.Ann` | Affine pressure normal form, annular support away from the center, finite product estimate in `X_exc` and `N`. | No class-membership object and no endpoint object. | Clean in-bootstrap annular supplier. |
| 3 | `NKF.Quad` | Local elliptic response for the quadratic pressure residual and finite-depth `X_exc`/`N` estimates. | No `LCI.A`, `CSP.A`, `OFP.A`, `Field`, or endpoint closure. | Clean in-bootstrap quadratic supplier. |
| 4 | `ACT.X-Press` | `NKF.Native + NKF.Ann + NKF.Quad`, pressure energy form, energy far-tail, and post-`ACT.KX` cell readout as a consequence. | Does not use `LCI.A`; the cell form waits for `ACT.KX` outputs and is not a pre-`ACT.KX` closure theorem. | Clean pressure package. |
| 5 | `ACT.X-Cut` | Moving affine coordinates, cutoff transport identity, Taylor control by `X_exc^(1/2)`, and the exact first-exit residue `C_cut X_exc^(1/2)N` under `(C_cut+C_press)X_exc^(1/2) <= c_nu/2`. | No source-side or endpoint input. | Clean cutoff package. |
| 6 | `ACT.X-MidRaw` | Finite triangular middle block, zero-mode linear terms, `A_core X_exc`, and pure-excess terms spendable only through the same `eta_X` first-exit margin. | Does not import `A_core` from `LCI.A`; keeps `A_core` inside `ACT.KX`. | Clean middle-block package. |
| 7 | `ACT.X-TopVisc` | Viscous commutator, top buffer modes as top readout/forcing data, and `Y_read` placement after the joint run. | Does not move `A_buf` into pre-pressure `A_core`; no `LCI.A` or endpoint spend. | Clean top-viscous package. |
| 8 | `ACT.KX` | `ACT.X-Cut`, `ACT.X-Press_energy`, `ACT.X-MidRaw`, `ACT.X-TopVisc`, scheduler budgets, `eta_X` seed/smallness, triangular center equation, and `F0/F_K`. | Explicitly no `LCI.A`, `CSP.A`, `OFP.A`, `Field`, source theorem, `Y_read` readout, or endpoint closure. | Central clean pass. `ACT.KX` is a pre-`LCI.A` theorem. |
| 9 | `ACT.X-Scale` | Retained smooth center-ball regularity at restart times and choice of small radii with `X_exc(s_a;R_a) <= eta_X`. | Does not assert fixed-radius smallness and does not spend endpoint exclusion. | Clean restart-seed theorem only on the retained-smoothness branch. On the averaged branch, the seed is `X_R(s_a)` inside `SCF_avg^m`. |
| 10 | `RWS.C_scale` | Finite same-fluid dynamic cover, small packets from the scale-small run, finite overlap, and retained cover geometry. | Uses no `LCI.A`, `CSP.A`, `OFP.A`, `Field`, or `End_NS`; bounded pack data here is not `END.Pack`. | Clean scale-transfer theorem. |
| 11 | `ACT.X-Readout` | `ACT.KX` outputs, `ACT.X-Scale`, `RWS.C_scale`, local Morrey, affine-frame defect readout, pressure readout, and top-viscous readout. | Does not use `LCI.A`; it is the readout path toward `ACT.A`, not a consumer of the `LCI.A` result. | Clean post-`ACT.KX`, pre-`LCI.A` readout. |
| 12 | `ACT.A -> RCF.A -> LCI.A` | `ACT.X-Readout`, affine-defect bridge, residual center forcing, oscillation ledger, bounded pack gauge, `LCI.B2e`, and `LCI.C`. | This is the first production of `LCI.A`; it does not cite `LCI.A` as an input. No `CSP.A`, `OFP.A`, `Field`, or endpoint closure. | Clean `LCI.A` production cell. |
| 13 | `FPCR.C` | Post-`LCI.A` coefficient control, frozen packet energy, finite-net pressure packet, and energy far-tail. | Forbidden as a receiver input. Its use of `LCI.A` is allowed only after row 12. | Clean only as post-`LCI.A` source-side cell. |
| 14 | `FSCR.C` | Post-`LCI.A` control of `C_{N+1}^delta` and bounded frozen packet energy. | Forbidden as a receiver input. No `CSP.A`, `OFP.A`, `Field`, or endpoint closure. | Clean only as post-`LCI.A` source-side cell. |
| 15 | `FCC.C1` | Post-`LCI.A` packet-factor derivative bound, cutoff coefficient `b_psi^cut in L^1`, Gronwall, and absorption. | Forbidden as a receiver input. No endpoint spend. | Clean only as post-`LCI.A` source-side cell. |
| 16 | `FCI.5f` | `FPCR.C + FSCR.C + FCC.C1` exact source split. | Inherits post-`LCI.A` status; cannot be cited into the proof of `LCI.A` or `ACT.KX`. | Clean post-`LCI.A` source assembly. |
| 17 | `DTC-to-TowerBound` | Fixed transported-center cover, local `DTC.A` Sobolev control, Morrey, pressure readout, and `U_{k+2}` viscous readout. | `DTC.A` must remain clean of `LCI.A`, `CSP.A`, `OFP.A`, and `Field`; no endpoint closure is spent here. `DTC.A_avg` is not enough unless `DTC.Read` has been proved. | Clean endpoint analytic input if pointwise `DTC.A` keeps its non-smuggling license. |
| 18 | `END.Exh` | Certificate maps for `Pack`, `Part`, and `Field` and the identity `CM = Pack wedge Part wedge Field`. | The word `Field` appears only as an endpoint certificate component; no positive `Field` coherence is supplied or spent here. | Clean endpoint certificate map. |
| 19 | `END.Cross` | Blown gauge split, `Pack + Part + Jump => Field-coherence fracture`, and the installed `(Part, Dead)` row. | Endpoint-only cross-entry reduction; not a receiver or source supplier and not a proof of `Field`. | Clean endpoint conditional reduction. |
| 20 | Pack/Part/Field endpoint matrix | `END.Pack` from bounded pack gauge, `END.Field` from `OFP.A => no Jump`, and `END.Tower` from tower bound. | This is the only authorized spend of `OFP.A` for the endpoint `Field` face. It occurs after `OFP.A`, not inside `ACT.KX` or the source channel. | Clean endpoint matrix with explicit `OFP.A` dependency. |
| 21 | Final route assembly | `LCI.A + FCI.5f => CSP.A`, then `CSP.A => OFP.A`, then `OFP.A + CFI.B1 + CFI.B2 => CFI.A`, plus `End_NS`. | All previously forbidden objects are now at or after their stated positions. No reverse citation is licensed. | Clean terminal assembly. |

## Required Citation Discipline

Any future note citing this packet must preserve the directionality:

```text
ACT.KX => ACT.X-Readout => ACT.A => RCF.A => LCI.A
```

and must not rewrite it as

```text
LCI.A or CSP.A or OFP.A or Field or End_NS => ACT.KX.
```

The source-side package must be cited as

```text
post-LCI.A:
FPCR.C + FSCR.C + FCC.C1 + FCC.C1a => FCI.5f.
```

The endpoint field package must be cited as

```text
endpoint stage only:
OFP.A => END.Field.
```

Thus the audit confirms the requested hidden-spending boundary:

```text
ACT.KX does not spend LCI.A, CSP.A, OFP.A, Field, or endpoint closure.
Source-side dependence is post-LCI.A.
Endpoint Field is supplied only by OFP.A at the endpoint stage.
```
