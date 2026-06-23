# Retained Branch K_iface Vanishing

## Claim

On the retained simultaneous material four-body branch,

```math
d\mathcal K_{\rm iface}=0.
```

Equivalently, every named interface-defect term in

```math
\begin{aligned}
d\mathcal K_{\rm iface}:={}&
dK_{S\to Q,{\rm carrier}}^+
+dK_{\rm sel}+dK_{C,A}^+ + dK_{C,N}^+ + dK_{C,J}^+\\
&+dK_C^+ + dK_{\rm geom,map}^+ + dK_{\rm geom,gauge}^+ + dK_{\rm geom,coef}^+\\
&+dK_{\rm ell}^+ + dK_{\rm coef}^+ + dK_{\rm comm}^+ + dK_{\rm transport}^+ + dK_G^+
\end{aligned}
```

vanishes on the retained branch.

## Proof

The retained branch is the intersection of the retained exact-current criteria
for the four adjacent interfaces of the same transported material packet.

For `S -> Q`, retained means the differentiated material equation is tested on
the same rung, same factorial weight, same cutoff, same normalized cylinder,
and same transported material carrier. Hence the carrier mismatch defect is
zero:

```math
dK_{S\to Q,{\rm carrier}}^+=0.
```

For `Q -> C`, retained means the selected activity measure, the native/nonlinear
participation measure, and the exchange-current measure survive into the same
compact packet. Hence

```math
dK_{\rm sel}=dK_{C,A}^+=dK_{C,N}^+=dK_{C,J}^+=0.
```

For `C -> G`, retained means the compact packet carries the same material
pullback and frame:

```math
v=V(X(a,s),s),\quad q=Q(X(a,s),s),\quad F=D_aX,\quad A=F^{-1},\quad G=AA^T,
```

with the fixed terminal gauge and coefficient packet retained. Hence

```math
dK_C^+=dK_{\rm geom,map}^+=dK_{\rm geom,gauge}^+=dK_{\rm geom,coef}^+=0.
```

For `G -> S`, retained means ellipticity, coefficient tower, material transport,
commutator closure, and geometry/strain record all recertify the same tower/
scale packet. Hence

```math
dK_{\rm ell}^+=dK_{\rm coef}^+=dK_{\rm comm}^+=dK_{\rm transport}^+=dK_G^+=0.
```

Combining the four displayed vanishings gives

```math
d\mathcal K_{\rm iface}=0.
```

This proves retained-branch vanishing. It does not address the non-retained
branch, where the live question is whether the corresponding defects are strict
same-packet loss or summable same-packet residual.