# Euler same-history centered-generator estimate: exact tangent law and hard obstruction

## Target
Seek a bound, derived from Euler fixed-time scaling symmetry and pressure completeness, for every finite centered-generator word through a candidate terminal time. Such a bound would produce the finite Sobolev records required by the projective-intersection finish.

## 1. Normalize the fixed-time scaling representation
For c∈R^3 define

S_{λ,c}u(x,t)=λ^{-1}u(c+λ(x-c),t).

This is an exact Euler symmetry with physical time unchanged. On L^2,

||S_{λ,c}f||_2=λ^{-5/2}||f||_2.

Writing λ=e^s, the generator is

L_c=(x-c)·∇-1.

Equivalently A_c:=L_c+5/2=(x-c)·∇+3/2 is the skew-adjoint generator of the associated unitary dilation group e^{5s/2}S_{e^s,c}.

For any two centers,

A_c-A_d=L_c-L_d=(d-c)·∇.

Thus the spatial derivatives are exactly the center-difference directions.

## 2. Exact first-variation identity from energy conservation
Euler energy is conserved along each scaled history and has the exact homogeneity

E(S_{e^s,c}u(t))=e^{-5s}E(u(t)).

Differentiating at s=0 gives

2⟨u,L_cu⟩=-5||u||_2^2,

or

⟨u,A_cu⟩=0.

This identity is exact at every time where the generator is defined. It is the complete positive information supplied by the L^2 scaling law at first order: the unitary dilation tangent A_cu is orthogonal to u.

Changing centers gives

⟨u,(A_c-A_d)u⟩=⟨u,(d-c)·∇u⟩=0,

which is the standard translation-derivative orthogonality.

Higher s-derivatives of the exact energy homogeneity add no coercive generator bound. Since A_c is skew-adjoint, identities obtained by repeatedly differentiating ||e^{sA_c}u||_2^2=||u||_2^2 are algebraic cancellations between terms such as ||A_cu||_2^2 and ⟨u,A_c^2u⟩. They do not control ||A_c^k u||_2.

## 3. Same-history evolution of the symmetry tangent
Set W_c=L_cu (equivalently use A_cu; the scalar multiple of u is harmless). Differentiating the exact commuting symmetry family gives the pressure-complete linearized Euler equation

∂_tW_c + P[(u·∇)W_c+(W_c·∇)u]=0.

Taking the L^2 pairing with W_c and using div u=0 and pressure orthogonality yields

(1/2)d/dt ||W_c||_2^2
= -∫ W_{c,i}W_{c,j} ∂_j u_i dx
= -∫ W_c^T S W_c dx,

where S=(∇u+∇u^T)/2.

The pressure contribution vanishes from this tangent-energy identity. The right-hand side is sign-indefinite. Consequently

|d/dt log ||W_c||_2| ≤ ||S||_∞ ≤ ||∇u||_∞

whenever W_c≠0.

Center differences Z_h:=W_c-W_{c+h}=h·∇u obey the differentiated Euler equation and inherit the same deformation mechanism. Iterated generator words satisfy the corresponding higher linearized/commutator hierarchy, with coefficients built from spatial derivatives of u. Thus the full centered-generator algebra is dynamically coherent, while its norms are paid by the deformation of the same Euler history.

## 4. Why combining all centers does not create an automatic cancellation
For a finite family {W_{c_r}}, summing tangent energies gives

(1/2)d/dt Σ_r ||W_{c_r}||_2^2
= -∫ S : C_W dx,

C_W(x)=Σ_r W_{c_r}(x)⊗W_{c_r}(x).

Incompressibility gives tr S=0. Cancellation would follow from C_W(x)=ρ(x)I pointwise. The centered-scaling algebra imposes no such isotropy on C_W. For generic u, C_W carries the anisotropy of ∇u and u. Center differences isolate h·∇u and produce the familiar gradient/enstrophy stretching terms rather than an isotropic tensor.

Pressure closure does not repair this energy identity: after Leray projection, pressure contributes zero direct work to every L^2 symmetry-tangent energy. Its effect is already encoded nonlocally in the evolution of u and S, and no sign is generated in -S:C_W.

## 5. A static coercivity countertest
Take a smooth divergence-free compactly supported profile φ and its L^2-preserving high-frequency dilation

φ_R(x)=R^{3/2}φ(Rx).

Then ||φ_R||_2=||φ||_2. Around c=0 the unitary dilation-generator norm ||A_0φ_R||_2 is scale-invariant. For any fixed c≠0,

A_cφ_R=A_0φ_R-c·∇φ_R,

and ||c·∇φ_R||_2∼R.

Hence the same L^2 energy and exact dilation symmetry allow arbitrarily large center-difference generator norms. There is no coercive bound of the form

||A_c-A_d)u||_2 ≤ F(conserved energy, scaling homogeneity)

with F independent of the spatial derivative content of u. The missing spatial directions are precisely the unconstrained directions of the symmetry representation.

## 6. Verdict on the requested same-history estimate
The fixed-time second scaling degree of freedom is an exact algebraic generator of the complete spatial jet. Its only automatic L^2 Noether/homogeneity information is orthogonality of the unitary dilation tangent to u. The norms of those tangents, and especially their center differences that equal spatial derivatives, evolve through the indefinite strain form.

Therefore a same-history uniform generator-domain estimate through T_* does not follow from scaling symmetry plus pressure covariance alone. Any estimate strong enough to reach

sup_{t<T_*}||∂^βu(t)||_2<∞

must introduce additional dynamical control of strain/deformation (or an equivalent quantity). Once such control is supplied, the centered-generator representation converts it cleanly into the all-height Sobolev records, but it does not supply the control itself.

This is a hard obstruction to the proposed producer theorem in its pure form. It does not alter the Sobolev-intersection finish line and does not alter the settled Navier–Stokes result.