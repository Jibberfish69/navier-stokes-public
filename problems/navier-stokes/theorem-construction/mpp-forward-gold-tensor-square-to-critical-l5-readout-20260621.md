---
ns_viewer:
  theorem_id: forward-gold-tensor-square-to-critical-l5-readout-20260621
  status: exact-critical-l5-readout-installed-not-production
  proof_role: forward_gold_tensor_square_to_serrin_critical_readout
  logical_landing_node: tensor_square_to_critical_l5_readout
  edge_effect: >-
    Converts the tensor-square readout from the tensor-action branch into an
    exact Serrin-critical L^5 velocity readout. On a terminal strip
    I_m x T^3 of measure theta_m V, if int |v_m|^4 >= b0^2/theta_m, then
    Holder gives int |v_m|^5 >= V^(-1/4)b0^(5/2)theta_m^(-3/2). Under
    Navier-Stokes heat scaling the L^5 spacetime action is invariant, so this
    is a physical critical-velocity bill, not a radius-discounted energy bill.
    The note proves a consumer/readout: a finite same-witness L^5 terminal
    budget would consume the tensor branch. It does not produce that budget
    from energy or local energy, and it does not identify the branch with the
    CKN pressure-cubic charge.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-tensor-action-branch-square-reserve-readout-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-regularity-consumer-inversion-closeout-20260620.md
  downstream_consequence: >-
    The tensor-action branch is now a concrete Serrin-critical velocity readout:
    surviving tensor action forces divergent L^5 action on shrinking terminal
    strips. This is enough for consumption by a same-witness L^5/Prodi-Serrin
    budget or CM Field readout after admission, but it remains only a readout
    until an unweighted terminal-family L^5 budget, source-square/no-waste
    reserve, or profile theorem is produced.
---

# MPP Forward-Gold Tensor-Square To Critical \(L^5\) Readout

Date: 2026-06-21

## Status

This note records the exact critical-velocity consequence of the tensor-action
branch.  It does not prove a new forward-gold supplier.

The tensor-action branch already gives, on terminal strips
\(I_m\) with \(\theta_m=|I_m|\downarrow0\),

\[
\int_{I_m}\int_{\mathbb T^3}|v_m|^4\,dy\,ds
\ge
{b_0^2\over\theta_m}.
\tag{TCL.1}
\]

On the finite spacetime set \(I_m\times\mathbb T^3\), this forces a stronger
scale-critical \(L^5\) velocity bill:

\[
\int_{I_m}\int_{\mathbb T^3}|v_m|^5\,dy\,ds
\ge
|\mathbb T^3|^{-1/4}b_0^{5/2}\theta_m^{-3/2}.
\tag{TCL.2}
\]

The implication is exact and uses only Hölder on a finite-measure set. It is
not a linearization, and it does not use heat smoothing.

## 1. Finite-measure \(L^4\) to \(L^5\) promotion

Let

\[
E_m:=I_m\times\mathbb T^3,
\qquad
|E_m|=\theta_m V,
\qquad
V:=|\mathbb T^3|.
\tag{TCL.3}
\]

For any measurable \(f\) on \(E_m\), Hölder gives

\[
\|f\|_{L^4(E_m)}
\le
|E_m|^{1/4-1/5}\|f\|_{L^5(E_m)}
=
|E_m|^{1/20}\|f\|_{L^5(E_m)}.
\tag{TCL.4}
\]

Raising `(TCL.4)` to the fifth power gives

\[
\int_{E_m}|f|^5
\ge
|E_m|^{-1/4}
\left(\int_{E_m}|f|^4\right)^{5/4}.
\tag{TCL.5}
\]

Apply this with \(f=v_m\). Combining `(TCL.1)` and `(TCL.5)`,

\[
\begin{aligned}
\int_{I_m}\int_{\mathbb T^3}|v_m|^5
&\ge
(\theta_mV)^{-1/4}
\left({b_0^2\over\theta_m}\right)^{5/4}\\
&=
V^{-1/4}b_0^{5/2}\theta_m^{-3/2}.
\end{aligned}
\tag{TCL.6}
\]

This proves `(TCL.2)`.

## 2. Heat-scaling check

Use the Navier-Stokes heat-scale normalization

\[
v_m(s,y)
=
r_m u(T_m+r_m^2s,x_m+r_my).
\tag{TCL.7}
\]

Then

\[
u(t,x)=r_m^{-1}v_m(s,y),
\qquad
dx\,dt=r_m^5\,dy\,ds.
\tag{TCL.8}
\]

Therefore

\[
\int_{T_m+r_m^2I_m}
\int_{x_m+r_m\mathbb T^3}
|u(t,x)|^5\,dx\,dt
=
\int_{I_m}\int_{\mathbb T^3}|v_m(s,y)|^5\,dy\,ds.
\tag{TCL.9}
\]

The \(L^5_{t,x}\) bill is exactly scale-invariant. It is not hidden by the
radius discount that affects energy, dissipation, or physical \(L^4\) action.

Thus the tensor-action branch gives the physical critical-velocity readout

\[
\boxed{
\int_{T_m+r_m^2I_m}
\int_{x_m+r_m\mathbb T^3}
|u|^5\,dx\,dt
\ge
V^{-1/4}b_0^{5/2}\theta_m^{-3/2}.
}
\tag{TCL.10}
\]

## 3. What this does not prove

This is a consumer/readout theorem.

It proves:

\[
\boxed{
\text{surviving tensor-action branch}
\Longrightarrow
\text{divergent same-packet }L^5_{t,x}\text{ critical velocity bill}.
}
\tag{TCL.11}
\]

It does not prove:

\[
\boxed{
\text{energy/local energy}
\Longrightarrow
\text{finite or tail-small same-witness }L^5_{t,x}\text{ budget}.
}
\tag{TCL.12}
\]

That reverse direction is the missing Prodi-Serrin-strength supplier.

It also does not identify the branch with the CKN pressure-cubic charge.  The
CKN quantity involves

\[
r^{-2}\int_{Q_r}\left(|u|^3+|p|^{3/2}\right),
\tag{TCL.13}
\]

and a lower bound on \(L^5\) need not give a same-direction lower bound for
\(L^3\) or pressure on the same selected carrier without an additional
nonconcentration or pressure-identification theorem.

## 4. Consequence for the branch map

The tensor branch should now be read as:

\[
\boxed{
\text{selected atom}
\Longrightarrow
\text{height/source-square branch}
\quad\text{or}\quad
\text{finite-rung gradient branch}
\quad\text{or}\quad
\text{critical }L^5\text{ tensor branch}.
}
\tag{TCL.14}
\]

The critical \(L^5\) tensor branch is not a new gold supplier.  It is a
scale-critical readout that can be consumed by a same-witness \(L^5\) budget,
Prodi-Serrin regularity, or a CM Field-facing failure after the terminal packet
has been admitted to the same witness.
