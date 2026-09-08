# Euler all-height producer test: scaling-orbit access versus same-history Sobolev membership

## Scope
Euler-only theorem construction. Keep the Sobolev projective intersection as the smoothness finish line. Test exactly whether the second Euler scaling degree of freedom can itself produce finite all-height records for one temporal rung on one physical Euler history.

## 1. Exact two-parameter symmetry and fixed-time subgroup
For a temporal rung V_n=∂_t^n u, Euler scaling gives

V_n^{a,λ}(x,t)=a^{n+1} λ^n V_n(λx,aλt).

For every finite m,

||V_n^{a,λ}||_{Ḣ^m}=a^{n+1} λ^{n+m-3/2} ||V_n||_{Ḣ^m}.

Thus each m admits a scale-neutral one-parameter direction a=λ^{(3/2-n-m)/(n+1)}. This is correct symmetry geometry and selects no distinguished Sobolev height.

A separate choice aλ=1 leaves physical time fixed. With a=λ^{-1}, centered at c,

S_{λ,c}V_n(x,t)=λ^{-1}V_n(c+λ(x-c),t),

independently of n. Its infinitesimal generator is

L_c=(x-c)·∇-1.

For centers c,d,

L_c-L_d=(d-c)·∇,

so formally L_c-L_{c+e_j}=∂_j and iterated center differences generate the full Cartesian differential algebra.

## 2. Hidden analytic condition in the generator argument
The formal identity does not itself produce derivatives. For a Banach-space orbit λ↦S_{λ,c}f, the generator L_c f exists strongly only when f lies in the domain D(L_c). For f∈L^2, strong continuity of λ↦S_{λ,c}f is automatic, while strong differentiability at λ=1 is an additional domain property.

Hence

f∈D(L_c)∩D(L_{c+e_j})  ⇒  ∂_j f=(L_c-L_{c+e_j})f∈L^2.

The implication cannot be reversed into a producer claim by symmetry alone: the existence of the scaling orbit supplies continuity in the group parameter, while the desired H^1 membership is precisely what supplies the needed generator differentiability. Higher iterates repeat the same issue. Membership in the common domains of all finite words in the centered generators is essentially the smooth-vector condition that the proof is trying to establish.

Therefore the arrow

"full centered scaling orbit exists" ⇒ "same physical V_n has finite H^M membership"

is not established by the Lie algebra identity. The generator calculation is an algebraic representation of the spatial jet once its strong domains are controlled.

## 3. Same-history issue
Each nontrivial scaling maps u_0 to a different initial datum S_{λ,c}u_0. Pressure covariance says every scaled field belongs to another pressure-complete Euler history. It does not identify that history with the original history. Thus scale-neutrality of ||S_{a,λ}V_n||_{Ḣ^m} cannot turn an infinite norm of V_n into a finite one and cannot by itself yield a terminal bound on the original history.

This is the exact separation:

(1) symmetry access: all (a,λ,c) transforms exist as Euler solutions whenever the original solution exists;
(2) same-history regularity: the orbit map must possess strong parameter derivatives with bounds uniform up to T_*;
(3) Sobolev finish: those strong derivatives yield finite H^M records, compatible in M, and hence the projective intersection.

The unpaid step is (2).

## 4. Propagating symmetry tangents from smooth initial data
Because u_0 is smooth, the initial scaling orbit is differentiable to every finite order. Let W_c=∂_{log λ}|_{λ=1} S_{λ,c}u=L_cu. Differentiating the Euler family gives the pressure-complete linearized equation

∂_t W_c + P[(W_c·∇)u+(u·∇)W_c]=0.

Its L^2 energy identity is

(1/2)d/dt ||W_c||_2^2 = -∫ W_{c,i}W_{c,j} ∂_j u_i dx,

hence

d/dt ||W_c||_2 ≤ ||∇u||_∞ ||W_c||_2.

Center differences W_c-W_{c+e_j}=∂_j u obey the corresponding differentiated Euler system. Higher parameter derivatives satisfy the higher linearized/commutator hierarchy. Thus smooth initial orbit differentiability propagates on every interval for which

∫_0^T ||∇u||_∞ dt < ∞.

This reproduces ordinary persistence of Sobolev regularity. The symmetry gives a coherent horizontal representation of the full jet, while its strong-domain propagation still pays the common deformation/strain cost. No estimate obtained so far from scaling covariance or pressure slaving bounds that cost through an arbitrary candidate terminal time.

## 5. Consequence for the proposed producer
The second Euler scaling freedom is a genuine algebraic producer of spatial directions: its fixed-time centered generators span every Cartesian derivative. It is not, by itself, an analytic producer of finite Sobolev membership. The missing analytic producer must control the strong generator domains on the original history through T_*.

A valid all-height theorem would have the form

sup_{t<T_*} ||A_1...A_k V_n(t)||_2 < ∞

for every finite word in centered scaling generators A_j=L_{c_j}, with constants allowed to depend on the finite word. Center differences would then give

sup_{t<T_*} ||∂^β V_n(t)||_2<∞

for every finite β, hence compatible records R_{n,M}, the projective intersection ∩_M H^M, smooth terminal trace, and restart.

## 6. Next live hinge
The route now requires a same-history estimate for the symmetry-tangent hierarchy that improves on the standard strain payment. The exact object to attack is the deformation term in the linearized energy identity, simultaneously over the centered-generator algebra, using the pressure-complete Euler structure and any cancellations created by pairing/combining multiple generator directions before taking Sobolev norms.

Current status: the scaling geometry and full spatial Lie algebra are established; the standalone implication from scaling-orbit existence to finite all-height membership fails because strong orbit differentiability is equivalent to the missing regularity. The finish line remains the Sobolev intersection.