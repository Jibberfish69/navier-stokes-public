# EulerWholeTerminalClockClosure — exact closure attempt

## Fixed proof object
Let u be one smooth finite-energy 3D incompressible Euler history on [0,T_*), and retain the all-height pressure-complete diagonal laws already established:

1. for every finite S, d/dt ||u||_{H^S} <= C_S ||grad u||_infty ||u||_{H^S};
2. every temporal/pressure coordinate on each finite diagonal is a differential polynomial controlled by the corresponding velocity Sobolev coordinate;
3. whole-terminal endpoint traces and the M->infinity intersection follow once A(T_*):=int_0^{T_*}||grad u||_infty dt is finite.

The only attempted discharge here is A(T_*)<infinity from the all-height diagonal plus full Euler scaling.

## 1. Scaling invariance of the remaining clock
Under u^{a,lambda}(x,t)=a u(lambda x,a lambda t),

||grad u^{a,lambda}(t)||_infty = a lambda ||grad u(a lambda t)||_infty.

Hence

A_{u^{a,lambda}}(T/(a lambda)) = A_u(T).

Thus the second Euler scaling degree can normalize amplitude/space coordinates of the mixed jet but gives no smallness or decay of A itself.

## 2. All-height Sobolev propagation feeds A back into itself
For any S>5/2 used only at this auxiliary embedding step, the scale-sharp Gagliardo–Nirenberg inequality gives

G(t):=||grad u(t)||_infty <= C_S N^{1-alpha_S} X_S(t)^{alpha_S},
alpha_S=5/(2S), N=||u_0||_2, X_S=||Lambda^S u||_2.

The pressure-complete H^S energy law gives

X_S(t) <= X_S(0) exp(C_S^E A(t)).

Therefore

A'(t)=G(t) <= B_S exp(beta_S A(t)),
B_S=C_S N^{1-alpha_S}X_S(0)^{alpha_S},
beta_S=alpha_S C_S^E.

This yields only the usual local lower bound on exp(-beta_S A); it does not imply a whole-terminal upper bound for A.

## 3. Taking S->infinity does not remove the feedback
The datum-dependent factor X_S(0)^{1/S} is the L^{2S}-moment scale of |xi| with respect to the kinetic-energy spectral measure. For a smooth datum with unbounded Fourier support, these moment scales tend to infinity as S->infinity. Thus the complete Sobolev intersection supplies finiteness at every finite S but no uniform-in-S bound capable of forcing G integrable.

Even in special data classes where the moment roots stay bounded initially, the exponent beta_S need not vanish in a way that closes A; the differentiated Euler energy constants grow with derivative order and the resulting inequality remains of exponential-feedback type.

## 4. Pressure-complete gradient law
Writing A_mat=grad u, the exact material equation is

D_t A_mat + A_mat^2 + Hess p = 0.

For vorticity omega,

D_t omega=A_mat omega,
D_t^2 omega=-(Hess p) omega.

This identifies the remaining dynamical carrier exactly: pressure-Hessian action on the stretching directions. The pressure Hessian has no universal sign supplied by incompressibility or the Poisson law. In the H^S energy pairing pressure contributes no direct coercive term.

## 5. Exact status
The downstream implication is proved:

A(T_*)<infinity => every finite pressure-complete diagonal is whole-terminal => every V_n(T_*) lies in every H^M => smooth endpoint jet => local restart.

The upstream implication

all-height diagonal + Euler scaling + pressure slaving => A(T_*)<infinity

is not discharged by the installed identities. Scaling leaves A invariant; the all-height family gives coordinatewise estimates whose common coefficient is A; pressure closure supplies no sign/coercivity that bounds its cumulative positive deformation.

A genuine unconditional closure requires a new same-history estimate on the pressure-Hessian/strain dynamics that implies finite cumulative deformation. This attempt establishes the exact obstruction and prevents circular use of the all-height endpoint estimates to prove their own shared clock.

## 6. Full material-frame lift of the vorticity identity
Let X(a,t) be the Euler flow map and set

F(a,t)=grad_a X(a,t),
P_a(t)=Hess p(X(a,t),t).

Then

F_t=(grad u)(X(a,t),t)F,
det F=1.

Using D_t grad u+(grad u)^2+Hess p=0 gives

F_{tt}+P_aF=0.

The Cauchy vorticity formula is

omega(X(a,t),t)=F(a,t)omega_0(a).

Thus D_t^2 omega=-(Hess p)omega is one carried column of a stronger shared law: the same pressure Hessian acts on every material direction in the full deformation frame.

Because P_a is symmetric, the full frame also has the exact shared-direction invariant

d/dt(F^T F_t-F_t^T F)=0,

so

F^T F_t-F_t^T F=grad u_0-(grad u_0)^T.

Together with det F=1, this records the rotational and volume participation of all material directions. It does not bound the singular-value stretch of F.

The natural pressure-work completion is exact but noncoercive. Along a trajectory,

d/dt [ |D_t omega|^2/2 + omega dot P_a omega/2 ]
= omega dot (D_t P) omega/2.

The potential omega dot P_a omega has either sign, and completing the P-work introduces D_tP. This identity alone does not produce a positive storage.

Substituting pressure slaving into that new term does not terminate the chain. With

f=tr((grad u)^2),
P_{ij}=R_iR_j f,

one has

(D_tP)_{ij}
=R_iR_j[-2tr((grad u)^3)-2tr((grad u)P)]
+[u dot grad,R_iR_j]f.

Thus the completed work returns cubic gradient-pressure terms and a nonlocal transport commutator, with no one-sided sign.

## 7. A direct cumulative pressure-curvature closure theorem
Define the remaining-time-weighted pressure action

Pi(T)=int_0^T (T-t)||Hess p(t)||_infty dt

and put g_0=||grad u_0||_infty. Duhamel's formula for the frame equation is

F(t)=I+t grad u_0-int_0^t(t-s)P_a(s)F(s)ds.

If Pi(T)<infinity, Gronwall gives

sup_{a,0<=t<T}||F(a,t)||
<=B_T,

B_T=(1+Tg_0)exp(Pi(T)).

Since det F=1 in three dimensions, the singular values give

sup_{a,0<=t<T}||F(a,t)^{-1}||<=B_T^2.

Differentiating Duhamel's formula and integrating in time gives

int_0^T sup_a||F_t(a,t)||dt
<=Tg_0+B_T Pi(T).

Finally,

grad u(X(a,t),t)=F_t(a,t)F(a,t)^{-1},

so

A(T)
<=B_T^2[Tg_0+B_T Pi(T)]<infinity.

Hence the direct same-history implication is

Pi(T)<infinity
=> A(T)<infinity.

Equivalently, a finite-time loss of the shared deformation clock requires

int_0^{T_*}(T_*-t)||Hess p(t)||_infty dt=infinity.

This action has exactly the Euler scaling of A. Since

P^{a,lambda}(x,t)=(a lambda)^2P(lambda x,a lambda t),

one has

Pi_{u^{a,lambda}}(T/(a lambda))=Pi_u(T).

No spatial Sobolev height is selected in this derivation.

## 8. Directional pressure-work refinement
Where omega is nonzero, set

xi=omega/|omega|,
zeta=Sxi/|Sxi|,
S=(grad u+(grad u)^T)/2.

The same material identity gives

D_t|S omega|=-(zeta dot P xi)|omega|.

Only the negative directional action can increase |S omega|. With

q(t)=||[zeta dot P xi]_- (t)||_infty,

two integrations along the same material trajectory give

||omega(t)||_infty
<=[||omega_0||_infty+t||S_0omega_0||_infty]
exp(int_0^t(t-s)q(s)ds).

Consequently either of the following same-history conditions closes continuation:

int_0^T exp(int_0^t(t-s)q(s)ds)dt<infinity,

or the simpler sufficient condition

int_0^T(T-s)q(s)ds<infinity.

The first criterion is the pressure-direction result of Chae and Constantin, arXiv:2103.10672. It is sharper than Pi because q<=||P||_infty. Once it is finite, the vorticity continuation theorem gives the whole-terminal record, and the established intersection/restart chain applies.

## 9. New terminal hinge
The pressure-Hessian route has now produced two genuine sufficient actions:

1. the full-frame unsigned action Pi, which bounds A directly;
2. the negative directional action q, which bounds the carried vorticity and closes continuation.

What remains is no longer an unspecified pressure estimate. It is the same-history implication

all-height pressure-complete Euler structure
+ pressure Poisson slaving
=> one of these two scale-invariant cumulative actions is finite.

The installed identities do not yet prove it. The trace relation controls volume through det F=1, but not the condition number of F or the deviatoric eigenstructure of P. Signed pressure work also cannot be monotone under Euler time reversal. Any successful next step must use the global finite-energy, nonlocal pressure coupling to rule out persistent critical negative pressure alignment; the local material oscillator and pressure trace identities alone leave that alignment available.
