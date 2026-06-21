---
ns_viewer:
  theorem_id: forward-gold-square-no-spreading-l2-transfer-criterion-20260621
  status: exact-criterion-installed-not-produced-by-current-inputs
  proof_role: forward_gold_square_no_spreading_operator_criterion
  logical_landing_node: square_no_spreading_l2_transfer_criterion
  edge_effect: >-
    Refines SquareDonorNoSpreading.A into its exact operator form. Linear donor
    balance is mass preservation in L1. Square no-spreading is uniform L2
    boundedness of the same-carrier donor-to-receiver transfer, or an equivalent
    height/thickness throttle. If q_+=Tq_- and ||T||_{L2->L2} is uniformly
    bounded, receiver square cost is paid by donor square cost. The scalar
    spreading model has a mass-preserving transfer operator with norm
    (H/h)^(1/2), which blows up when a long donor interval feeds a shorter
    terminal heat interval. Thus the missing theorem is exactly a Navier-Stokes
    same-carrier L2 transfer bound, strict no-waste, source-square reserve,
    endpoint UI, or rigid Zeno profile production. This is a criterion, not an
    installed supplier.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-donor-no-spreading-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-spreading-branch-closeout-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-reserve-signed-balance-merge-closeout-20260620.md
  downstream_consequence: >-
    Do not treat participation, signed linear saturation, or donor mass balance
    as square no-spreading. A successful no-spreading theorem must prove a
    uniform L2 transfer bound for the actual pressure-viscosity-incompressibility
    donor-to-receiver map on the selected carrier, or replace that bound with
    source-square, endpoint UI, strict no-waste, or rigid Zeno production.
---

# MPP Forward-Gold Square No-Spreading \(L^2\) Transfer Criterion

Date: 2026-06-21

## Status

This note refines the square no-spreading obstruction.  It does not prove
`SquareDonorNoSpreading.A`.

The exact point is:

\[
\boxed{
\text{linear donor balance is }L^1\text{ mass preservation;}
\qquad
\text{square no-spreading is }L^2\text{ transfer control.}
}
\tag{LTC.1}
\]

So the missing theorem is not another statement that the receiver has a donor.
It is a statement that the donor-to-receiver transfer cannot compress a long,
low donor into a short, tall terminal receiver without paying square cost.

## 1. Abstract transfer form

Let \(I_-\) be the donor time window and \(I_+\) the receiver time window.  Let
\(q_-\ge0\) be the donor density and \(q_+\ge0\) the selected receiver density.

Linear signed saturation has the form

\[
\int_{I_+}q_+(t)\,dt
\le
\int_{I_-}q_-(t)\,dt+\text{legal}.
\tag{LTC.2}
\]

Ignoring legal terms, this says only that a nonnegative transfer operator
\(T\) can represent

\[
q_+=Tq_-,
\qquad
\int_{I_+}Tq_-=\int_{I_-}q_- .
\tag{LTC.3}
\]

This is an \(L^1\) statement.

The square no-spreading estimate is instead

\[
\lambda\int_{I_+}q_+(t)^2\,dt
\le
C\lambda\int_{I_-}q_-(t)^2\,dt+\text{legal}^{sq}.
\tag{LTC.4}
\]

For a transfer representation `(LTC.3)`, `(LTC.4)` follows immediately from

\[
\boxed{
\|T\|_{L^2(I_-)\to L^2(I_+)}\le C_T
}
\tag{LTC.5}
\]

with \(C=C_T^2\).

Indeed,

\[
\int_{I_+}q_+^2
=
\|Tq_-\|_{L^2(I_+)}^2
\le
C_T^2\|q_-\|_{L^2(I_-)}^2
=
C_T^2\int_{I_-}q_-^2 .
\tag{LTC.6}
\]

Thus a uniform \(L^2\) transfer bound is an exact sufficient form of square
no-spreading.

## 2. Height/thickness form

The same condition can be read as a height/thickness throttle.  A
mass-preserving transfer from an interval of length \(H\) to an interval of
length \(h\) has the sharp compression norm

\[
\|T\|_{2\to2}\sim\left({H\over h}\right)^{1/2}
\tag{LTC.7}
\]

when it averages donor mass over \(I_-\) and emits it uniformly on \(I_+\).

So uniform \(L^2\) transfer control is equivalent here to forbidding the
compression ratio \(H/h\) from becoming unbounded, or charging that compression
to a square/legal/no-waste ledger.

## 3. Exact scalar spreading model revisited

Use the model from the no-spreading test:

\[
h=\lambda^{-2},
\qquad
H=\lambda^{-1},
\qquad
A=\lambda^{1/2}.
\tag{LTC.8}
\]

Let

\[
q_-(t)
=
{Ah\over H}\mathbf 1_{[-H,0]}(t),
\qquad
q_+(t)=A\mathbf 1_{[-h,0]}(t).
\tag{LTC.9}
\]

The masses agree:

\[
\int q_-\,dt=Ah=\int q_+\,dt.
\tag{LTC.10}
\]

Define the mass-preserving averaging/compression operator

\[
(Tf)(t)
=
{1\over h}\mathbf 1_{[-h,0]}(t)
\int_{-H}^{0}f(s)\,ds.
\tag{LTC.11}
\]

Then \(q_+=Tq_-\).  Its \(L^2\) operator norm is exactly

\[
\|T\|_{2\to2}
=
\left({H\over h}\right)^{1/2}
=
\lambda^{1/2}.
\tag{LTC.12}
\]

The receiver square cost is

\[
\lambda\int q_+^2\,dt
=
\lambda A^2h
=1,
\tag{LTC.13}
\]

while the donor square cost is

\[
\lambda\int q_-^2\,dt
=
\lambda {A^2h^2\over H}
=
\lambda^{-1}
\to0.
\tag{LTC.14}
\]

Thus the failure of square no-spreading is exactly the blowup of the \(L^2\)
transfer norm:

\[
\boxed{
\|T\|_{2\to2}^2={H\over h}=\lambda\to\infty.
}
\tag{LTC.15}
\]

## 4. Navier-Stokes meaning

For the forward-gold branch, the transfer \(T\) is not an arbitrary operator.
It would have to be produced by the same pressure-viscosity-incompressibility
law on the same selected carrier, after localization, projection, weights,
lifts, and legal exits.

So the exact missing PDE theorem is:

\[
\boxed{
\text{the same-carrier donor-to-receiver map produced by Navier-Stokes has a
uniform }L^2\text{ transfer bound,}
}
\tag{LTC.16}
\]

or else that every failure of `(LTC.16)` is charged to an accepted substitute:

\[
\boxed{
\text{source-square, endpoint UI, strict no-waste, signed saturation plus
square no-spreading, or rigid Zeno profile production.}
}
\tag{LTC.17}
\]

Linear participation does not imply `(LTC.16)`.  It supplies conservation of
mass/current through the donor graph, which is `(LTC.2)`, not the \(L^2\)
operator estimate `(LTC.5)`.

## Verdict

The exact square no-spreading criterion is:

\[
\boxed{
q_+=Tq_-,
\qquad
\sup\|T\|_{L^2\to L^2}<\infty
\quad
\Longrightarrow
\quad
\text{receiver square cost is paid by donor square cost.}
}
\tag{LTC.18}
\]

The scalar terminal spreading model violates the criterion by making
\(\|T\|_{2\to2}\to\infty\).  Therefore the forward-gold route still needs a
Navier-Stokes theorem that supplies this same-carrier \(L^2\) transfer bound or
one of its equivalent square/no-waste/profile substitutes.
