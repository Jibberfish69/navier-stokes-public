# MPP NonlinearResponseRotationNoGain.A Proof Run

Date: 2026-05-06

Status: direct proof run; heat rotation killed; nonlinear rotation reduced to
response-ASAC / terminal response rigidity.

Depends on:

```text
mpp-orthogonal-response-decorrelation-proof-20260506.md
mpp-active-strain-alignment-cost-target-note-20260504.md
mcp-asac-to-tpni-reduction-packet-20260504.md
```

## 0. Target

The orthogonal response branch isolates:

```math
\boxed{
NonlinearResponseRotationNoGain.A.
}
```

Statement shape:

```text
the nonlinear viscosity response cannot rotate active high shells into
expanding low-strain eigendirections without paying response-height charge,
pressure/cutoff response charge, or terminal source-residue rigidity.
```

Formula:

```math
\begin{aligned}
&\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell>0\}}
\left[
2\int\langle S_{<\ell}^{loc}u_\ell,z_\ell^\perp\rangle
\right]_+dt\\
&\quad\le
ResponseHeightCharge_N(W)
+PressureCutoffResponseCharge_N(W)
+ZenoResidueCharge_N(W)
+o_N(1).
\end{aligned}
\tag{NRR.1}
```

## 1. Heat Rotation Is Gone

The pure heat contribution satisfies:

```math
(z_\ell^{heat})^\perp=Err_\ell^{width}.
```

So `(NRR.1)` only concerns:

```math
(\mathcal R_\ell^{rot})^\perp,
```

where:

```math
\mathcal R_\ell^{rot}(t)
=
-\int_0^t e^{\nu(t-s)\Delta}P_\ell\mathbb P
(u\cdot\nabla z+z\cdot\nabla u)(s)\,ds.
```

This deletes the largest fake obstruction: viscosity itself does not rotate
the packet direction.

## 2. Response-ASAC Normal Form

Wave-packet expand:

```math
u_\ell=\sum_P c_P e_P\phi_P,
\qquad
z_\ell^\perp=\sum_P d_P f_P\phi_P
```

with `f_P` orthogonal to `e_P` in the packet polarization sense.  The principal
positive response-rotation carrier is:

```math
A_{\ell,k}^{resp}(t)
:=
2^{2\ell}
\sum_{P\in\mathcal P_\ell}
\left[
\langle S_k(x_P,t)e_P,f_P\rangle c_Pd_P
\right]_+.
\tag{NRR.2}
```

The packet normal form needed is:

```math
2^{2\ell}
\int\langle S_k u_\ell,z_\ell^\perp\rangle
=
A_{\ell,k}^{resp,+}
-A_{\ell,k}^{resp,-}
+Err_{\ell,k}^{resp}.
\tag{NRR.3}
```

with:

```math
\sum_{\ell,k}\int|Err_{\ell,k}^{resp}|
\le
\varepsilon ResponseHeightCharge_N+o_N(1).
```

This is the exact response analogue of the ASAC packet normal form, but the
active coefficient is mixed `c_P d_P`, not `|c_P|^2`.

## 3. Cauchy Reduction

For each tile:

```math
|c_Pd_P|
\le
\frac12(\lambda |c_P|^2+\lambda^{-1}|d_P|^2).
\tag{NRR.4}
```

The `|d_P|^2` side is response-height charge:

```math
\sum_P |d_P|^2
\le
C_{resp}E_\ell^{z,\perp}
\le
C_{resp}E_\ell^z.
```

The `|c_P|^2` side is the original ASAC positive-alignment carrier:

```math
\left[\langle S_ke_P,e_P\rangle\right]_+|c_P|^2
```

only if `f_P` is comparable to the expanding eigendirection.  In general the
mixed bilinear form has the operator bound:

```math
|\langle S_ke_P,f_P\rangle|
\le
\lambda_{\max}^+(S_k)+\lambda_{\max}^-(-S_k).
\tag{NRR.5}
```

The positive part can therefore be charged by an ASAC-type tile Carleson
estimate plus response-height:

```math
\boxed{
ResponseASAC.A
+ResponseHeightCharge.A
\Longrightarrow
NonlinearResponseRotationNoGain.A.
}
\tag{NRR.6}
```

## 4. Direct Attempt At ResponseASAC.A

`ResponseASAC.A` states:

```math
\int_I\sum_{\ell>N}\sum_{k<\ell-M}
W_{\ell,k}^{resp}A_{\ell,k}^{resp,+}(t)dt
\le
\theta ResponseHeight_N(I)
+\theta OriginalHeight_N(I)
+o_N(1).
\tag{NRR.7}
```

If `(NRR.7)` fails, select a maximal bad response-rotation tile and rescale on
its heat scale.  The original field tangent `v` and response tangent `w` solve
the frozen response system:

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi_v
=
\nu\Delta v,
\qquad
\nabla\cdot v=0,
\tag{NRR.8}
```

and:

```math
\partial_s w+(Sy)\cdot\nabla w+Sw
+(\Sigma y)\cdot\nabla v+\Sigma v+\nabla\pi_w
=
\nu\Delta w+\Delta v,
\qquad
\nabla\cdot w=0.
\tag{NRR.9}
```

Here `S` is the frozen original strain and `Sigma` is the frozen response
strain from the low-mode response.

The heat forcing `Delta v` is parallel to the active heat shell and does not
create the orthogonal response mass.  Thus a nonzero limiting orthogonal
response-rotation measure requires nonlinear/frozen-strain generation with no
incoming response mass.

## 5. Terminal Response Rigidity

The required rigidity theorem is:

```math
\boxed{
ResponseTPNI.A.
}
\tag{NRR.10}
```

Statement:

No finite-energy ancient frozen response pair `(v,w)` solving `(NRR.8)` and
`(NRR.9)` can satisfy all three conditions:

```text
1. no incoming original active mass;
2. no incoming orthogonal response mass;
3. nonzero normalized terminal orthogonal response-rotation mass.
```

If `ResponseTPNI.A` holds, the failed `ResponseASAC.A` compactness limit is
impossible.  Therefore:

```math
\boxed{
PacketNormalForm_resp.A
+SourceTether_resp.A
+NoIncomingLicense_resp.A
+ResponseTPNI.A
\Longrightarrow
ResponseASAC.A
\Longrightarrow
NonlinearResponseRotationNoGain.A.
}
\tag{NRR.11}
```

## 6. Unconditional Test

Can `ResponseTPNI.A` be proved by the same energy identity as heat?

No.  The frozen response equation contains:

```math
(\Sigma y)\cdot\nabla v+\Sigma v
```

and:

```math
\Delta v.
```

The heat forcing `Delta v` is aligned and drops out of the orthogonal response
pairing, but
the `Sigma` terms can rotate `w` if response strain is present.  Therefore the
unconditional proof needs either:

```text
ResponseLowStrainCharge.A
```

to eliminate `Sigma`, or a backward-uniqueness theorem for the coupled frozen
system `(v,w)`.

This is not installed by the current ASAC/TPNI packet.

## 7. Verdict

Proved:

```text
HeatResponseNoOrthogonalRotation.A
ResponseASAC.A + ResponseHeightCharge.A
  => NonlinearResponseRotationNoGain.A
ResponseTPNI.A + response packet/tether/no-incoming licenses
  => ResponseASAC.A
```

Not proved:

```text
ResponseTPNI.A
NoIncomingLicense_resp.A
CoupledFrozenResponseBackwardUniqueness.A
```

Updated response-rotation route:

```text
CoupledFrozenResponseBackwardUniqueness.A
+ NoIncomingLicense_resp.A
+ SourceTether_resp.A
=> NonlinearResponseRotationNoGain.A.
```

## 8. Full-Coefficient Response Drain Replacement

The later full-coefficient response drain in
`mpp-full-coefficient-response-drain-assembly-20260506.md` installs
`ResponseTPNI.A` directly by adjoint parent-or-charge, expanded no-parent, and
ordinary dissipation.  Therefore the older coupled frozen-response
backward-uniqueness/global-no-incoming detour is no longer the shortest route
for this branch.

The downstream bridge is recorded in
`mpp-response-tpni-to-orthogonal-decorrel-assembly-20260506.md`:

```text
ResponseTPNI.A
+ SourceTether_resp.A
=> NonlinearResponseRotationNoGain.A
=> OrthogonalResponseDecorrel.A.
```

Under that route, `CoupledFrozenResponseBackwardUniqueness.A` and
`NoIncomingLicense_resp.A` are superseded for the response-rotation branch by
the full-coefficient square-mass drain.

This is now a precise theorem target, not a generic source-wall alias.
