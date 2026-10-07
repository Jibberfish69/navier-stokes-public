# Simultaneous finite-row construction and the actual limiting topology

**Companion C03 — reviewed scope.** Finite PDE system, simultaneous construction, cutoff bounds, projective defect and limiting topology.

This is a positive local/cutoff and weak-construction calculation. Bound (26) is a sufficient input for this particular compactness route. The diagonal row-weight limitation does not cover compatible highest-row variation or non-diagonal cancellation families. A projective or weak limit retains the stated defect and strong-convergence conditions.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.


6 October 2026. Original-equation derivation, using the constituent-paper mild constructor and spectral regularization. This note distinguishes **finite row-system closure** from a whole-terminal regularity closure. It does not assume the latter and does not give a verdict on the paper's asserted theorem.  

## 1. The finite temporal system actually closes

Write P for Leray projection, g=P f, B(v,w)=P[(v·∇)w], and V\_n=∂\_t^n u. The exact rows are  

V\_0,t − νΔV\_0 + B(V\_0,V\_0)=g,  

V\_n,t − νΔV\_n + B(u,V\_n)+B(V\_n,u)  
 = ∂\_t^n g − Σ\_{a=1}^{n−1} binom(n,a) B(V\_a,V\_{n−a}),  n≥1.       (1)  

For any fixed N, (1) for 0≤n≤N is a closed lower-triangular parabolic system in V\_0,…,V\_N. Its only genuinely nonlinear feedback block is the base velocity. At n≥1, the highest temporal row is linear, with coefficients furnished by u and with forcing furnished by lower temporal rows and prescribed force derivatives. Spatial differentiation is still the PDE's differential operator, not an independent exterior coordinate.  

The rectangle's V\_{N+1} is the actual time derivative of V\_N given by its equation. It need not be introduced as an additional independent unknown to solve this finite system. If all formal spatial derivatives are instead introduced as separate algebraic unknowns, an outer equation at (n,α) reads (n+1,α), (n,α+2e\_i), and the full products  

Σ\_{a=0}^n Σ\_{β≤α} binom(n,a)binom(α,β)  
 (J\_{a,β}·∇)J\_{n−a,α−β}.                                     (2)  

A finite buffer accommodates any finite selection of these identities. Requiring equations for every newly added boundary coordinate repeats that buffer operation indefinitely. This is not an obstruction to the finite PDE system (1): its Laplacian is handled by the operator domain or weak formulation rather than by declaring each derivative a separate degree of freedom.  

### Exact compatibility, not separate fluids

At time zero set V\_0(0)=u\_0 and recursively compute V\_n(0) from (1), with the original force jets. To prove that a solution of the finite system has V\_n=∂\_t^n u, differentiate row n−1. Pascal's identity combines all Leibniz allocations into row n. Assuming the lower identities, Z=∂\_tV\_{n−1} and V\_n solve the same linear equation with the same lower-row forcing and the same initial value. Their difference satisfies  

(Z−V\_n)\_t−νΔ(Z−V\_n)+B(u,Z−V\_n)+B(Z−V\_n,u)=0.  

On a smooth base interval, the L² energy estimate and Gronwall give Z=V\_n. Induction proves every identity. Thus adding temporal rows preserves the same base field and its pressure; it does not impose independent initial derivatives.  

The pressure is reconstructed from the entire binomial tensor:  

Q\_n=R\_iR\_j Σ\_{a=0}^n binom(n,a)V\_{a,i}V\_{n−a,j}  
    −(−Δ)^{-1}div F\_n.                                      (3)  

The force potential keeps its stated low-frequency L¹ estimate. No pressure or nonlinear allocation is removed in this closure.  

### A concrete finite spatial buffer

For integer m≥0, Sobolev multiplication gives the safe estimate  

||V\_{n+1}||\_{H^m}  
 ≤ν||V\_n||\_{H^{m+2}}  
  +C\_m Σ\_{a=0}^n binom(n,a)  
     ||V\_a||\_{H^{m+2}}||V\_{n−a}||\_{H^{m+2}}  
  +||P F\_n||\_{H^m}.                                         (4)  

Recursive substitution shows that V\_n in H^m needs base spatial norms only through H^{m+2n}, together with finitely many prescribed force norms. Consequently the requested rectangle (N,M) is controlled by a finite base buffer through  

p(N,M)=max{3, 2N+max{M+1,2}}.                                (5)  

For M≥1, the two target weights agree:  
(M+1)+2N=(M−1)+2(N+1).  
For M=0, replacing the lower target H^{-1} by the stronger H^0 accounts for the extra safe derivative in (5). This is a sufficient buffer, not a sharpness claim.  

## 2. A simultaneous constructor on one positive interval

The source's mild map is  

Φ\_f(v)=e^{νtΔ}u\_0+∫\_0^t e^{ν(t−s)Δ}P[f−div(v⊗v)\](s)ds.        (6)  

In X\_δ^3=C H³∩L²H⁴ with v\_t∈L²H², its product estimate is  

||P div(v⊗w)||\_{L²H²}  
 ≤C\_q δ^{1/2}||v||\_{C H³}||w||\_{C H³}.                       (7)  

The source's linear estimate, a radius R depending on ||u\_0||\_{H³}, ν and the force, and sufficiently small δ give a self-map and contraction factor at most 1/2. This δ is selected once at the base level. It is not selected afresh for every derivative order.  

Let J\_L be the orthogonal Fourier cutoff to |ξ|≤L. The same bounds hold for the truncated map with u\_0 replaced by J\_Lu\_0 and its complete right-hand side multiplied by J\_L. Its fixed points u^L satisfy one cutoff-independent X\_δ^3 bound. For each m≥3 the full spatial commutator estimate yields  

(d/dt)||u^L||\_{H^m}²+ν||∇u^L||\_{H^m}²  
 ≤[ν+2C\_m||∇u^L||\_∞]||u^L||\_{H^m}²  
   +ν^{-1}||g||\_{H^{m−1}}².                                 (8)  

Since ||∇u^L||\_∞≤C||u^L||\_{H³}≤CR on this same interval, (8) supplies a cutoff-independent bound at each finite m. Its constants may depend on m and its datum/force norms. There is no need for a bound uniform over m. Equation (4) then supplies all finite temporal and pressure rows. The contraction comparison gives strong convergence in X\_δ^3; interpolation with the higher uniform estimates and the exact recurrence gives strong convergence of every finite mixed jet on this common interval.  

This is a source-faithful simultaneous construction. It proves more than separately producing a new interval for every order.  

### Direct local construction at the requested R_{0,1} level

Set X\_δ^1=C H¹∩L²H² with v\_t∈L²L². For δ≤1, the linear heat estimate has a constant L\_ν independent of δ. The actual nonlinear bound is  

||B(v,w)||\_{L²L²}  
 ≤C δ^{1/4}||v||\_{C H¹}||w||\_{C H¹}^{1/2}||w||\_{L²H²}^{1/2}  
 ≤C δ^{1/4}||v||\_{X\_δ^1}||w||\_{X\_δ^1}.                      (9)  

Indeed ||v·∇w||₂≤||v||₆||∇w||₃ and  
||∇w||₃≤C||w||\_{H¹}^{1/2}||w||\_{H²}^{1/2}; Cauchy–Schwarz in time gives δ^{1/4} after taking the square root.  

For B\_\*=1+||u\_0||\_{H¹}+sup\_{0≤t≤1}||g(t)||₂, take  
R=2L\_ν B\_\* and δ≤min{1,(8C L\_ν² B\_\*)^{-4}}.  
Then (6) maps the radius-R ball into the radius-3R/4 ball and its Lipschitz constant is at most 1/2. The same holds uniformly in L. Thus the target action is produced locally by an actual nonlinear fixed point, without an independent R\_{0,1} premise. The source's H³ construction above also keeps all higher rows on one common interval.  

## 3. What simultaneous row weights do to this map

For a finite independent row vector W=(W\_0,…,W\_N), write  

N\_n(W)=Σ\_{a=0}^n binom(n,a)B(W\_a,W\_{n−a}).  

Its derivative is lower triangular. Every diagonal entry is the same linearized transport operator  

L\_u h=B(u,h)+B(h,u).                                         (10)  

After applying the heat solution operator, every diagonal entry of the derivative of the simultaneous mild map is  

K\_u h(t)=∫\_0^t e^{ν(t−s)Δ}L\_u h(s)ds.                        (11)  

Changing positive temporal weights is diagonal similarity: it changes off-diagonal entries but leaves (11) unchanged. In any weighted sum or maximum product norm, take a variation only in the highest row. All lower outputs are zero, and the highest output is K\_u h. Hence  

||DΦ\_block|| ≥ ||K\_u||                                      (12)  

in its selected single-row norm. Increasing N or making outer weights very small cannot by itself improve this diagonal contraction factor. This is not a proof that no clever norm can work, or that ||K\_u|| must exceed one. It identifies exactly which operator still requires an estimate in the simultaneous fixed-point proposal.  

If the domain is restricted from the outset to compatible derivative graphs W\_n=∂\_t^n v, the independent highest-row variation used in (12) is no longer admissible. In that case the graph map is simply (6), read in the selected mixed-derivative graph norm. A closed invariant graph-norm ball must still bound its base X^1 coordinate. Choosing tiny positive outer weights does not make an infinite base action finite. A bounded Fréchet metric Σ2^{-j}min{1,p\_j(v−w)} bounds distances, not the seminorms p\_j.  

The analogous direct row-energy calculation is also explicit. For n≥1,  

(1/2)(d/dt)||V\_n||₂²+ν||∇V\_n||₂²  
 =⟨G\_n,V\_n⟩−∫(V\_n·∇)u·V\_n  
  −Σ\_{a=1}^{n−1}binom(n,a)⟨(V\_a·∇)V\_{n−a},V\_n⟩.              (13)  

The u·∇V\_n pairing cancels; the deformation pairing remains and is bounded by ||∇u||\_∞||V\_n||₂². Summing positive temporal weights preserves this term rather than creating a sign. These equations propagate higher rows from a controlled base; they do not delete the base nonlinear equation. Further identities could still improve a joint estimate, but (10)–(13) specify what that improvement must act on.  

## 4. Carry the same regularization through an arbitrary finite horizon

Fix any finite T on which the prescribed force is smooth, including a proposed finite maximal T\_\*. For every L the cutoff equation  

u\_t^L−νΔu^L+J\_LP[(u^L·∇)u^L]=J\_Lg,  
 u^L(0)=J\_Lu\_0,  
 u^L=J\_Lu^L                                                  (14)  

is a Banach-space ODE on the bandlimited subspace. It is not finite-dimensional on R³, but the Laplacian is bounded there and the nonlinearity is locally Lipschitz. The kinetic identity supplies global-in-time existence for each fixed L. Every temporal row is obtained by differentiating (14), so the entire coupled graph is retained at the regularized level. In unprojected form its pressure is  

Q\_n^L=J\_L[R\_iR\_j Σ\_{a=0}^n binom(n,a)V\_{a,i}^LV\_{n−a,j}^L  
            −(−Δ)^{-1}div F\_n],  

and the row is V\_{n+1}^L+J\_L B\_n^L+∇Q\_n^L=νΔV\_n^L+J\_LF\_n, with B\_n^L the complete unprojected binomial transport. Thus the approximation is explicitly the regularized original system, with its pressure constraint.  

Define  

K=||u\_0||₂+∫\_0^T||g||₂,  
G=∫\_0^T||g||₂²,  
E=K²/(2ν).  

The exact kinetic identity and r(t)≤||u\_0||₂+∫\_0^t||g||₂ imply  

sup\_{t≤T}||u^L(t)||₂≤K,  
∫\_0^T||∇u^L||₂²≤E.                                         (15)  

These constants are independent of L. With the source's unitary Fourier convention,  

||u^L||\_∞≤L^{3/2}||u^L||₂/(√6 π).  

Therefore the full nonlinear term satisfies  

∫\_0^T||J\_LP[(u^L·∇)u^L]||₂²  
 ≤L³K² E/(6π²)=L³K⁴/(12π²ν).                               (16)  

Put Q\_L=∫||u\_t^L||₂², Z\_L=∫||Δu^L||₂² and y\_L(t)=||∇u^L(t)||₂². Squaring the COMPLETE projected momentum equation gives exactly  

Q\_L+ν²Z\_L+νy\_L(T)  
 =νy\_L(0)+∫\_0^T||J\_Lg−J\_LP[(u^L·∇)u^L]||₂².                 (17)  

Thus, without omitting its nonlinear factor,  

Q\_L≤ν||∇u\_0||₂²+2G+L³K⁴/(6π²ν),  
Z\_L≤L²E.                                                     (18)  

The second inequality uses bandlimiting and (15), and is stronger than the rough cubic estimate for Z\_L that (17) alone gives. Since the inhomogeneous H² norm squares to ||u||₂²+2||∇u||₂²+||Δu||₂²,  

R\_{0,1}[u^L;T]  
 ≤TK²+(2+L²)K²/(2ν)  
  +ν||∇u\_0||₂²+2G+L³K⁴/(6π²ν).                              (19)  

This is a concrete full-horizon estimate produced by the complete regularized equations. It is finite for every L, and its displayed growth is quadratic/cubic in L. No assertion that the actual action grows at that rate is being made: (19) is an upper estimate, not a lower bound.  

Every higher row likewise has an explicit finite cutoff bound. If  
A\_n(L)=sup\_{0≤t≤T}||∂\_t^n u^L||₂,  
then A\_0≤K and Bernstein gives  

A\_{n+1}(L)≤νL²A\_n(L)  
 +(L^{5/2}/(√6 π))Σ\_{a=0}^n binom(n,a)A\_a(L)A\_{n−a}(L)  
 +sup\_{0≤t≤T}||P F\_n(t)||₂.                                 (20)  

Moreover ||∂\_t^n u^L||\_{H^m}≤(1+L²)^{m/2}A\_n(L). Consequently every finite rectangle and its exact recurrence exists simultaneously at each L; (20) displays the cutoff dependence rather than presuming compactness in those stronger spaces.  

## 5. Cutoff solutions are not themselves a projective family

Derivative-depth restriction of a single field is exactly compatible. Spectral restriction between separately solved cutoffs is different.  

For L<L′, put v=J\_Lu^{L′} and w=(J\_{L′}−J\_L)u^{L′}. Then v satisfies the L-cutoff equation plus the exact defect  

−J\_LP div(v⊗w+w⊗v+w⊗w).                                    (21)  

Thus J\_Lu^{L′} need not equal u^L. High–low and high–high transport interactions feed back into the retained modes. Passing to a limit is required; one cannot invoke exact inverse-system compatibility between the regularized solutions. Their simultaneous derivative rows remain compatible within each fixed L.  

There is nevertheless a quantitative approximate compatibility at the weak level. Since w has frequencies above L, (15) gives  

||w||\_{L²\_tL²\_x}≤E^{1/2}/L,  
||v⊗w+w⊗v+w⊗w||\_{L¹\_{t,x}}  
 ≤2K(TE)^{1/2}/L+E/L².                                      (21a)  

For each smooth compact test φ, the Fourier integral gives a bound on ||∇P J\_Lφ||\_∞ independent of L. Thus the defect in (21) tends to zero in distributions at the explicit rate supplied by (21a), uniformly for L′>L. Applying any fixed temporal or spatial derivative to the defect preserves distributional convergence by transferring that derivative to the test function. This is a genuine approximate projective construction of the complete mixed equation graph. Its quantitative convergence is in distributions; (21a) supplies no L² norm of its differentiated terms.  

## 6. The actual cutoff-independent compactness and its limit

The kinetic bounds give a better cutoff-independent estimate in a weaker topology:  

||P div(u^L⊗u^L)||\_{H^{-1}}  
 ≤C||u^L||₄²  
 ≤C||u^L||₂^{1/2}||∇u^L||₂^{3/2}.  

Hence  

||u\_t^L||\_{L^{4/3}H^{-1}}  
 ≤νT^{1/4}E^{1/2}+C K^{1/2}E^{3/4}+T^{1/4}G^{1/2}.           (22)  

Together, (15) and (22) give a subsequence with  

u^L ⇀\* U in L∞(0,T;L²),  
u^L ⇀ U in L²(0,T;H¹),  
u^L → U in L²(0,T;L²(B\_R)) for each finite R.                 (23)  

Aubin–Lions is used only on bounded spatial balls, followed by one diagonal extraction. The quadratic products then converge in L¹ on compact spacetime cylinders, while global weak bounds identify the nonlocal pressure. The high-frequency projection on a smooth test tends to the identity, so (14) passes to the original forced equation. The limit is a global energy-class weak solution with the original datum and force.  

For pressure, ||u^L||\_{L^{10/3}\_{t,x}}^{10/3}≤C K^{4/3}E. Therefore u\_i^L u\_j^L is uniformly bounded in L^{5/3}\_{t,x}, and the untruncated reconstruction  
q^L=R\_iR\_j(u\_i^Lu\_j^L)−(−Δ)^{-1}div f  
has the corresponding weak convergence after separating its prescribed smooth force potential. The pressure in the cutoff equation is J\_Lq^L. No uniform L^{5/3} multiplier bound is claimed for a sharp spherical Fourier cutoff; distributional convergence suffices to identify its limit with the normalized reconstruction.  

For any strict horizon S<T\_\*, uniqueness against the classical history identifies U=u on [0,S]. Alternatively, the source's contraction comparison and a finite partition of [0,S] give strong convergence of the regularizations to u there. Higher spatial bounds plus recurrence yield, for every fixed finite n,m,  

∂\_t^n u^L → ∂\_t^n u in C([0,S];H^m),                       (24)  

and the associated finite mixed norms, after retaining sufficiently high finite buffers. Constants are uniform in L for this fixed S. Initial jets and normalized pressure are preserved.  

Distributional differentiation is continuous, so (23) also yields all mixed derivative coordinates as distributions simultaneously. On (0,T\_\*), their entire binomial equations coincide with the classical history. This retains the original graph; it does not gain terminal integrability.  

## 7. Precisely what inverse limits preserve

Exhausting strict horizons gives  

lim←\_{S<T\_\*} [L²(0,S;H²)∩H¹(0,S;L²)]  
 =L²\_loc([0,T\_\*);H²)∩H¹\_loc([0,T\_\*);L²),                     (25)  

with the initial endpoint included by restriction from positive S. This is the locally-in-time space. It is not the whole-terminal space obtained by replacing every S by T\_\*.  

To use weak compactness directly in the whole-terminal R\_{0,1} space, one sufficient input is a common bound  

sup\_L [||u^L||\_{L²(0,T\_\*;H²)}²  
       +||u\_t^L||\_{L²(0,T\_\*;L²)}²]<∞.                       (26)  

More generally, for localized cutoff estimates the same finite bound must survive the joint limits L→∞, R→∞, S↑T\_\*; bounds depending on the spatial ball or strict horizon do not establish a global action. No bound uniform in derivative order is required. One does need uniformity in the approximation parameters for each selected fixed coordinate.  

A bound along a cofinal subsequence of cutoffs would already suffice; bounding every L as in (26) is a convenient stronger formulation. Weak lower semicontinuity from that bound would supply the actual history's whole-terminal R\_{0,1}, since its limiting field has already been identified by (23)–(24). Formula (19), however, supplies a finite bound for each L rather than (26). The fully coupled equations do yield (22)–(24) without it. Their strongest established compactness limit here is the energy-class topology plus strong convergence of every finite mixed jet on each strict classical interval.  

This is the exact distinction between a successful simultaneous construction and a terminal action producer. A product of weakly compact coordinate balls works once finite radii are fixed for the chosen whole-interval coordinates. The unbounded union of those balls is not made compact by compatibility. The inverse limit over derivative indices does not change what the inverse limit over strict time horizons in (25) contains.  

## 8. Strongest justified result and the next step

The original method supports the following concrete construction from u\_0∈H∞\_σ, ν>0 and the prescribed smooth Schwartz force:  

1. A source-faithful simultaneous finite row system on one common positive interval, with the correct initial jets, full binomial interactions and pressure.  
2. Global cutoff histories carrying every finite compatible row, with explicit bounds (19)–(20).  
3. A cutoff-independent global weak limit from (15), (22) and (23), which is the same maximal classical history on every strict horizon and carries all its mixed derivatives there.  
4. Exact identification of the stronger uniformity that would convert this limit into whole-terminal R\_{0,1}: the selected base Hilbert-space action must be bounded independently of the approximating cutoff and terminal exhaustion.  

The next logically warranted calculation is at the BASE nonlinear diagonal (11) or the complete transport contribution in (17), on these already constructed compatible cutoff histories. A successful new joint identity would need to control that contribution uniformly as L→∞ (or obtain a different compactness mechanism that forces the same finite action). Adding rows, shrinking their positive weights, or using their distributional compatibility alone does not change the computed base map or the action topology. This identifies a precise remaining derivation, not a claim that every possible further use of the complete graph must fail.  

## Source locations and attribution

- Unforced paper, [DOI 10.6084/m9.figshare.33472627.v4](https://doi.org/10.6084/m9.figshare.33472627.v4), exact [PDF file 69288541](https://ndownloader.figshare.com/files/69288541), pp.20–24: mild contraction, cutoff persistence and temporal recurrence; pp.48–49: spectral construction and local H¹ compactness.  
- Forced paper, [DOI 10.6084/m9.figshare.33968818.v3](https://doi.org/10.6084/m9.figshare.33968818.v3), exact [PDF file 69288538](https://ndownloader.figshare.com/files/69288538): corresponding forced rows and local constructor.  
- The [constituent-papers teaching guide](../teaching/constituent-papers-ontology-and-derivation-guide.md) explains the supplementary constructor N2–N4 and the complete differentiated graph, with its separate source-status qualifications.  

Formulas (1)–(26) above are the derivations in this companion; they are not quoted theorem statements from the sources. The sufficient cutoff-uniform action bound (26) is not asserted for unrestricted data. No original manuscript has been changed.  
