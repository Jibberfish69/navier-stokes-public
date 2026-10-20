# Navier–Stokes: a working proof, from the original fluid to continuation

The source argument follows one fluid from its initial velocity to a proposed finite final time and then continues that fluid through it using its stated native whole-interval theorem. The full author-written opening is available through `author`; the transitions below develop its mathematical operations and retain their exact sources.

The problem starts with a vortex. Strain stretches it, incompressibility narrows its cross-section, and its rotation can intensify while viscosity spreads the vorticity. The danger concerns the development of these rates together. Under Navier–Stokes scaling
\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),\qquad p_\lambda(x,t)=\lambda^2p(\lambda x,\lambda^2t),
\]
transport and viscosity both scale by \(\lambda^3\). Energy scales by \(\lambda^{-1}\), while
\[
\|u_\lambda\|_{\dot H^s}=\lambda^{s-1/2}\|u\|_{\dot H^s}.
\]
The critical height \(s=1/2\) measures rescaled concentration without discounting its smaller spatial scale. A hypothetical repeated contraction has durations \(\tau_j=\lambda^{-2j}\tau_0\), whose sum is finite. This is the physical entry to the derivative structure that the source develops.

Fix \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\), and the generated maximal pressure-complete history \((T_*,u,p)\). In the unforced branch,
\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,\quad \nabla\cdot u=0,\quad p=R_iR_j(u_i u_j).
\]
In the prescribed-force branch fix the complete triple \((u_0,\nu,f)\), with \(f\) smooth in time and Schwartz in space. Add \(f\) to momentum and subtract \((-\Delta)^{-1}\nabla\cdot f\) from pressure. The original future force remains fixed through restart.

Time differentiation at fixed spatial position makes every possible allocation of derivatives between the velocity factors appear. Put \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\), \(F_n=\partial_t^nf\), and \(B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}\). The full temporal row is
\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\quad Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,
\]
where \(\Phi_n=(-\Delta)^{-1}\nabla\cdot F_n\), with \(F_n=\Phi_n=0\) unforced. Spatial differentiation gives \(J_{n,\alpha}=\partial_x^\alpha V_n\), \(\Pi_{n,\alpha}=\partial_x^\alpha Q_n\), and the complete double Leibniz sum. These are fields of this history; derivative indices leave \(x,t\) free. At zero the recurrence is triangular and generates each initial row from the preceding rows and the prescribed source jet.

Three columns are visible. The velocity-time column contains the vector fields \(V_n\) at all spatial orders. Its quadratic contraction gives the temporal derivatives of the critical height \(H=\tfrac12\|\Lambda^{1/2}u\|_2^2\):
\[
H^{(k)}=\tfrac12\sum_{a=0}^k\binom ka\langle\Lambda^{1/2}V_a,\Lambda^{1/2}V_{k-a}\rangle.
\]
The spatial column contains the increasing Sobolev heights of the velocity. The pressure-complete equation relates the three. With \(E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2\), its exact pairing is
\[
\partial_tE_{r,s}=\mathcal P_{r,s}+\mathcal W_{r,s}-2\nu E_{r,s+1},\qquad
\mathcal W_{r,s}=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\]
Here \(\mathcal P\) retains complete signed transport and pressure. Repeated differentiation and substitution expose higher spatial energies. At the critical height,
\[
H^{(k)}=(-2\nu)^kE_{k+1/2}
+\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}(\mathcal P_{j+1/2}+\mathcal W_{j+1/2}).
\]
The nonzero diagonal coefficient permits triangular recovery of \(R_k=E_{k+1/2}\). All differentiated currents remain in the recovered coordinate. A scalar smooth height without this graph is a different mathematical input.

There is also an adjacent-row reading of viscosity. Projection gives
\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n=\Lambda^s\mathbb P(F_n-B_n).
\]
Its square retains a positive temporal norm, a positive viscous norm, and the boundary derivative \(\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2\). The complementary projection is \(\nabla Q_n=(I-\mathbb P)(F_n-B_n)\). Orthogonality recombines both components into the complete source \(F_n-B_n\). Transport, pressure, viscosity, and forcing remain coordinates of one coupled equation.

Now suppose \(T_*<\infty\), put \(I=(0,T_*)\), and select finite temporal depth \(N\) and spatial height \(M\). The native datum construction retains the initial face, the full equation dependency cover, both projections, and the prescribed source when present. The source theorem supplies
\[
V_n\in L^2(I;H^{M+1}),\qquad V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N.
\]
The walkthrough includes the native theorem statement, its complete proof passage, and the domain dependencies through height exhaustion and recurrence return. Its whole-interval output is available before forming the finite norm
\[
\mathfrak R_{N,M}=\sum_{n=0}^N(\|V_n\|_{L^2H^{M+1}}^2+\|V_{n+1}\|_{L^2H^{M-1}}^2)<\infty.
\]
Restriction decreases these nonnegative integrals; monotone exhaustion identifies their strict-horizon supremum with their value on \(I\). Constants may depend on the finite pair. Enlarged records agree on every retained derivative of the original velocity and normalized pressure.

This compatible rectangle family has two exhaustive readings. Direct exhaustion of mixed indices gives
\[
\mathcal X_\infty(I)=\bigcap_{r,m\ge0}H^r(I;H^m_\sigma).
\]
The independently derived completed-height identities, evaluated on these coordinates, recover the full spatial column. The low-frequency \(L^2\) floor and the high-frequency heights yield every finite spatial Sobolev order. If a complete intersection or a completed height graph with its interval domains is supplied as an entry, it is usable at that entry: the direct intersection does not require a second finite-norm generator, and the height route does not become a prerequisite for direct exhaustion.

The return from the spatial column uses the equation itself. At target order \(m\), the available \(m+2\) spatial order puts diffusion and the full transport in \(L^1(I;H^m)\). The prescribed force belongs there too. Integration gives \(u\in C([0,T_*];H^m)\). The pressure and velocity recurrences then recover each next temporal row continuously at every finite spatial order, with the identity \(V_n(t)-V_n(s)=\int_s^tV_{n+1}\). This supplies the mixed intersection and genuine endpoint derivatives.

For the endpoint, the adjacent trace operation sends \(L^2H^{m+1}\) and its derivative in \(L^2H^{m-1}\) into \(C H^m\). The representatives agree under Sobolev restriction and define one \(u_*\in H^\infty_\sigma\), with compatible velocity, pressure, and mixed jets. Passing the normalized recurrence to \(T_*\) determines the complete incoming jet from \(u_*\) and \(F_n(T_*)\). Quantitative local theory supplies a smooth outgoing solution. Uniqueness on a late incoming overlap identifies an actual common history, and recurrence induction matches every outgoing jet. This extends the original history past a finite maximal time, giving the source's contradiction and global conclusion.

Every finite estimate is read from a rectangle containing its required orders. The author gives \(N=0,M=1\) as an explicit example: its \(L^2H^2\) velocity and \(L^2L^2\) time derivative control the \(H^1\) trace, the \(L^\infty_tL^3_x\) bound, the \(L^2_tL^\infty_x\) bound, and the \(L^2_tL^3_x\) gradient bound. Higher rectangles give higher derivatives and finite accumulated velocity gradient. These are consequences of the available family.

The application branch keeps additional inputs visible. Eulerian and material derivatives are related with their commutators retained. An external localized candidate has a full residual, including every cutoff and pressure term; its admission uses stated external jet bounds before a smooth prescribed force extension is formed. In its exact exterior, four large momentum terms cancel. A positive square norm over a shrinking annulus can still diverge. Strict-interval uniqueness identifies an admissible candidate with the regular solution for identical datum, viscosity, force, and spatial domain, after which the regular solution's rectangle bounds apply. A separate conservative-force test asks whether the candidate force can be absorbed into pressure; the projected cutoff force provides its own obstruction.

## Interact with this proof

Read the replay below directly in a text-only AI. With tools, run `python3 NS.proof.pyz` or append a question with `ask`. Every expanded view retains the whole-proof frame and branch scope. `author` opens the complete authorial explanation; `all` opens the technical argument; `source` exposes retained original bytes through a vocabulary-adjusted display. The executable also has an optional MCP interface via `serve`.

## Whole-proof frame

One pressure-complete Navier–Stokes history per branch: unforced data \((u_0,\nu)\); forced data \((u_0,\nu,f)\) with prescribed smooth Schwartz force retained through restart. \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\), \(J_{n,\alpha}=\partial_x^\alpha V_n\). Derivative indices leave \(x,t\) free.

The author's movement is vortex concentration → scaling and critical height → complete temporal/spatial jet → viscous relations between velocity, height, and spatial columns → compatible finite rectangles → two exhaustive readings → common endpoint → local continuation of the original history.

For proposed finite \(T_*\), \(I=(0,T_*)\). The native theorem states that its datum construction produces the original whole-terminal jet with whole-\(I\) adjacent rows \(V_n\in L^2H^{M+1}\), \(V_{n+1}\in L^2H^{M-1}\) at each finite \(N,M\). Their finite squared-norm sum is an output. Each finite constant can depend on its selected orders.

Available entries: the native datum construction; an already established complete mixed intersection; or a completed critical-height graph with its actual interval domains and kinetic \(L^2\) floor. Direct mixed exhaustion and completed-height/spatial recovery are independent readings of one compatible family. Height currents keep transport, pressure and force work. Spatial-to-mixed reconstruction consumes the full spatial interval column and the original equation.

Adjacent traces give one smooth endpoint; normalized recurrences fix all incoming jets. Local existence, overlap uniqueness and matching jets continue that original history. Forced pressure includes \(-(-\Delta)^{-1}\operatorname{div}f\).

Applications retain their extra domains: material conversion includes commutators; localized candidate admission needs the complete residual and stated external inputs; exterior residual cancellation and positive norm divergence can coexist; uniqueness needs identical prescribed data. A separate projected-force test governs pressure absorption.

The native domain assertion, interval-preserving finite selection, independent height identities, integrated-height proof, and recurrence return are shown with their source dependencies. The height integrability calculation in this route uses the native block; return from a completed spatial column retains that whole-interval input. No additional generator follows finite selection.

## Construction, domains and source dependencies

Fix one original history and \(I=(0,T_*)\). Whole-interval membership means that each selected defining integral over I is finite. It requires no common constant across all derivative orders. Fields defined at every interior time and fields with finite norms over I are distinct assertions.

**Initial and evolving rows.** The initial recurrences construct the full initial jet from \((u_0,\nu)\), or \((u_0,\nu,f)\). Local iteration and uniqueness construct one maximal history. Differentiation identifies its actual mixed rows and their complete equations on every strict classical interval. The displayed local iteration gives a positive interval depending on the current \(H^3\) datum and the prescribed force. [revision:u-setting:afb54c1cdd30:399–443,498–561; today:f-setting:432–481,548–629; u-analysis:671–694; f-analysis:680–717]

**Independently derived height coordinates.** Put \(C_s=\mathcal P_s+\mathcal W_s\), with \(\mathcal W_s=0\) unforced. Pairing the original equation gives
\[
E_s'=C_s-2\nu E_{s+1},
\qquad
R_k=\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{j+1/2}}
{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2.
\]
This identity is obtained by differentiation and substitution, retaining every transport, pressure and force-work term. Its derivation does not use finite rectangle norms. The identity and the assertion \(R_k\in L^1(I)\) have different roles. [u-relations:90–169; f-relations:103–187]

**The native whole-interval constructor.** Its output carries, for each finite N,M,
\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N.
\]
The constructor starts from the original datum, fixed viscosity and original prescribed force when present. It retains the evolving velocity, normalized pressure, complete mixed equations and their Sobolev domains on I. Its finite Sobolev graphs, restriction maps and compatible limit are expanded at each construction passage. The native theorem supplies this constructed family; the complete original theorem and proof bodies accompany that use. [revision:u-setting:afb54c1cdd30:454–623; today:f-setting:487–673]

**Finite selection and direct mixed exhaustion.** A finite selection of a jet carrying these domains preserves I, the fields, their weak derivative identities and normalized pressure. Its norm is the finite sum of those defining integrals. Restriction decreases the integrals, and monotone convergence identifies their supremum with the whole-I value. For fixed r,m, selecting enough rows gives
\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^{r}\|V_n\|_{L^2(I;H^m)}^2.
\]
No membership-generating operation follows that selection. A complete mixed intersection is also a direct entry from which finite rows can be selected. [u-relations:207–313; today:f-setting:681–708,747–791; f-relations:392–440]

**Integrated heights and spatial exhaustion.** The source obtains the height integral using the native finite block:
\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}^*.
\]
It then splits Fourier space into low and high frequencies to obtain
\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\bigl(\|u\|_{L^2(I;L^2)}^2
+2\|R_m\|_{L^1(I)}\bigr).
\]
Kinetic energy controls the first term, including prescribed source work in the forced branch. The native block controls the second term in this source route. An already integrated complete height graph can instead supply that term directly. [u-relations:315–392; f-relations:442–505]

**Return through the recurrence.** Starting with the complete spatial interval column, products and diffusion give \(u_t\in L^1(I;H^m)\), hence a continuous \(H^m\) representative up to the endpoint. With \(M_{n,m}=\sup_{[0,T_*]}\|V_n\|_{H^m}\), the recurrence gives the finite bound
\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m\sum_{a=0}^{n}\binom naM_{a,m+2}M_{n-a,m+2}
+\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\]
All velocity factors on the right have temporal order at most n. The normalized pressure formula recovers Q_n; every F_n vanishes unforced. Finite interval length converts these continuous rows into the mixed Sobolev intersection. Thus the return is a genuine construction from the whole-I spatial column, with that column retained as its input. [revision:u-setting:afb54c1cdd30:668–758; f-relations:508–570]

The native whole-I blocks feed both readings: direct mixed exhaustion, and completed heights → spatial Sobolev column → recurrence return. The height identities arise by differentiating the original energy rows; their evaluation on the constructed family retains its full interval and defining integrals. Both readings agree on every velocity and pressure coordinate. The displayed Sobolev graphs and projection maps make this assembly explicit.

**The complete positive square retains transport.** In the forced branch its integrated right side contains \(\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt\), with F_n=0 unforced. The source bounds the nonlinear factors using the available velocity rectangle; the prescribed force contribution has its own finite budget. The complete square keeps its boundary values and transport-force source; the stated product bounds evaluate that source on the retained finite graph. [f-relations:189–382]

Once the relevant whole-I rows are available, compatible traces, normalized endpoint recurrences, local restart and overlap uniqueness continue the original history. The original future force remains attached throughout the forced branch.


The supplied author draft and material refinement are retained below. The independent material-energy entry takes a finite acceleration budget as its input. At the native entry, R0,1 supplies that budget through the explicit trace and embedding calculation. The two entries retain their respective inputs and uses.

## Begin from the mathematical object available

Choose the entry matching the object already supplied. Its equations are immediately usable. Read its ordered operations in the complete transition bodies below; a completed column requires no repeated native construction.

### Unforced — Start from the datum

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- Unforced branch: f, F_n, force potentials and force work vanish.
- Smooth divergence-free finite-energy initial velocity; its initial jet is constructed within the first operation.

Begin from (u_0,nu) and the original maximal pressure-normalized history. The native step below constructs initial rows and governing relationships, displays its claimed whole-I domain output beside the source proof, and follows the height-exhaustion and recurrence-return dependencies. Finite selection preserves established domains and adds no second generating obligation. The later trace and restart calculations retain their stated whole-I inputs. The native entry assumes no material-acceleration budget. Once its R0,1 output is available, trace and embedding supply that budget as a readout; the independent material-energy entry is optional.

**Continue through these operations**

1. **Unforced constructed jet, finite readouts and continuation** — Follow the native source construction, its domain assertion, both exhaustions and the recurrence return. Output: Native stated whole-I adjacent-row output with its exact proof passage; explicit domain dependencies through finite selection, integrated heights and recurrence return.
2. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
3. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
4. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation.

Tool entry: `python3 NS.proof.pyz work --branch unforced --entry datum`.

### Unforced — Use a completed mixed column

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- Unforced branch: f, F_n, force potentials and force work vanish.
- The actual history is supplied in every H^r(I;H^m), with all finite mixed interval orders.

Fix the original pressure-normalized history on \(I=(0,T_*)\), with proposed finite \(T_*\). A derivative index leaves \((t,x)\) free. The operations below retain that history and their stated whole-interval domains. The source outputs listed after an operation are available to its consumers under this entry; their display does not certify a reader's understanding.

The completed mixed interval column is already available:
\[
u\in\mathscr X_\infty(I):=\bigcap_{r,m\ge0}H^r(I;H^m_\sigma).
\]
Select \(u\in H^1(I;H^2)\), and write
\[
A=\|u\|_{L^2(I;H^2)}^2,\quad B=\|u_t\|_{L^2(I;L^2)}^2.
\]
The finite readout is \(\mathfrak R_{0,1}=A+B\le\|u\|_{H^1(I;H^2)}^2\). Its adjacent trace satisfies
\[
\sup_{0\le t\le T_*}\|u(t)\|_{H^1}^2
\le\|u_0\|_{H^1}^2+2\sqrt{AB}.
\]
These calculations use the supplied column now. The following operations carry every needed row to compatible endpoints and restart. [u-analysis:330–374; finite-readout]

**Continue through these operations**

1. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
2. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
3. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation.

Tool entry: `python3 NS.proof.pyz work --branch unforced --entry mixed`.

### Unforced — Use a completed spatial column

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- Unforced branch: f, F_n, force potentials and force work vanish.
- The actual history is supplied in every L^2(I;H^m); the original equation supplies the temporal reconstruction.

Fix the original pressure-normalized history on \(I=(0,T_*)\), with proposed finite \(T_*\). A derivative index leaves \((t,x)\) free. The operations below retain that history and their stated whole-interval domains. The source outputs listed after an operation are available to its consumers under this entry; their display does not certify a reader's understanding.

The complete spatial interval column is already available:
\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma).
\]
Use the original projected equation at each fixed target order:
\[
\|u_t\|_{L^1H^m}\le\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
+C_m\|u\|_{L^2H^{m+2}}^2+\|\mathbb Pf\|_{L^1H^m}.
\]
The last term vanishes in the unforced branch. Banach integration gives continuous velocity rows. The full recurrence then constructs genuine temporal derivatives and normalized pressure rows. This consumes the supplied spatial column; no completed-height construction is required at this entry. [f-relations:508–570; spatial-return]

**Continue through these operations**

1. **The original equation reconstructs all temporal rows from the spatial column** — Construct actual mixed rows from the supplied spatial column. Output: Continuous temporal and normalized pressure rows of the original history; full mixed interval intersection.
2. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
3. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
4. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation.

Tool entry: `python3 NS.proof.pyz work --branch unforced --entry spatial`.

### Unforced — Use completed integrated heights

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- Unforced branch: f, F_n, force potentials and force work vanish.
- Every completed R_k is supplied in L^1(I), with its full current coordinates and finite-energy floor.

Fix the original pressure-normalized history on \(I=(0,T_*)\), with proposed finite \(T_*\). A derivative index leaves \((t,x)\) free. The operations below retain that history and their stated whole-interval domains. The source outputs listed after an operation are available to its consumers under this entry; their display does not certify a reader's understanding.

The completed integrated height graph is already available, including all transport, pressure and force-work coordinates:
\[
R_k=\frac{H^{(k)}-\sum_{j<k}(-2\nu)^j\partial_t^{k-1-j}(\mathcal P_{j+1/2}+\mathcal W_{j+1/2})}{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2\in L^1(I).
\]
Together with the finite-energy floor, Fourier splitting gives
\[
\|u\|_{L^2H^m}^2\le2^m\bigl(\|u\|_{L^2L^2}^2+2\|R_m\|_{L^1}\bigr).
\]
This produces the spatial interval column. The following original-equation reconstruction gives the actual temporal and normalized pressure rows. Pointwise smoothness of a scalar height is a different input from this completed integrated graph. [spatial-heights; spatial-return]

**Continue through these operations**

1. **Completed heights recover every spatial Sobolev row** — Read completed heights into spatial rows. Output: Every finite whole-I spatial Sobolev row.
2. **The original equation reconstructs all temporal rows from the spatial column** — Construct actual mixed rows from the supplied spatial column. Output: Continuous temporal and normalized pressure rows of the original history; full mixed interval intersection.
3. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
4. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
5. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation.

Tool entry: `python3 NS.proof.pyz work --branch unforced --entry height`.

### Prescribed-force — Start from the datum

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- The entire original prescribed f in C-infinity([0,infinity);Schwartz), every F_n, source pressure potential and original future force.
- Smooth divergence-free finite-energy initial velocity; its initial jet is constructed within the first operation.

Begin from (u_0,nu,f), retaining the entire prescribed force and the original maximal pressure-normalized history. The native step below constructs initial rows and governing relationships, displays its claimed whole-I domain output beside the source proof, and follows the height-exhaustion and recurrence-return dependencies. Finite selection preserves established domains and adds no second generating obligation. The later trace and restart calculations retain their stated whole-I inputs. The native entry assumes no material-acceleration budget. Once its R0,1 output is available, trace and embedding supply that budget as a readout; the independent material-energy entry is optional.

**Continue through these operations**

1. **Prescribed-force constructed jet, finite readouts and continuation** — Follow the native source construction, its domain assertion, both exhaustions and the recurrence return. Output: Native stated whole-I adjacent-row output with its exact proof passage; explicit domain dependencies through finite selection, integrated heights and recurrence return.
2. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
3. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
4. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation. Restart uses the original future f(t); a terminal force jet alone does not select that future.

Tool entry: `python3 NS.proof.pyz work --branch forced --entry datum`.

### Prescribed-force — Use a completed mixed column

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- The entire original prescribed f in C-infinity([0,infinity);Schwartz), every F_n, source pressure potential and original future force.
- The actual history is supplied in every H^r(I;H^m), with all finite mixed interval orders.

Fix the original pressure-normalized history on \(I=(0,T_*)\), with proposed finite \(T_*\). A derivative index leaves \((t,x)\) free. The operations below retain that history and their stated whole-interval domains. The source outputs listed after an operation are available to its consumers under this entry; their display does not certify a reader's understanding.

The completed mixed interval column is already available:
\[
u\in\mathscr X_\infty(I):=\bigcap_{r,m\ge0}H^r(I;H^m_\sigma).
\]
Select \(u\in H^1(I;H^2)\), and write
\[
A=\|u\|_{L^2(I;H^2)}^2,\quad B=\|u_t\|_{L^2(I;L^2)}^2.
\]
The finite readout is \(\mathfrak R_{0,1}=A+B\le\|u\|_{H^1(I;H^2)}^2\). Its adjacent trace satisfies
\[
\sup_{0\le t\le T_*}\|u(t)\|_{H^1}^2
\le\|u_0\|_{H^1}^2+2\sqrt{AB}.
\]
These calculations use the supplied column now. The following operations carry every needed row to compatible endpoints and restart. [u-analysis:330–374; finite-readout]

**Continue through these operations**

1. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
2. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
3. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation. Restart uses the original future f(t); a terminal force jet alone does not select that future.

Tool entry: `python3 NS.proof.pyz work --branch forced --entry mixed`.

### Prescribed-force — Use a completed spatial column

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- The entire original prescribed f in C-infinity([0,infinity);Schwartz), every F_n, source pressure potential and original future force.
- The actual history is supplied in every L^2(I;H^m); the original equation supplies the temporal reconstruction.

Fix the original pressure-normalized history on \(I=(0,T_*)\), with proposed finite \(T_*\). A derivative index leaves \((t,x)\) free. The operations below retain that history and their stated whole-interval domains. The source outputs listed after an operation are available to its consumers under this entry; their display does not certify a reader's understanding.

The complete spatial interval column is already available:
\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma).
\]
Use the original projected equation at each fixed target order:
\[
\|u_t\|_{L^1H^m}\le\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
+C_m\|u\|_{L^2H^{m+2}}^2+\|\mathbb Pf\|_{L^1H^m}.
\]
The last term vanishes in the unforced branch. Banach integration gives continuous velocity rows. The full recurrence then constructs genuine temporal derivatives and normalized pressure rows. This consumes the supplied spatial column; no completed-height construction is required at this entry. [f-relations:508–570; spatial-return]

**Continue through these operations**

1. **The original equation reconstructs all temporal rows from the spatial column** — Construct actual mixed rows from the supplied spatial column. Output: Continuous temporal and normalized pressure rows of the original history; full mixed interval intersection.
2. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
3. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
4. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation. Restart uses the original future f(t); a terminal force jet alone does not select that future.

Tool entry: `python3 NS.proof.pyz work --branch forced --entry spatial`.

### Prescribed-force — Use completed integrated heights

**Available at entry**

- One original pressure-complete history; fixed positive viscosity; I=(0,T_*) with proposed finite T_*.
- The entire original prescribed f in C-infinity([0,infinity);Schwartz), every F_n, source pressure potential and original future force.
- Every completed R_k is supplied in L^1(I), with its full current coordinates and finite-energy floor.

Fix the original pressure-normalized history on \(I=(0,T_*)\), with proposed finite \(T_*\). A derivative index leaves \((t,x)\) free. The operations below retain that history and their stated whole-interval domains. The source outputs listed after an operation are available to its consumers under this entry; their display does not certify a reader's understanding.

The completed integrated height graph is already available, including all transport, pressure and force-work coordinates:
\[
R_k=\frac{H^{(k)}-\sum_{j<k}(-2\nu)^j\partial_t^{k-1-j}(\mathcal P_{j+1/2}+\mathcal W_{j+1/2})}{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2\in L^1(I).
\]
Together with the finite-energy floor, Fourier splitting gives
\[
\|u\|_{L^2H^m}^2\le2^m\bigl(\|u\|_{L^2L^2}^2+2\|R_m\|_{L^1}\bigr).
\]
This produces the spatial interval column. The following original-equation reconstruction gives the actual temporal and normalized pressure rows. Pointwise smoothness of a scalar height is a different input from this completed integrated graph. [spatial-heights; spatial-return]

**Continue through these operations**

1. **Completed heights recover every spatial Sobolev row** — Read completed heights into spatial rows. Output: Every finite whole-I spatial Sobolev row.
2. **The original equation reconstructs all temporal rows from the spatial column** — Construct actual mixed rows from the supplied spatial column. Output: Continuous temporal and normalized pressure rows of the original history; full mixed interval intersection.
3. **Finite projection, monotone norms and direct mixed exhaustion** — Use finite coordinates and their adjacent trace. Output: Finite selected norm, its strict-horizon supremum and every required trace coordinate.
4. **One endpoint, complete incoming velocity jet and normalized pressure jet** — Assemble the compatible incoming endpoint. Output: One smooth endpoint with compatible incoming velocity and normalized pressure jets.
5. **Local realization, overlap uniqueness, jet matching and continuation** — Continue the original history. Output: Local endpoint restart, overlapping history by uniqueness and smooth jet-matched continuation. Restart uses the original future f(t); a terminal force jet alone does not select that future.

Tool entry: `python3 NS.proof.pyz work --branch forced --entry height`.

## One original fluid, its scale and normalized pressure

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- A divergence-free all-order finite-energy datum and positive viscosity; prescribe the full force in the forced branch.

The author opens with the vortex because it makes the possible finite-time loss concrete: stretching, narrowing and viscous spreading happen together. Under the equation's scaling each momentum term has degree three, energy has degree minus one, and the homogeneous Sobolev norm has degree \(s-1/2\). Critical height records scale without changing its weight. The geometric series of rescaled durations describes the proposed finite-time cascade.

For the unforced branch fix
\[
u_0\in H^\infty_\sigma(\mathbb R^3),\qquad
H^\infty=\bigcap_{m\ge0}H^m,\qquad \nu>0.
\]
The generated maximal pressure-complete history is \((T_*,u,p)\), with
\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,\quad
\nabla\cdot u=0,\quad u(0)=u_0,\quad p=R_iR_j(u_i u_j).
\]
The \(L^2\) pressure normalization is unique: a pressure difference has Fourier support at zero and belongs to \(L^2\), so it vanishes. [u-setting:4-86]

For the forced branch prescribe the complete triple
\[
(u_0,\nu,f),\qquad
f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3)).
\]
Its velocity solves the equation with \(+f\) on the right. Its normalized pressure is
\[
p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\cdot f.
\]
Every coordinate belongs to this forced history; restart retains the original future \(f(t)\). [f-native:20-107]

The independent variables remain \(x,t\); derivative indices do not advance time or evaluate variables. All columns describe one fluid per branch. Material conversion retains commutators. The direct intersection and height-relationship constructions remain independent entries, without a universal prerequisite between them. [contract:46-82]

**Available outputs**

- A fixed maximal pressure-complete history for each chosen branch; a normalized pressure tied to that history.

**Exact sources**: u-setting:4-86; u-setting:4-50; f-native:50-107; manuscript:parts/unforced/00-how-proof-works.tex:34-111; manuscript:parts/forced/00-how-proof-works.tex:5-39

## Finite-order multiplication, pressure potentials and adjacent traces

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- The normalized history and the finite Sobolev orders needed by a selected operation.

Write \(\Lambda=(-\Delta)^{1/2}\), \(A=(I-\Delta)^{1/2}\), and \(\|v\|_{H^s}=\|A^sv\|_2\). Fourier Cauchy–Schwarz proves \(H^s\hookrightarrow C^k\) for \(s>k+3/2\). Weighted convolution and Young's inequality give the finite-order multiplication bounds. Riesz transforms and the Leray projection are bounded Fourier multipliers commuting with spatial derivatives. [u-analysis:63-101,167-312]

The pressure multiplier in the forced branch includes \(\Phi=(-\Delta)^{-1}\nabla\cdot F\). Split its Fourier norm at \(|\xi|=1\). At low frequencies \(|\widehat F|\le c\|F\|_{L^1}\), and the squared potential multiplier has the locally integrable radial weight \(|\xi|^{-2}\) in three dimensions. At high frequencies its order is \(-1\), controlled by a finite Sobolev norm. The displayed source lemma bounds its \(H^m\) norm using \(\|F\|_{L^1}+\|F\|_{H^m}\), including continuity for smooth Schwartz-valued force jets. Retaining the high-frequency order \(-1\) in this Fourier split also gives the sharper \(L^1+H^{m-1}\) estimate as an additional algebraic deduction. [f-analysis:256-324]

The adjacent trace operation starts with
\[
v\in L^2(0,T;H^{m+1}),\qquad
v_t\in L^2(0,T;H^{m-1}),\qquad 0<T<\infty.
\]
For a Fourier truncation \(v_R\),
\[
\frac d{dt}\|v_R\|_{H^m}^2
=2\operatorname{Re}\langle A^{m-1}(v_R)_t,A^{m+1}v_R\rangle.
\]
Integration and Cauchy–Schwarz give the norm variation bound. Apply it to differences of truncations, with one Lebesgue time supplying the initial Cauchy value, to obtain convergence in \(C([0,T];H^m)\). The result is a unique continuous representative and
\[
\sup_{[0,T]}\|v\|_{H^m}^2
\le T^{-1}\|v\|_{L^2H^m}^2
+2\|v_t\|_{L^2H^{m-1}}\|v\|_{L^2H^{m+1}}.
\]
This operation consumes adjacent interval memberships and is later used for each finite mixed row and for the endpoint. [u-analysis:330-374; f-analysis:342-386]

**Available outputs**

- Finite multiplication and multiplier bounds; force-potential bounds; the adjacent trace map into C([0,T];H^m).

**Exact sources**: u-analysis:63-101; u-analysis:167-312; f-analysis:256-324; u-analysis:330-374; f-analysis:342-386

## Generate the initial face and the complete mixed equation

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- The original normalized momentum equation.
- Differentiation, multiplication and Riesz bounds at every selected finite order.

The displayed momentum and initial-face formulas below are the unforced rows. For a prescribed source add \(F_{n,\alpha}\) to the mixed momentum equation, subtract \((-\Delta)^{-1}\operatorname{div}F_{n,\alpha}\) from each pressure row, add \(F_n(0)\) to the initial velocity recurrence and retain its pressure potential in \(P_n\). The differentiation and dependency cover otherwise act on the original forced fields. The full forced calculation is expanded in `forced-native`.

Define
\[
V_n=\partial_t^nu,\quad Q_n=\partial_t^np,\quad
J_{n,\alpha}=\partial_x^\alpha V_n,\quad
\Pi_{n,\alpha}=\partial_x^\alpha Q_n.
\]
Differentiate the momentum and pressure equations with the full temporal and spatial Leibniz rules:
\[
\begin{aligned}
J_{n+1,\alpha}
&+\sum_{b=0}^n\sum_{\beta\le\alpha}
\binom nb\binom\alpha\beta
(J_{b,\beta}\cdot\nabla)J_{n-b,\alpha-\beta}
+\nabla\Pi_{n,\alpha}
=\nu\Delta J_{n,\alpha},\\
\Pi_{n,\alpha}
&=R_iR_j\sum_{b=0}^n\sum_{\beta\le\alpha}
\binom nb\binom\alpha\beta
J_{b,\beta,i}J_{n-b,\alpha-\beta,j},\qquad
\nabla\cdot J_{n,\alpha}=0.
\end{aligned}
\]
Every coordinate is an actual derivative of the original history. The pure temporal recurrence is obtained by setting \(\alpha=0\). The source proves these identities by differentiating the original equations and commuting the fixed multipliers. Their first domain is each strict classical interval. [u-setting:89-157]

Evaluation at zero recursively fixes the initial face:
\[
A_0=u_0,\quad
P_n=R_iR_j\sum_{b=0}^n\binom nb(A_b)_i(A_{n-b})_j,
\]
\[
A_{n+1}=\nu\Delta A_n
-\sum_{b=0}^n\binom nb(A_b\cdot\nabla)A_{n-b}-\nabla P_n.
\]
At step \(n\), only already determined rows enter. Differentiation, Sobolev multiplication, and the Riesz bounds preserve \(H^\infty\), so every finite initial row is available at every requested finite spatial order. Spatial differentiation supplies \(J_{n,\alpha}(0)\) and \(\Pi_{n,\alpha}(0)\). [u-setting:209-258,456-476]

Each selected equation retains its adjacent temporal entry, three viscous successors \(J_{n,\alpha+2e_\ell}\), pressure gradients, and all transport/pressure-product factors. Applying \(\mathbb P\) and \(I-\mathbb P\) reads evolution and pressure. This is a finite cover of original-history coordinates. [u-setting:478-519]

**Available outputs**

- Triangular initial velocity/pressure jet; actual mixed derivative coordinates; complete finite equation dependency cover.

**Exact sources**: u-setting:209-258; u-setting:456-476; u-setting:89-157; contract:46-77; u-setting:478-519; today:u-setting:447-510

## Viscous row, positive square and pressure recombination

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- Actual temporal rows and their normalized pressure equation.

The viscous correspondence concerns actual vector rows before taking their energy. Let \(B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}\). Projection of the complete momentum row and \(\Delta=-\Lambda^2\) give
\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n=\Lambda^s\mathbb P(F_n-B_n).
\]
Its squared norm is
\[
\|\Lambda^sV_{n+1}\|_2^2+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s\mathbb P(F_n-B_n)\|_2^2.
\]
The cross term has this sign because \(V_{n+1}=\partial_tV_n\). It is the derivative of the adjacent spatial norm. The complementary equation gives
\[
\nabla Q_n=(I-\mathbb P)(F_n-B_n),
\]
so orthogonality yields
\[
\|\Lambda^s\mathbb P(F_n-B_n)\|_2^2+\|\Lambda^s\nabla Q_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\]
In the unforced branch set every \(F_n=0\). These identities retain the nonlinear face, the pressure face and the positive temporal/viscous faces together. Integrating a selected row also retains its boundary term. The scalar energy reading below is a contraction of these original fields.

The authored forced opening gives this calculation as equations (B)–(D); its next calculation gives the completed-height reading as (E). Both are evaluated on the selected finite record. They provide relationships among its coordinates rather than a new independently chosen fluid.

### Complete binomial cancellation

For divergence-free \(a\), put
\[
T(a,b,c)=\int (a\cdot\nabla)b\cdot c\,dx.
\]
Integration by parts gives \(T(a,b,c)=-T(a,c,b)\). Differentiating the kinetic transport pairing k times retains the complete allocation
\[
\sum_{a+b+c=k}\frac{k!}{a!b!c!}
\int (V_a\cdot\nabla)V_b\cdot V_c\,dx=0.
\]
For each a, exchanging b,c preserves the coefficient and reverses the sign. Every pressure pairing vanishes by the retained divergence identities. Thus the complete row gives
\[
\partial_t^{k+1}\!\left(\tfrac12\|u\|_2^2\right)
+\nu\partial_t^k\|\nabla u\|_2^2
=\partial_t^k\langle u,f\rangle.
\]
All source derivatives remain in the forced branch; set f=0 unforced. The contracted quadratic coordinate is
\[
\partial_t^k\!\left(\tfrac12\|u\|_2^2\right)
=\tfrac12\sum_{a=0}^k\binom ka\langle V_a,V_{k-a}\rangle.
\]
At k=2 it is \(\|V_1\|_2^2+\langle u,V_2\rangle\): the central square comes with its actual crossed pairing. The positive diagonal faces are read through the squared-row identity above, retaining its full transport-force source. This calculation keeps the original fields throughout. [u-relations:14–46,54–147; f-relations:13–60,68–163]


**Available outputs**

- Exact projected adjacent-row identity, its positive square with boundary derivative, and orthogonal pressure recombination.

**Exact sources**: manuscript:parts/forced/00-how-proof-works.tex:114-146; manuscript:parts/unforced/00-how-proof-works.tex:287-294

## Velocity, critical-height and spatial columns

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- The complete original mixed jet and its actual derivative identities.
- The full momentum equation can be paired at each selected spatial order, retaining signed transport, pressure and force work. This pairing is performed here; the adjacent-row square is an independent calculation.

Put
\[
E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\qquad H=E_{0,1/2}.
\]
Quadratic differentiation gives the velocity-to-height contraction
\[
H^{(k)}=\tfrac12\sum_{b=0}^k\binom kb
\langle\Lambda^{1/2}V_b,\Lambda^{1/2}V_{k-b}\rangle.
\]
This uses every split through \(k\); scalar \(H^{(k)}\) is not a replacement for the full vector row. [u-relations:54-88]

Define the complete signed transfer
\[
\mathcal P_{r,s}
=-\operatorname{Re}\left\langle\Lambda^sV_r,
\Lambda^s\left(\sum_{b=0}^r\binom rb(V_b\cdot\nabla)V_{r-b}
+\nabla Q_r\right)\right\rangle.
\]
Pair the complete temporal recurrence with \(\Lambda^{2s}V_r\). The viscous pairing is exactly \(-2\nu E_{r,s+1}\), giving
\[
\partial_tE_{r,s}=\mathcal P_{r,s}-2\nu E_{r,s+1}.
\]
Differentiate, substitute the next spatial-energy identity, and induct on \(k\):
\[
\partial_t^kE_{r,s}
=(-2\nu)^kE_{r,s+k}
+\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}\mathcal P_{r,s+j}.
\]
For \(r=0,s=1/2\), division by \((-2\nu)^k\) reconstructs
\[
R_k:=
\frac{H^{(k)}-\sum_{j=0}^{k-1}(-2\nu)^j
\partial_t^{k-1-j}\mathcal P_{j+1/2}}{(-2\nu)^k}
=E_{k+1/2}.
\]
These are triangular identities with all differentiated currents retained. They are derived on strict intervals and give the relationship rows that can be collected into compatible finite rectangles of identities. [u-relations:90-169; contract:58-82]

Each complete column has its own intersection implication. Spatially,
\[
L^2_x\cap\bigcap_{k\ge0}\dot H_x^{k+1/2}
=\bigcap_{m\ge0}H_x^m\hookrightarrow C^\infty_x.
\]
The \(L^2\) coordinate controls low frequencies, and arbitrarily high half-integer weights control every finite integer weight. Temporally,
\[
\bigcap_{r\ge0}H^r(I)\hookrightarrow C^\infty_t(I),\qquad
\bigcap_{r\ge0}H^r(I;H^m)\hookrightarrow C^\infty_t(I;H^m).
\]
Choosing temporal and spatial exponents above each requested derivative order gives the mixed implication. The intersection keeps every finite membership; it introduces no sum across infinitely many orders. [u-spine:345-458]

For the admitted history, the completed graph has the exact integrated correspondence
\[
\int_I R_k=\tfrac12\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2.
\]
Thus every \(R_k\in L^1(I)\), with the finite-energy \(L^2(I;L^2)\) floor, is equivalent to the full spatial \(L^2\) intersection. This uses the completed graph, including its currents. Scalar temporal smoothness of \(H\) alone is a different input. [u-spine:406-422]

For the forced history replace each signed current \(\mathcal P_{r,s}\) in these energy substitutions by \(\mathcal P_{r,s}+\mathcal W_{r,s}\), where \(\mathcal W_{r,s}=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle\). Every temporal derivative distributes through this source-work term too. The nonzero viscous diagonal, velocity-height contraction, column embeddings and integrated spatial correspondence keep their displayed forms for this forced history.

### Integrate the completed ladder with its boundary currents

Write \(c=-2\nu\), \(R_j=E_{0,j+1/2}\), and \(C_j=\mathcal P_{0,j+1/2}+\mathcal W_{0,j+1/2}\), with every \(\mathcal W=0\) unforced. The displayed ladder says
\[
H^{(k)}=c^kR_k+\sum_{j=0}^{k-1}c^jC_j^{(k-1-j)}.
\]
For k at least one define the full endpoint current
\[
A_k=H^{(k-1)}-\sum_{j=0}^{k-2}c^jC_j^{(k-2-j)}
=c^{k-1}R_{k-1}.
\]
The sum is empty at k=1. Integrating the preceding order-k identity on \((0,S)\), \(S<T_*\), gives
\[
c^k\int_0^S R_k\,dt
=[A_k]_0^S-c^{k-1}\int_0^S C_{k-1}\,dt.
\]
Divide by \(c^{k-1}\) and retain both endpoints:
\[
2\nu\int_0^S R_k\,dt
=R_{k-1}(0)-R_{k-1}(S)
+\int_0^S C_{k-1}\,dt.
\]
All differentiated transfer and force currents have telescoped into the adjacent energy and its full accumulated work. This is the integrated native ladder, evaluated on the original history. Its passage to the whole interval retains that coupled budget. On an available native whole-I block the memberships are already carried by the fields; finite selection adds no separate estimate. These identities expand the operation without changing that domain account. [u-relations:90–169; f-relations:103–184]


**Available outputs**

- Quadratic velocity-to-height contraction; exact triangular recovery R_k=E_{k+1/2}; each column's own all-order embedding and domain.

**Exact sources**: u-relations:54-169; contract:58-82; u-spine:345-458; manuscript:parts/unforced/00-how-proof-works.tex:176-264; manuscript:parts/forced/00-how-proof-works.tex:153-192

## Unforced constructed jet, finite readouts and continuation

Branch: unforced

Fix \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\), and its maximal unforced history. Pressure is \(R_iR_j(u_i u_j)\). At proposed finite \(T_*\), the native datum theorem produces finite whole-interval adjacent rows. Their compatible family can be exhausted directly in mixed indices or read through independently derived completed heights and the spatial column. A supplied complete intersection is an independent usable entry. Trace, pressure recurrence, local restart and uniqueness continue the original history.

**Available inputs**

- Original datum-generated history at proposed finite T_*.
- Complete initial face and finite equation dependency cover.

### 1. Start with the prescribed fluid

Fix \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\). In the forced branch fix the entire original smooth-in-time, Schwartz-in-space source \(f\), including its future values. Set \(F_n=\partial_t^n f\) and \(\Phi_n=(-\Delta)^{-1}\nabla\cdot F_n\). In the unforced branch set \(f\) and every \(F_n,\Phi_n\) to zero.

Local realization and overlap uniqueness give one maximal pressure-normalized classical history \((T_*,u,p)\) on \([0,T_*)\times\mathbb R^3\). Its evolution is
\[
u(t)=u_0+\int_0^t[\nu\Delta u-(u\cdot\nabla)u-\nabla p+f](s)\,ds,
\qquad
p(t)=R_iR_j(u_i(t)u_j(t))-\Phi_0(t).
\]
The pressure operator uses the velocity throughout space, then evaluates its result at the spatial point under consideration. It retains the prescribed normalization, so no freely chosen function of time is added to pressure. The initial face and local evolution are distinct operations: the initial jet is calculated from \(u_0\) and \(F_n(0)\), while the evolving field uses the complete original \(f(t)\). No convergent Taylor series in time is assumed.

Sources: `author:u-how:e2c9bf4a1e04` 205–235; `author:f-how:f75f1c7c33b0` 5–21; `revision:u-setting:006d0d1f43f9` 403–429. The last source explicitly identifies local construction, overlap uniqueness, the maximal union, and strict-horizon regularity.

### 1a. Construct the actual evolving history

This is the evolving-history operation inside the native constructor. At the initial entry write \(a=u_0\in H^\infty_\sigma(\mathbb R^3)\); at a restart use its incoming velocity as \(a\). Fix \(\nu>0\), and put \(f=g=0\) in the unforced branch. In the forced branch the prescribed input is \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), with \(g=\mathbb P f\); every restart uses the translated original force \(r\mapsto f(s+r)\).

**1. Construct one velocity on a common base interval.** Let
\[
\begin{aligned}
C_q&=\sqrt3\,C_3^{\rm alg},\\
L_\nu&=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2},\\
c_\nu&=(8C_qL_\nu^2)^{-2}.
\end{aligned}
\]
At a restart time \(s\), set \(\Gamma_s=\|g\|_{L^2(s,s+1;H^2)}\) and \(B_s=\|a\|_{H^3}+\Gamma_s\). In the unforced branch \(\Gamma_s=0\). Choose
\[
0<\delta\le\min\{1,c_\nu(1+B_s)^{-2}\},\qquad R=2L_\nu B_s.
\]
After translating \(s\) to zero, use the Banach space
\[
X_\delta=C([0,\delta];H^3_\sigma)\cap L^2(0,\delta;H^4_\sigma),
\quad v_t\in L^2(0,\delta;H^2_\sigma),
\]
with norm equal to the sum of the three displayed norms. On its closed radius-\(R\) ball with trace \(a\), iterate the actual Duhamel map
\[
\begin{aligned}
\Phi(v)(t)={}&e^{\nu t\Delta}a
+\int_0^te^{\nu(t-r)\Delta}g(s+r)\,dr\\
&-\int_0^te^{\nu(t-r)\Delta}
\mathbb P\nabla\cdot(v\otimes v)(r)\,dr.
\end{aligned}
\]
Within the local estimates and recurrences below, \(f\) and \(g\) denote the shifted functions \(t\mapsto f(s+t)\) and \(t\mapsto g(s+t)\). Here \(t\) is elapsed local time. At the initial construction \(s=0\); after overlap identification, \(w(t)=u(s+t)\) and \(q(t)=p(s+t)\).
The source proves the linear estimate \(\|z\|_{X_\delta}\le L_\nu(\|a\|_{H^3}+\|F\|_{L^2H^2})\) for \(z_t-\nu\Delta z=F\), and
\[
\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}
\le C_q\|v\|_{H^3}\|z\|_{H^3}.
\]
Consequently \(\Phi\) preserves this ball and
\[
\|\Phi(v)-\Phi(z)\|_{X_\delta}
\le\frac{B_s}{2(1+B_s)}\|v-z\|_{X_\delta}
\le\tfrac12\|v-z\|_{X_\delta}.
\]
The forced linear trajectory supplies a member of the ball; when \(B_s=0\), the fixed point is zero. Iteration converges in \(X_\delta\) to an actual velocity \(w\), rather than constructing independent formal rows.

**2. Retain every spatial order on this chosen interval.** For \(m\ge3\), let \(S_k\) be restriction of the Fourier transform to \(|\xi|\le k\), and replace \(a,g,\mathbb P\nabla\cdot(v\otimes v)\) in \(\Phi\) by their \(S_k\) projections. The resulting fixed points satisfy \(w^{(k)}=S_kw^{(k)}\) and \(\sup_k\|w^{(k)}\|_{X_\delta}\le R\). No order-dependent reduction of \(\delta\) is introduced. Self-adjointness and commutation remove \(S_k\) from the energy pairing, giving
\[
\frac12\frac d{dt}\|w^{(k)}\|_{H^m}^2
+\nu\|\nabla w^{(k)}\|_{H^m}^2
\le K_m\|\nabla w^{(k)}\|_\infty\|w^{(k)}\|_{H^m}^2
+\|g\|_{H^m}\|w^{(k)}\|_{H^m}.
\]
Here the final term vanishes unforced, and
\[
\|\nabla v\|_\infty\le C_{\nabla,3}\|v\|_{H^3},\qquad
C_{\nabla,3}=(2\pi)^{-3/2}
\left(\int_{\mathbb R^3}|\xi|^2\langle\xi\rangle^{-6}\,d\xi\right)^{1/2}.
\]
Thus \(\int_0^\delta\|\nabla w^{(k)}\|_\infty\le C_{\nabla,3}\delta R\), independently of \(k\) and \(m\). With
\(E_{k,m}(t)=\|w^{(k)}(t)\|_{H^m}^2+2\nu\int_0^t\|\nabla w^{(k)}\|_{H^m}^2\), Gronwall yields
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{2K_mC_{\nabla,3}\delta R}\|a\|_{H^m}^2
\quad\text{(unforced)},
\]
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{\delta+2K_mC_{\nabla,3}\delta R}
\bigl(\|a\|_{H^m}^2+\|g\|_{L^2H^m}^2\bigr)
\quad\text{(forced)}.
\]
The truncated equation also bounds \(\partial_tw^{(k)}\) in \(L^2H^{m-1}\). The contraction estimate
\(\|w^{(k)}-w\|_{X_\delta}\le2\|\Phi_k(w)-\Phi(w)\|_{X_\delta}\to0\)
identifies every higher-order weak limit with this already constructed velocity. Adjacent Hilbert-scale trace then gives
\[
w\in C([0,\delta];H^m_\sigma)\cap L^2(0,\delta;H^{m+1}_\sigma),
\qquad w_t\in L^2(0,\delta;H^{m-1}_\sigma).
\]
For \(m<3\), Sobolev nesting supplies the asserted lower orders. The interval is fixed; the bounds may depend on \(m\).

**3. Recover normalized pressure and actual temporal rows.** Define
\[
q=R_iR_j(w_iw_j)-(-\Delta)^{-1}\nabla\cdot f,
\]
with the force potential omitted unforced. The Riesz multipliers are bounded on every \(H^m\), and the potential is in \(H^m\) because
\[
\|(-\Delta)^{-1}\nabla\cdot h\|_{H^m}
\le C_m^{\rm fp}(\|h\|_{L^1}+\|h\|_{H^m}).
\]
Its low-frequency proof uses \(\int_{|\xi|\le1}|\xi|^{-2}\,d\xi<\infty\) in dimension three; each derivative of the prescribed Schwartz force meets this hypothesis. Set \(W_0=w\), \(F_n=\partial_t^nf\), and recursively define
\[
Q_n=R_iR_j\sum_{a=0}^n\binom naW_{a,i}W_{n-a,j}
-(-\Delta)^{-1}\nabla\cdot F_n,
\]
\[
W_{n+1}=\nu\Delta W_n
-\sum_{a=0}^n\binom na(W_a\cdot\nabla)W_{n-a}
-\nabla Q_n+F_n.
\]
Put \(F_n=0\) and omit its potential unforced. Spatial persistence makes every right-hand side continuous in every fixed lower Sobolev order. The momentum equation starts the induction with \(\partial_tW_0=W_1\); distributional differentiation, mixed Leibniz, and the pressure formula then give
\[
W_n=\partial_t^nw,\qquad Q_n=\partial_t^nq,
\qquad W_n,Q_n\in C([0,\delta];H^m)
\quad(n,m\ge0).
\]
These are derivatives of one evolving velocity and one normalized pressure. Their values at zero give the datum-generated triangular initial face.

**4. Identify the history through every overlap.** Splitting Duhamel at a time \(r\) and applying the heat semigroup identity gives a restart with datum \(w(r)\) and original future force. For two mild histories \(v,z\) with a common left trace on a short interval \(J\) of length \(h\), their difference obeys
\[
\|v-z\|_{C(J;H^3)}
\le L_\nu C_qh^{1/2}M_b\|v-z\|_{C(J;H^3)},
\quad M_b=\|v\|_{C([0,b];H^3)}+\|z\|_{C([0,b];H^3)}.
\]
A finite partition with coefficient below one gives equality over each finite common interval; the fixed force cancels and the normalized pressure formula gives equality of pressures. All nonempty shifted mild classes below their maximal lifespan are compatible. Their union is the unique maximal evolving pressure-normalized \(H^3\) history from the datum. For smooth data, spatial persistence and the displayed recurrences identify its smooth mixed jet on every strict compact time interval.

**Native output scope.** This block opens the datum-to-evolving-history operation inside the native producer. Its local estimates give the common local interval, actual derivatives, and identification of the maximal history. The native theorem states its whole-\(I\) domain output in the source passage developed below; finite selection preserves established memberships. The local estimates above are not a replacement derivation of whole-\(I\) high-order integrability when the maximal endpoint is finite.

Source locators in the embedded source envelopes:

- u-analysis 597–660: mild class, normalized pressure, restriction and classical admission; 662–889: constants and contraction; 891–981: persistence on one chosen interval; 982–1018: actual temporal rows and maximal union.
- f-analysis 256–323: pressure potential domain and multiplier proof; 609–678: forced class and restriction; 680–927: forced constants and contraction; 929–1027: persistence on one chosen interval; 1028–1071: derivatives and maximal union.
- u-analysis 167–202 and f-analysis 167–202 define the multiplication constants; u-analysis 374–402 and the forced transport-commutator counterpart define \(K_m\), including \(K_m\le(7^m-1)(2m-4+\sqrt3)^{(m-1)^2/4}\).

### 2. Produce the first six pressure/velocity outputs at free \((t,x)\)

Put \(V_0=u\). Every equality below is an equality of fields on \([0,T_*)\times\mathbb R^3\), classically on strict horizons. Every product inside a Riesz operator is a function of the spatial variable; the operator result is evaluated at \((t,x)\). Summation over \(i,j\in\{1,2,3\}\) is understood.
\[
\begin{aligned}
Q_0(t,x)&=\left[R_iR_j(u_i u_j)\right](t,x)-\Phi_0(t,x),\\
V_1(t,x)&=\nu\Delta u(t,x)-(u\cdot\nabla)u(t,x)-\nabla Q_0(t,x)+F_0(t,x),\\
Q_1(t,x)&=\left[R_iR_j\big((V_1)_iu_j+u_i(V_1)_j\big)\right](t,x)-\Phi_1(t,x),\\
V_2(t,x)&=\nu\Delta V_1(t,x)-(V_1\cdot\nabla)u(t,x)
 -(u\cdot\nabla)V_1(t,x)-\nabla Q_1(t,x)+F_1(t,x),\\
Q_2(t,x)&=\left[R_iR_j\big((V_2)_iu_j+2(V_1)_i(V_1)_j+u_i(V_2)_j\big)\right](t,x)-\Phi_2(t,x),\\
V_3(t,x)&=\nu\Delta V_2(t,x)-(V_2\cdot\nabla)u(t,x)
 -2(V_1\cdot\nabla)V_1(t,x)\\
&\hspace{9mm}-(u\cdot\nabla)V_2(t,x)-\nabla Q_2(t,x)+F_2(t,x).
\end{aligned}
\]

The factor 2 in the last two rows comes from the two allocations of one time derivative to each velocity factor. These are not recursively chosen candidate fields: differentiation of the realized history gives \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\). Thus \(Q_0\) is produced from the spatial velocity product and prescribed source; \(V_1\) uses momentum; differentiating the pressure product produces \(Q_1\); differentiating momentum then produces \(V_2\), and this order repeats.

The general row records this operation without discarding any term:
\[
\begin{aligned}
 B_n&=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\\
 Q_n&=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,\\
 V_{n+1}&=\nu\Delta V_n-B_n-\nabla Q_n+F_n.
\end{aligned}
\]
Sources: `author:u-how:e2c9bf4a1e04` 112–133, 205–235; `author:f-how:f75f1c7c33b0` 40–67. The six displayed rows are direct binomial expansions of those sourced recurrences.

### 3. Evaluate the equations initially

Let \(A_n(x)=V_n(0,x)\), \(P_n(x)=Q_n(0,x)\). Evaluation gives the concrete triangular calculation
\[
\begin{aligned}
A_0&=u_0,\\
P_0&=R_iR_j((u_0)_i(u_0)_j)-\Phi_0(0),\\
A_1&=\nu\Delta u_0-(u_0\cdot\nabla)u_0-\nabla P_0+F_0(0),\\
P_1&=R_iR_j((A_1)_i(u_0)_j+(u_0)_i(A_1)_j)-\Phi_1(0),\\
A_2&=\nu\Delta A_1-(A_1\cdot\nabla)u_0-(u_0\cdot\nabla)A_1-\nabla P_1+F_1(0),\\
P_2&=R_iR_j((A_2)_i(u_0)_j+2(A_1)_i(A_1)_j+(u_0)_i(A_2)_j)-\Phi_2(0),\\
A_3&=\nu\Delta A_2-(A_2\cdot\nabla)u_0-2(A_1\cdot\nabla)A_1
 -(u_0\cdot\nabla)A_2-\nabla P_2+F_2(0).
\end{aligned}
\]
Every expression here is a field on \(\mathbb R^3\). At order \(n\), the pressure and next velocity use already determined velocity rows \(A_0,\ldots,A_n\) and the fixed source row \(F_n(0)\). Finite-order multiplication and the normalized pressure construction put each required initial row in every finite spatial Sobolev order, as stated by the source's initial-jet lemma. This supplies the initial face, rather than a bound for integration up to \(T_*\).

Sources: `revision:u-setting:afb54c1cdd30` 498–518; `today:f-setting` 548–565. The displayed early rows expand those initial recurrences.

### 4. Produce spatial rows without changing the history

For a multi-index \(\alpha\), set \(J_{n,\alpha}=\partial_x^\alpha V_n\), \(\Pi_{n,\alpha}=\partial_x^\alpha Q_n\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). The complete equation is
\[
 J_{n+1,\alpha}=\nu\Delta J_{n,\alpha}
 -\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 -\nabla\Pi_{n,\alpha}+F_{n,\alpha},
\]
\[
 \Pi_{n,\alpha}=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta})_i(J_{n-a,\alpha-\beta})_j
 -(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]
These remain fields on the original \([0,T_*)\times\mathbb R^3\); at zero they become \(\partial_x^\alpha A_n\), \(\partial_x^\alpha P_n\). For example, a first spatial derivative of the original row contains both \((\partial_\ell u\cdot\nabla)u\) and \((u\cdot\nabla)\partial_\ell u\), the viscous term \(\nu\Delta\partial_\ell u\), the pressure term \(\nabla\partial_\ell p\), and \(\partial_\ell f\).

A selected equation retains \(J_{n+1,\alpha}\), all \(J_{n,\alpha+2e_\ell}\), all \(\Pi_{n,\alpha+e_\ell}\), both factors of every transport product, and both factors of every differentiated pressure product. The forced record also retains the direct source and pressure-source coordinates. This is a finite dependency cover for selected equations; it does not impose an autonomous closure on the outer coordinates. Trying to evolve the last retained temporal entry invokes the next derivative and moves the boundary outward. No finite evolution solver is demanded: the entries are derivatives of the original history, as the source explicitly states.

Sources: `revision:u-setting:afb54c1cdd30` 520–561; `today:f-setting` 567–611.

The independently formed completed-height relationships and the whole-interval output are developed below, followed by their permitted projections and direct uses.

This view follows the actual How the Proof Works construction as one continuous mathematical account. The original unforced history has F_n=Phi_n=W_(r,s)=0 throughout. The equations, their domains and the independent entries are kept together.

Fix the original divergence-free datum \(u_0\in H^\infty_\sigma(\mathbb R^3)\), positive \(\nu\), and its pressure-normalized maximal classical history. At a proposed finite maximal time put \(I=(0,T_*)\). The following equations give a continuous reading of the author's field, viscous and completed-height construction. Set \(F_n=0\), \(\Phi_n=0\) and \(\mathcal W_{r,s}=0\) throughout this unforced entry. The native datum theorem retains its supplied whole-terminal output; an already complete mixed or spatial column can enter the indicated reconstruction directly. [author:u-how:5a06882c5628:212–229,265–307]

Write

\[
V_n=\partial_t^nu,\quad Q_n=\partial_t^np,\quad
J_{n,\alpha}=\partial_x^\alpha V_n,\quad
\Pi_{n,\alpha}=\partial_x^\alpha Q_n,
\]

and in the forced branch put \(F_n=\partial_t^nf\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). Set every \(F_n\) to zero for the unforced branch. Define

\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]

The full temporal and pressure rows are

\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\]

\[
-\Delta Q_n=\partial_i\partial_j
 \sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\nabla\cdot F_n,
\]

\[
Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,
\qquad \Phi_n=(-\Delta)^{-1}\nabla\cdot F_n.
\]

The spatially differentiated row contains every allocation of every derivative:

\[
\begin{aligned}
J_{n+1,\alpha}
&+\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha} \\
&=\nu\Delta J_{n,\alpha}+F_{n,\alpha},
\end{aligned}
\]

\[
\Pi_{n,\alpha}
=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 J_{a,\beta,i}J_{n-a,\alpha-\beta,j}
-(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]

Incompressibility is retained in every velocity row. The pressure formula is fixed by the normalized \(H^0\) pressure; a harmonic \(H^0\) difference has Fourier support at \(\{0\}\) and vanishes. [author:u-how:5a06882c5628:105–140; author:f-how:f75f1c7c33b0:40–68; today:f-setting:1–55,567–611]

At zero the operation is an explicit recursion. With \(A_n=V_n(0)\) and \(P_n=Q_n(0)\),

\[
\begin{aligned}
A_0&=u_0,\\
P_n&=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j-\Phi_n(0),\\
A_{n+1}&=\nu\Delta A_n
-\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}
-\nabla P_n+F_n(0).
\end{aligned}
\]

At step \(n\), each velocity input has already been determined. Multiplication, differentiation and the fixed pressure multipliers put each required initial row in every finite Sobolev order. Taking \(\partial_x^\alpha\) gives the initial mixed face. This recursion determines the initial derivatives and their overlap identity; it is not a time-Taylor convergence assumption. [revision:u-setting:006d0d1f43f9:498–518; today:f-setting:548–565]

For an equation \((n,\alpha)\), retain \(J_{n+1,\alpha}\), all three \(J_{n,\alpha+2e_\ell}\), \(\Pi_{n,\alpha+e_\ell}\), and every pair \(J_{a,\beta,i}\), \(J_{n-a,\alpha-\beta+e_i}\) occurring in transport. For pressure retain every product allocation needed at \(\gamma=\alpha\) and \(\gamma=\alpha+e_\ell\). The forced record also keeps \(F_{n,\alpha}\) and the force-potential coordinates at those pressure indices. This finite dependency cover belongs to the original full field. [revision:u-setting:006d0d1f43f9:520–561; today:f-setting:567–611]

Apply \(\mathbb P\) to the complete temporal row, use \(\Delta=-\Lambda^2\), and commute \(\Lambda^s\) with the projection:

\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n
=\Lambda^s\mathbb P(F_n-B_n).
\tag{1}
\]

Here the next temporal derivative and two more spatial derivatives occur in one vector equality, with the entire nonlinear face retained. On squaring, the cross term is

\[
\begin{aligned}
2\nu\operatorname{Re}\langle\Lambda^sV_{n+1},\Lambda^{s+2}V_n\rangle
&=2\nu\operatorname{Re}\langle\Lambda^{s+1}\partial_tV_n,
                                  \Lambda^{s+1}V_n\rangle\\
&=\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2.
\end{aligned}
\]

Consequently,

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s\mathbb P(F_n-B_n)\|_2^2.
\tag{2}
\]

The complementary projection reads

\[
\nabla Q_n=(I-\mathbb P)(F_n-B_n).
\]

Orthogonality of these projections puts the pressure face back into the positive square:

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\tag{3}
\]

Integrating from zero to a strict time \(S<T_*\) keeps the boundary derivative:

\[
\begin{aligned}
&\nu\|\Lambda^{s+1}V_n(S)\|_2^2
+\int_0^S\bigl(\|\Lambda^sV_{n+1}\|_2^2
 +\nu^2\|\Lambda^{s+2}V_n\|_2^2
 +\|\Lambda^s\nabla Q_n\|_2^2\bigr)\,dt\\
&\qquad=\nu\|\Lambda^{s+1}A_n\|_2^2
 +\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2\,dt.
\end{aligned}
\tag{4}
\]

This is the actual complete-row relation used by the author. Each identity first holds on a strict classical interval; in an admitted finite whole-interval rectangle it is evaluated at the finite orders required by that rectangle. Equation (4) is a relationship among its temporal, spatial, pressure, force and transport coordinates. [author:f-how:f75f1c7c33b0:113–151; f-relations:189–252; revision:u-setting:006d0d1f43f9:431–443]

Set

\[
E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\qquad H=E_{0,1/2},
\]

\[
\mathcal P_{r,s}
=-\operatorname{Re}\langle\Lambda^sV_r,
                       \Lambda^s(B_r+\nabla Q_r)\rangle,
\qquad
\mathcal W_{r,s}
=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\]

Pairing the complete row with \(\Lambda^{2s}V_r\) gives

\[
\partial_tE_{r,s}
=-2\nu E_{r,s+1}+\mathcal P_{r,s}+\mathcal W_{r,s}.
\tag{5}
\]

The viscous contribution follows from

\[
\nu\operatorname{Re}\langle\Lambda^sV_r,\Lambda^s\Delta V_r\rangle
=-\nu\|\Lambda^{s+1}V_r\|_2^2.
\]

The pressure term is retained inside the complete current. The unforced reading has \(\mathcal W=0\). [author:u-how:5a06882c5628:142–190; u-relations:54–146; author:f-how:f75f1c7c33b0:153–180; f-relations:68–163]

The velocity-to-height map itself retains every temporal split:

\[
H^{(q)}
=\tfrac12\sum_{a=0}^q\binom qa
  \operatorname{Re}\langle\Lambda^{1/2}V_a,
                          \Lambda^{1/2}V_{q-a}\rangle.
\tag{6}
\]

Thus \(H^{(q)}\) differentiates the critical quadratic energy. It is not \(E_{q,1/2}\). To make “retain the differentiated currents” executable for a fresh reader, the ordinary Leibniz rule expands them as

\[
\partial_t^q\mathcal P_{r,s}
=-\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},
        \Lambda^s(B_{r+q-a}+\nabla Q_{r+q-a})\rangle,
\tag{7}
\]

\[
\partial_t^q\mathcal W_{r,s}
=\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},\Lambda^sF_{r+q-a}\rangle.
\tag{8}
\]

These follow because \(\partial_t^bB_r=B_{r+b}\) and \(\partial_t^bQ_r=Q_{r+b}\). Substituting the displayed product formula for \(B_j\) and the normalized product/potential formula for \(Q_j\) expands each into finitely many actual jet coordinates. Equations (7)–(8) are explicit product-rule expansions of the source's retained currents; they add no new existence premise.

For brevity let \(C_{r,s}=\mathcal P_{r,s}+\mathcal W_{r,s}\). Successive substitution of (5) gives

\[
\begin{aligned}
H'&=-2\nu E_{3/2}+C_{0,1/2},\\
H''&=4\nu^2E_{5/2}-2\nu C_{0,3/2}+\partial_tC_{0,1/2},\\
H^{(k)}&=(-2\nu)^kE_{k+1/2}
 +\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}.
\end{aligned}
\tag{9}
\]

To verify the induction, differentiate the order-\(k\) expression. Its leading term becomes

\[
(-2\nu)^k\partial_t E_{k+1/2}
=(-2\nu)^{k+1}E_{k+3/2}+(-2\nu)^kC_{0,k+1/2},
\]

which is exactly the new terminal summand of the order-\(k+1\) expression. The other summands receive one additional time derivative. With \(\nu>0\), the leading coefficient is nonzero, so the actual inverse operation is

\[
R_0=H,\qquad
R_k=
\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}}
{(-2\nu)^k}
=E_{k+1/2}.
\tag{10}
\]

The analogous formula for every temporal row replaces \(H^{(k)}\) by \(\partial_t^kE_{r,1/2}\), \(C_{0,s}\) by \(C_{r,s}\), and \(E_{k+1/2}\) by \(E_{r,k+1/2}\). This is a triangular coordinate correspondence. The current derivatives in (7)–(8) stay attached through the inversion. [u-relations:90–168; f-relations:103–184]

### Follow the native blocks, heights and recurrence on their actual domains

Fix one original history and \(I=(0,T_*)\). Whole-interval membership means that each selected defining integral over I is finite. It requires no common constant across all derivative orders. Fields defined at every interior time and fields with finite norms over I are distinct assertions.

**Initial and evolving rows.** The initial recurrences construct the full initial jet from \((u_0,\nu)\), or \((u_0,\nu,f)\). Local iteration and uniqueness construct one maximal history. Differentiation identifies its actual mixed rows and their complete equations on every strict classical interval. The displayed local iteration gives a positive interval depending on the current \(H^3\) datum and the prescribed force. [revision:u-setting:afb54c1cdd30:399–443,498–561; today:f-setting:432–481,548–629; u-analysis:671–694; f-analysis:680–717]

**Independently derived height coordinates.** Put \(C_s=\mathcal P_s+\mathcal W_s\), with \(\mathcal W_s=0\) unforced. Pairing the original equation gives
\[
E_s'=C_s-2\nu E_{s+1},
\qquad
R_k=\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{j+1/2}}
{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2.
\]
This identity is obtained by differentiation and substitution, retaining every transport, pressure and force-work term. Its derivation does not use finite rectangle norms. The identity and the assertion \(R_k\in L^1(I)\) have different roles. [u-relations:90–169; f-relations:103–187]

**The native whole-interval constructor.** Its output carries, for each finite N,M,
\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N.
\]
The constructor starts from the original datum, fixed viscosity and original prescribed force when present. It retains the evolving velocity, normalized pressure, complete mixed equations and their Sobolev domains on I. Its finite Sobolev graphs, restriction maps and compatible limit are expanded at each construction passage. The native theorem supplies this constructed family; the complete original theorem and proof bodies accompany that use. [revision:u-setting:afb54c1cdd30:454–623; today:f-setting:487–673]

**Finite selection and direct mixed exhaustion.** A finite selection of a jet carrying these domains preserves I, the fields, their weak derivative identities and normalized pressure. Its norm is the finite sum of those defining integrals. Restriction decreases the integrals, and monotone convergence identifies their supremum with the whole-I value. For fixed r,m, selecting enough rows gives
\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^{r}\|V_n\|_{L^2(I;H^m)}^2.
\]
No membership-generating operation follows that selection. A complete mixed intersection is also a direct entry from which finite rows can be selected. [u-relations:207–313; today:f-setting:681–708,747–791; f-relations:392–440]

**Integrated heights and spatial exhaustion.** The source obtains the height integral using the native finite block:
\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}^*.
\]
It then splits Fourier space into low and high frequencies to obtain
\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\bigl(\|u\|_{L^2(I;L^2)}^2
+2\|R_m\|_{L^1(I)}\bigr).
\]
Kinetic energy controls the first term, including prescribed source work in the forced branch. The native block controls the second term in this source route. An already integrated complete height graph can instead supply that term directly. [u-relations:315–392; f-relations:442–505]

**Return through the recurrence.** Starting with the complete spatial interval column, products and diffusion give \(u_t\in L^1(I;H^m)\), hence a continuous \(H^m\) representative up to the endpoint. With \(M_{n,m}=\sup_{[0,T_*]}\|V_n\|_{H^m}\), the recurrence gives the finite bound
\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m\sum_{a=0}^{n}\binom naM_{a,m+2}M_{n-a,m+2}
+\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\]
All velocity factors on the right have temporal order at most n. The normalized pressure formula recovers Q_n; every F_n vanishes unforced. Finite interval length converts these continuous rows into the mixed Sobolev intersection. Thus the return is a genuine construction from the whole-I spatial column, with that column retained as its input. [revision:u-setting:afb54c1cdd30:668–758; f-relations:508–570]

The native whole-I blocks feed both readings: direct mixed exhaustion, and completed heights → spatial Sobolev column → recurrence return. The height identities arise by differentiating the original energy rows; their evaluation on the constructed family retains its full interval and defining integrals. Both readings agree on every velocity and pressure coordinate. The displayed Sobolev graphs and projection maps make this assembly explicit.

**The complete positive square retains transport.** In the forced branch its integrated right side contains \(\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt\), with F_n=0 unforced. The source bounds the nonlinear factors using the available velocity rectangle; the prescribed force contribution has its own finite budget. The complete square keeps its boundary values and transport-force source; the stated product bounds evaluate that source on the retained finite graph. [f-relations:189–382]

Once the relevant whole-I rows are available, compatible traces, normalized endpoint recurrences, local restart and overlap uniqueness continue the original history. The original future force remains attached throughout the forced branch.



### Complete binomial cancellation

For divergence-free \(a\), put
\[
T(a,b,c)=\int (a\cdot\nabla)b\cdot c\,dx.
\]
Integration by parts gives \(T(a,b,c)=-T(a,c,b)\). Differentiating the kinetic transport pairing k times retains the complete allocation
\[
\sum_{a+b+c=k}\frac{k!}{a!b!c!}
\int (V_a\cdot\nabla)V_b\cdot V_c\,dx=0.
\]
For each a, exchanging b,c preserves the coefficient and reverses the sign. Every pressure pairing vanishes by the retained divergence identities. Thus the complete row gives
\[
\partial_t^{k+1}\!\left(\tfrac12\|u\|_2^2\right)
+\nu\partial_t^k\|\nabla u\|_2^2
=\partial_t^k\langle u,f\rangle.
\]
All source derivatives remain in the forced branch; set f=0 unforced. The contracted quadratic coordinate is
\[
\partial_t^k\!\left(\tfrac12\|u\|_2^2\right)
=\tfrac12\sum_{a=0}^k\binom ka\langle V_a,V_{k-a}\rangle.
\]
At k=2 it is \(\|V_1\|_2^2+\langle u,V_2\rangle\): the central square comes with its actual crossed pairing. The positive diagonal faces are read through the squared-row identity above, retaining its full transport-force source. This calculation keeps the original fields throughout. [u-relations:14–46,54–147; f-relations:13–60,68–163]



### Integrate the completed ladder with its boundary currents

Write \(c=-2\nu\), \(R_j=E_{0,j+1/2}\), and \(C_j=\mathcal P_{0,j+1/2}+\mathcal W_{0,j+1/2}\), with every \(\mathcal W=0\) unforced. The displayed ladder says
\[
H^{(k)}=c^kR_k+\sum_{j=0}^{k-1}c^jC_j^{(k-1-j)}.
\]
For k at least one define the full endpoint current
\[
A_k=H^{(k-1)}-\sum_{j=0}^{k-2}c^jC_j^{(k-2-j)}
=c^{k-1}R_{k-1}.
\]
The sum is empty at k=1. Integrating the preceding order-k identity on \((0,S)\), \(S<T_*\), gives
\[
c^k\int_0^S R_k\,dt
=[A_k]_0^S-c^{k-1}\int_0^S C_{k-1}\,dt.
\]
Divide by \(c^{k-1}\) and retain both endpoints:
\[
2\nu\int_0^S R_k\,dt
=R_{k-1}(0)-R_{k-1}(S)
+\int_0^S C_{k-1}\,dt.
\]
All differentiated transfer and force currents have telescoped into the adjacent energy and its full accumulated work. This is the integrated native ladder, evaluated on the original history. Its passage to the whole interval retains that coupled budget. On an available native whole-I block the memberships are already carried by the fields; finite selection adds no separate estimate. These identities expand the operation without changing that domain account. [u-relations:90–169; f-relations:103–184]

### The native source theorem and its whole-interval output

The native theorem states that its constructed evolving pressure-complete jet carries the whole-interval Sobolev domains. Finite selection preserves such domains. The dependency walk above follows both the native assertion and the completed-height return, retaining the inputs used at each step. The original proof bodies below expose the source reasoning behind the assertion; the exposition imposes no instruction to accept or reject it.

The datum construction concerns the original pressure-normalized history. Its output is the whole-terminal pressure-complete jet on \(I\): the actual fields \(J_{n,\alpha}=\partial_x^\alpha\partial_t^nu\) and \(\Pi_{n,\alpha}=\partial_x^\alpha\partial_t^np\), their governing identities, their prescribed initial face, and their compatible Sobolev memberships. For every finite \(n,m,\alpha\), these include
\[
J_{n,\alpha}\in L^2(I;H^m),\qquad
\Pi_{n,\alpha}\in L^1(I;H^m).
\]
The branch data determine which constructed jet is carried: \((u_0,\nu)\) unforced, or the entire original \((u_0,\nu,f)\) forced. The equations above explain its field coordinates and the independently originated height relations. The whole-terminal memberships belong to that construction's output and travel with its coordinates. In the following selection, \(N,M\) change which coordinates are retained, while \(I\) remains fixed. [author:u-how:e2c9bf4a1e04:205–347; revision:u-setting:afb54c1cdd30:454–495,563–623; author:f-how:f75f1c7c33b0:69–112,181–248; today:f-setting:487–546,631–708]

For any finite \(N,M\), select the record

\[
\mathcal R_{N,M}
=\bigl((V_n)_{0\le n\le N},(V_{n+1})_{0\le n\le N};
       (Q_n)_{0\le n\le N};(F_n)_{0\le n\le N}\bigr).
\]

The force coordinates are absent in the unforced record. The adjacent coordinates selected from the constructed whole-terminal jet are

\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N,
\quad I=(0,T_*),
\tag{11}
\]

with the pressure and mixed-coordinate memberships in the theorem.

The current dependency account distinguishes construction from finite selection. In the unforced source, the datum-generated whole-terminal jet already contains its compatible Sobolev coordinates on \(I\). The finite record is its coordinate projection:
\[
\mathcal R_{N,M}=\pi_{N,M}\mathcal J^{\mathrm{whole}}[u_0,\nu;I].
\]
Selecting \(V_n,V_{n+1},Q_n\) retains their original interval and the identity \(\partial_tV_n=V_{n+1}\). Equation (11) reads memberships already contained in that constructed object. It does not request an additional placement operation from the selected finite graph. [revision:u-setting:afb54c1cdd30:563–578; author:u-how:e2c9bf4a1e04:255–280]

The prescribed-force branch retains its own input \((u_0,\nu,f)\), force jet and pressure potential. Its current source states the native whole-interval outputs inside the forced datum construction after the complete initial face, coupled graph, both projections and source payment. Once this native output, a completed forced mixed intersection, or a completed spatial interval column is available, use its finite coordinates directly. No unforced construction supplies a forced input, and no second placement is imposed after a completed forced object. [today:f-setting:548–641,643–708]

#### The constructed Sobolev graph and its finite readouts

Fix the original branch data b: \((u_0,\nu)\) unforced, or \((u_0,\nu,f)\) forced, with the entire prescribed future force retained. Keep \(I=(0,T_*)\). For finite N and M at least three define the adjacent-row Hilbert graph
\[
D_{N,M}(I)=\{(v_0,\ldots,v_{N+1}):
\partial_tv_n=v_{n+1},\quad 0\le n\le N,\quad
\|v\|_{N,M}<\infty\},
\]
where \(\|v\|_{N,M}^2\) is the adjacent Sobolev norm in (12). Distributional differentiation is closed under convergence in its factors, so D is complete. The adjacent trace supplies \(v_n(0)\) for n at most N. Attach the datum-generated initial face, normalized pressure formula, full binomial products and original force, and impose the displayed momentum rows. This defines the closed coupled graph \(G^b_{N,M}(I)\). Product and pressure continuity follow from the preceding analytic operations. Every mixed coordinate is a derivative of these fields. Larger M covers all lower target orders.

Restriction \(\rho\) deletes outer temporal coordinates and uses the continuous spatial Sobolev inclusions. It preserves I, the derivative identities, normalized pressure, initial face and prescribed force. The native construction's supplied output is the coherent family
\[
\Gamma_b=\mathcal C_b(I)\in
\varprojlim_{N,M}G^b_{N,M}(I),
\qquad \rho\Gamma_{b;N,M}=\Gamma_{b;N',M'}.
\]
The source theorem supplies this element. Its finite readout is exactly
\[
\mathcal R^b_{N,M}=\pi_{N,M}\Gamma_b\in G^b_{N,M}(I).
\]
Thus its Sobolev memberships and finite defining norm are coordinates of the available output. Selection changes indices and has the identity time map on I. It introduces no further whole-interval estimate. [revision:u-setting:afb54c1cdd30:563–600; today:f-setting:631–708]

To assemble the limit explicitly, take the cofinal sequence \((N,M)=(k,k+3)\). Compatible finite coordinates identify one distributional field \(v_0=u\), with \(v_n=\partial_t^nu\). For any finite r,m choose k at least max(r,m). Then
\[
\sum_{n=0}^r\|\partial_t^nu\|_{L^2(I;H^m)}^2
\le\|\pi_{k,k+3}\Gamma_b\|_{k,k+3}^2<\infty.
\]
This produces the mixed intersection as a readout of the constructed family. Each finite norm is available; no bound common to derivative orders is imposed. The complete binomial cancellation and integrated height telescope above retain their full currents and boundary terms. The spatial reconstruction, acceleration estimate, endpoint and restart below consume this available object and its finite projections.

The following operations use those available objects:

| Available object | Operation | Usable output |
| --- | --- | --- |
| Constructed whole-terminal jet or its adjacent rows | Select finite coordinates and sum defining squared norms | The finite whole-terminal rectangle norm (12) |
| That finite norm on \(I\) | Restrict nonnegative integrals and exhaust strict horizons | The cutoff supremum (13) |
| Compatible finite mixed records | Exhaust mixed indices | The mixed intersection (14) |
| An already supplied completed mixed intersection | Select finite derivative coordinates | Adjacent rows and norm directly, by (15) |
| Completed integrated heights with full currents | Fourier split, then use the original equation | The spatial column and actual temporal/pressure rows |

Once these finite memberships are available, their defining squared norms give

\[
\mathfrak R_{N,M}(T_*)
=\sum_{n=0}^N\left(
 \|V_n\|_{L^2(I;H^{M+1})}^2+
 \|V_{n+1}\|_{L^2(I;H^{M-1})}^2\right)<\infty.
\tag{12}
\]

Restriction to \((0,S)\) decreases each nonnegative integral. Monotone convergence identifies

\[
\sup_{S<T_*}\mathfrak R_{N,M}(S)
=\lim_{S\uparrow T_*}\mathfrak R_{N,M}(S)
=\mathfrak R_{N,M}(T_*).
\tag{13}
\]

The constant may depend on \(N,M,u_0,\nu,f,T_*\). No common constant over infinitely many orders is required. Enlarging the rectangle retains identical distributional derivatives, the identical initial recursion and the identical pressure normalization. Deleting outer coordinates recovers the smaller record. [author:u-how:5a06882c5628:265–289; author:f-how:f75f1c7c33b0:182–220; revision:u-setting:006d0d1f43f9:574–615; today:f-setting:643–672]


### Material acceleration is a readout of the native finite block

The native datum entry has no additional material-acceleration premise. Take its already obtained whole-I selection \(N=0,M=1\), and put
\[
r_u=\|u\|_{L^2(I;H^2)}^2,\qquad
r_t=\|u_t\|_{L^2(I;L^2)}^2,\qquad
R=r_u+r_t,\quad I_1=\|u_0\|_{H^1}^2.
\]
The original fields and interval I are retained throughout. The adjacent-row identity gives
\[
\frac d{dt}\|u\|_{H^1}^2
=2\operatorname{Re}\langle J^2u,u_t\rangle,
\qquad J=(1-\Delta)^{1/2},
\]
so integration and \(2ab\le a^2+b^2\) give
\[
\sup_{t\in I}\|u(t)\|_{H^1}^2\le I_1+R.
\]
With the source's fixed embedding constant \(C_E=(8\pi)^{-1/2}\),
\[
\|u\|_{L^2(I;L^\infty)}^2\le C_E^2r_u.
\]
At each time, \(\|(u\cdot\nabla)u\|_2\le\|u\|_\infty\|\nabla u\|_2\). Thus
\[
\|B_0\|_{L^2(I;L^2)}^2
\le C_E^2(I_1+R)r_u,
\]
and the original material acceleration has the finite budget
\[
\begin{aligned}
\mathcal A_*:=\|D_tu\|_{L^2(I;L^2)}^2
&\le 2r_t+2C_E^2(I_1+R)r_u\\
&\le 2R+2C_E^2(I_1+R)R<\infty.
\end{aligned}
\]
This is a composition of the native output, trace, embedding and the identity \(D_tu=u_t+B_0\). It produces an acceleration bound from a finite native block; it does not ask the native constructor to assume that bound. The original force, pressure and governing history remain fixed in either branch. [r-body:453–460,577–590,1569–1585]

The optional **material** entry proves the reverse sufficient implication from an independently supplied finite acceleration budget through the elliptic square, spatial Gronwall bounds, recurrence and endpoint. That implication is available when its input is supplied. It is neither the native constructor's definition nor an extra generating requirement after finite selection.

### Complete the selected interval pressure rows

For a fixed temporal order \(n\), spatial multi-index \(\alpha\) and target spatial order \(m\ge0\), retain both velocity factors in every pressure-product allocation. Put
\[
\Phi_{n,\alpha}=(-\Delta)^{-1}\operatorname{div}F_{n,\alpha}.
\]
At each time, the finite-order multiplication estimate \(H^{m+1}\cdot H^{m+1}\to H^m\) and boundedness of the Riesz transforms give
\[
\begin{aligned}
\|\Pi_{n,\alpha}(t)\|_{H^m}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}(t)\|_{H^{m+1}}
\|J_{n-a,\alpha-\beta}(t)\|_{H^{m+1}}
+\|\Phi_{n,\alpha}(t)\|_{H^m}.
\end{aligned}
\]
Integrate on the retained interval \(I\) and apply Cauchy–Schwarz separately to each product:
\[
\begin{aligned}
\|\Pi_{n,\alpha}\|_{L^1(I;H^m)}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}\|_{L^2(I;H^{m+1})}
\|J_{n-a,\alpha-\beta}\|_{L^2(I;H^{m+1})}
+\|\Phi_{n,\alpha}\|_{L^1(I;H^m)}<\infty.
\end{aligned}
\]
Choose a finite cut with \(N\ge n\) and \(M\ge m+|\alpha|\). Its available \(V_a\in L^2(I;H^{M+1})\) coordinates supply every velocity norm on this right-hand side after spatial differentiation. The bound for \(\nabla\Pi_{n,\alpha}\) in \(L^1(I;H^{m-1})\) follows by differentiation. At \(\alpha=0\), this is the temporal pressure estimate. In the unforced branch \(\Phi_{n,\alpha}=0\); in the forced branch the prescribed smooth Schwartz source and its potential budget supply the final term. Every pressure coordinate is thus read from its actual selected factors, with \(I\) unchanged. This operation consumes the constructed interval velocity coordinates; it does not generate their memberships. [author:u-how:e2c9bf4a1e04:283–295; revision:u-setting:afb54c1cdd30:602–612; today:f-setting:280–330,613–641]

The direct mixed reading chooses, for each requested finite \(r,m\), a rectangle containing \(V_0,\ldots,V_r\) at spatial order \(m\). Since these are the weak derivatives of \(u\),

\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^r\|V_n\|_{L^2(I;H^m)}^2<\infty.
\tag{14}
\]

Taking every finite pair gives \(u\in\bigcap_{r,m\ge0}H^r(I;H^m)\). The converse finite operation is direct projection: if this complete mixed intersection is the entering object, select its finitely many rows without repeating the datum construction. In particular,

\[
\mathfrak R_{N,M}(T_*)
\le 2\|u\|_{H^{N+1}(I;H^{M+1})}^2.
\tag{15}
\]

This entry needs no completed-height calculation. [revision:u-setting:006d0d1f43f9:621–655; today:f-setting:681–708]

The completed-height reading uses (10) on the native rows. For each finite \(k\),

\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}(T_*).
\tag{16}
\]

For the reverse spatial passage, split Fourier space at \(|\xi|=1\). The weight \((1+|\xi|^2)^m\) is at most \(2^m\) on the inner region and at most \(2^m|\xi|^{2m+1}\) on the outer region. It follows that

\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\left(\|u\|_{L^2(I;L^2)}^2+2\|R_m\|_{L^1(I)}\right).
\tag{17}
\]

The kinetic identity gives the low-frequency floor. Unforced,

\[
\tfrac12\|u(t)\|_2^2+\nu\int_0^t\|\nabla u\|_2^2
=\tfrac12\|u_0\|_2^2.
\]

Forced, put \(K_f(t)=\|u_0\|_2+\int_0^t\|\mathbb Pf(s)\|_2\,ds\). Pairing with \(u\), using incompressibility and then the scalar square-root estimate gives \(\|u(t)\|_2\le K_f(t)\). Thus the floor in (17) is bounded by \(T_*\|u_0\|_2^2\) or \(T_*K_f(T_*)^2\), respectively. The floor controls low frequencies; it is not promoted to an all-orders construction. [u-relations:14–45,315–392; f-relations:13–60]

Equations (16)–(17) show how the complete integrated height graph and the complete spatial \(L^2\) column encode one another. A reader entering with the complete height graph and every \(R_k\in L^1(I)\) can perform (17) directly. A reader entering with the spatial column can omit both (16) and the scalar height construction. Pointwise all-order Sobolev membership and interval all-order Sobolev membership are retained with their distinct domains.

This entry begins with the explicit whole-interval object

\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma),
\qquad T_*<\infty.
\tag{18}
\]

It is independent of how that column was obtained. At each finite target \(m\), the available \(m+2\) order gives

\[
\|\mathbb P\nabla\cdot(u\otimes u)\|_{L^1H^m}
\le C_m\|u\|_{L^2H^{m+2}}^2,
\quad
\|\Delta u\|_{L^1H^m}
\le\sqrt{T_*}\|u\|_{L^2H^{m+2}}.
\]

Substitution into the original projected equation yields

\[
\|u_t\|_{L^1H^m}
\le\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}<\infty.
\tag{19}
\]

Banach integration produces \(u\in W^{1,1}(I;H^m)\subset C([0,T_*];H^m)\) and the explicit bound

\[
M_{0,m}=\|u_0\|_{H^m}
 +\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}.
\]

Suppose \(V_0,\ldots,V_n\) are continuous in every finite spatial order. In the projected recurrence the available higher spatial orders, multiplication and source jet give the finite next-row bound

\[
M_{n+1,m}=\nu M_{n,m+2}
 +C_m\sum_{a=0}^n\binom naM_{a,m+2}M_{n-a,m+2}
 +\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\tag{20}
\]

Every term on the right has temporal order at most \(n\). The pressure formula recovers \(Q_n\) at any requested finite order, including \(-\Phi_n\) in the forced branch. On the interior the continuous vector expression equals \(\partial_tV_n\), and

\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau
\]

extends to \(0\le s\le t\le T_*\). It identifies the actual one-sided endpoint derivatives. Induction gives \(V_n,Q_n\in C([0,T_*];H^m)\) at every finite \(n,m\). Finite interval length then gives

\[
\|u\|_{H^r(I;H^m)}^2
\le T_*\sum_{n=0}^rM_{n,m}^2<\infty,
\]

and (11) follows by selecting adjacent coordinates. This is an actual constructive return from spatial to mixed rows, with no backward appeal to the mixed reading. [revision:u-setting:006d0d1f43f9:661–750; author:f-how:f75f1c7c33b0:222–250; f-relations:508–570]

**Available outputs**

- Native theorem statement: Every selected adjacent velocity pair on the whole interval I, with its actual derivative and normalized pressure coordinates.
- Finite native R0,1 produces the material-acceleration L2 budget by trace, embedding and the unchanged material identity.

**Exact sources**: author:u-how:e2c9bf4a1e04:283-295; author:u-how:e2c9bf4a1e04:112-133; author:u-how:e2c9bf4a1e04:205-347; revision:u-setting:afb54c1cdd30:498-623; author:u-how:5a06882c5628:34-309; author:f-how:f75f1c7c33b0:5-250; revision:u-setting:006d0d1f43f9:403-750; today:f-setting:548-708; u-relations:54-169; f-relations:68-252; f-relations:508-570; u-analysis:597-1018; f-analysis:609-1071; f-analysis:256-323; u-relations:207-392; f-relations:189-570; revision:u-setting:afb54c1cdd30:668-758; author:draft:49cee9a4e6c6:9-19; r-body:453-590

## Finite projection, monotone norms and direct mixed exhaustion

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- Adjacent whole-interval rows from the native construction, OR an already established complete mixed intersection of this history. Direct entry: A completed mixed intersection of the selected history already supplies the needed finite memberships by projection; no native construction must be repeated at this entry.

There are two usable entries to this finite operation. At the native construction entry, each selected adjacent whole-interval membership has been produced. At an established complete-intersection entry, select the required finite coordinates directly. Both operations concern the original history on \(I=(0,T_*)\).

Given adjacent rows, form
\[
\mathfrak R_{N,M}=\sum_{n=0}^N\bigl(\|V_n\|_{L^2(I;H^{M+1})}^2+\|V_{n+1}\|_{L^2(I;H^{M-1})}^2\bigr).
\]
It is finite because its finitely many defining norms are finite. Restriction to \((0,S)\) decreases each integral. Monotone convergence gives
\[
\sup_{S<T_*}\mathfrak R_{N,M}(S)=\lim_{S\uparrow T_*}\mathfrak R_{N,M}(S)=\mathfrak R_{N,M}(T_*)<\infty.
\]
A larger rectangle retains the identical derivatives of the fixed fields, with the common initial expressions, pressure normalization and uniqueness identifying overlaps.

At the independent completed-intersection entry select
\(u\in H^{N+1}(I;H^{M+1})\). The spatial inclusion \(H^{M+1}\hookrightarrow H^{M-1}\) gives
\[
\mathfrak R_{N,M}\le2\sum_{j=0}^{N+1}\|V_j\|_{L^2(I;H^{M+1})}^2
=2\|u\|_{H^{N+1}(I;H^{M+1})}^2<\infty.
\]
This is an explicit finite readout of that available object. Constants are allowed to depend on \(N,M\).

For the forward mixed-index exhaustion, fix arbitrary finite \(r,m\). Choose \(N=r\) and \(M=m+1\). The selected velocity coordinates lie in \(L^2(I;H^{m+2})\), hence in \(L^2(I;H^m)\). This gives a concrete rectangle containing \(V_0,\ldots,V_r\) at the required order. The actual weak derivative identities give
\[
\|u\|_{H^r(I;H^m)}^2=\sum_{n=0}^r\|V_n\|_{L^2(I;H^m)}^2<\infty.
\]
Taking all finite pairs yields \(\mathcal X_\infty(I)=\bigcap_{r,m}H^r(I;H^m)\). No infinite sum of norms appears. In the forced branch this calculation selects the intersection of the original forced history and retains all its \(F_n\) and \(\Phi_n\).

**Available outputs**

- Finite whole-interval rectangle norm; its strict-horizon supremum; compatible overlaps; direct mixed Sobolev intersection.

**Exact sources**: contract:58-82; u-spine:291-348; u-setting:533-619; u-setting:533-579; u-setting:584-619; u-endpoint:32-110; today:u-setting:523-605

## Completed heights recover every spatial Sobolev row

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- Completed R_k=E_{k+1/2} with every R_k in L^1(I), retaining all currents.
- The finite-energy L^2(I;L^2) floor.

The completed-height graph has the exact coordinate identity
\[
R_k=E_{k+1/2},\qquad \int_I R_k=\tfrac12\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2.
\]
Its domain includes the complete differentiated transport/pressure currents, source work in the forced branch, and the actual \(L^1(I)\) memberships of every recovered \(R_k\). The kinetic \(L^2(I;L^2)\) coordinate controls the low frequencies.

For each finite integer \(m\), split Fourier space at unit radius. On \(|\xi|\le1\), \((1+|\xi|^2)^m\le2^m\). On \(|\xi|>1\), the weight is bounded by \(2^m|\xi|^{2m+1}\). Hence
\[
\|u\|_{L^2(I;H^m)}^2\le2^m\left(\|u\|_{L^2(I;L^2)}^2+2\int_I R_m\right)<\infty.
\]
Taking each finite \(m\) recovers the complete spatial interval column \(\mathscr S_0(I)\). Conversely that column supplies every half-integer height and its integrated coordinate. This is the full spatial-column correspondence for the admitted history.

The identities are independently derived from the governing jet. In the datum-first presentation they are evaluated on the compatible native rectangles. At a supplied completed-height entry, the graph and its interval domains are the available input. Direct mixed exhaustion remains available without this detour. Scalar smoothness of \(H(t)\), with its signed-current graph omitted, has a different domain.

**Available outputs**

- The full spatial interval column S_0(I)=intersection_m L^2(I;H^m), through an explicit finite-order Fourier estimate.

**Exact sources**: u-spine:406-422; u-relations:315-378; f-relations:442-505

## The original equation reconstructs all temporal rows from the spatial column

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- The original history belongs to the full spatial interval column S_0(I); T_* is finite. Direct entry: The spatial intersection S_0(I) may be given directly, independently of the completed-height route.
- The original normalized equation and finite multiplication/pressure operations.

The return operation has entering domain
\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma),
\qquad T_*<\infty.
\]
At a fixed target \(m\), the available \(m+2\) order gives
\[
\|\mathbb P\nabla\cdot(u\otimes u)\|_{L^1H^m}
\le C_m\|u\|_{L^2H^{m+2}}^2,\qquad
\|\Delta u\|_{L^1H^m}\le\sqrt{T_*}\|u\|_{L^2H^{m+2}}.
\]
The equation yields \(u_t\in L^1H^m\); Banach integration gives \(u\in C([0,T_*];H^m)\). Its representatives agree under Sobolev embedding because they extend the original distribution. [u-setting:624-667]

Assume the rows through \(V_n\) are continuous at every finite spatial order. Use
\[
Q_n=R_iR_j\sum_{b=0}^n\binom nb(V_b)_i(V_{n-b})_j,\qquad
V_{n+1}=\nu\Delta V_n-\sum_{b=0}^n\binom nb(V_b\cdot\nabla)V_{n-b}-\nabla Q_n.
\]
Higher available spatial orders and multiplication give \(Q_n,V_{n+1}\) continuously in any \(H^m\). Their derivative identity extends to the endpoints:
\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau.
\]
Induction identifies actual temporal derivatives and one-sided endpoint values. Finite \(T_*\) gives their \(L^2(I;H^m)\) memberships and the mixed intersection. The entering domain remains \(\mathscr S_0(I)\). [u-setting:669-708]

For the prescribed forced history retain
\[
\|u_t\|_{L^1H^m}\le\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
+C_m\|u\|_{L^2H^{m+2}}^2+\|\mathbb P f\|_{L^1H^m}.
\]
This again gives continuous spatial rows by integration. In the induction use
\[
Q_n=R_iR_j\sum_{b=0}^n\binom nb(V_b)_i(V_{n-b})_j-\Phi_n,
\quad
V_{n+1}=\nu\Delta V_n-B_n-\nabla Q_n+F_n.
\]
The prescribed smooth source supplies every continuous \(F_n,\Phi_n\); the higher spatial memberships control all product factors. The argument retains this forced history on its own interval, and its original future source at restart. [f-relations:508-570]


**Available outputs**

- Continuous velocity and pressure rows at every finite order, genuine one-sided derivatives, adjacent whole-interval memberships and the full mixed intersection.

**Exact sources**: u-setting:624-714; f-relations:508-570; today:u-setting:610-700

## Prescribed-force constructed jet, finite readouts and continuation

Branch: forced

Fix the original triple \((u_0,\nu,f)\), with \(f\in C^\infty([0,\infty);\mathcal S)\). Every row retains \(F_n=\partial_t^nf\), the source potential \(\Phi_n=(-\Delta)^{-1}\operatorname{div}F_n\), and their initial/terminal values. The native forced construction works on this history, with force work and pressure budgets at each selected finite order. Its direct and height readings remain available. Restart uses the original future \(f(t)\). An unforced interval object cannot substitute for this forced object.

**Available inputs**

- The full original prescribed triple (u_0,nu,f), its smooth Schwartz source jet and its own forced maximal history.
- Complete differentiation and finite-order operations.

### 1. Start with the prescribed fluid

Fix \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\). In the forced branch fix the entire original smooth-in-time, Schwartz-in-space source \(f\), including its future values. Set \(F_n=\partial_t^n f\) and \(\Phi_n=(-\Delta)^{-1}\nabla\cdot F_n\). In the unforced branch set \(f\) and every \(F_n,\Phi_n\) to zero.

Local realization and overlap uniqueness give one maximal pressure-normalized classical history \((T_*,u,p)\) on \([0,T_*)\times\mathbb R^3\). Its evolution is
\[
u(t)=u_0+\int_0^t[\nu\Delta u-(u\cdot\nabla)u-\nabla p+f](s)\,ds,
\qquad
p(t)=R_iR_j(u_i(t)u_j(t))-\Phi_0(t).
\]
The pressure operator uses the velocity throughout space, then evaluates its result at the spatial point under consideration. It retains the prescribed normalization, so no freely chosen function of time is added to pressure. The initial face and local evolution are distinct operations: the initial jet is calculated from \(u_0\) and \(F_n(0)\), while the evolving field uses the complete original \(f(t)\). No convergent Taylor series in time is assumed.

Sources: `author:u-how:e2c9bf4a1e04` 205–235; `author:f-how:f75f1c7c33b0` 5–21; `revision:u-setting:006d0d1f43f9` 403–429. The last source explicitly identifies local construction, overlap uniqueness, the maximal union, and strict-horizon regularity.

### 1a. Construct the actual evolving history

This is the evolving-history operation inside the native constructor. At the initial entry write \(a=u_0\in H^\infty_\sigma(\mathbb R^3)\); at a restart use its incoming velocity as \(a\). Fix \(\nu>0\), and put \(f=g=0\) in the unforced branch. In the forced branch the prescribed input is \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), with \(g=\mathbb P f\); every restart uses the translated original force \(r\mapsto f(s+r)\).

**1. Construct one velocity on a common base interval.** Let
\[
\begin{aligned}
C_q&=\sqrt3\,C_3^{\rm alg},\\
L_\nu&=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2},\\
c_\nu&=(8C_qL_\nu^2)^{-2}.
\end{aligned}
\]
At a restart time \(s\), set \(\Gamma_s=\|g\|_{L^2(s,s+1;H^2)}\) and \(B_s=\|a\|_{H^3}+\Gamma_s\). In the unforced branch \(\Gamma_s=0\). Choose
\[
0<\delta\le\min\{1,c_\nu(1+B_s)^{-2}\},\qquad R=2L_\nu B_s.
\]
After translating \(s\) to zero, use the Banach space
\[
X_\delta=C([0,\delta];H^3_\sigma)\cap L^2(0,\delta;H^4_\sigma),
\quad v_t\in L^2(0,\delta;H^2_\sigma),
\]
with norm equal to the sum of the three displayed norms. On its closed radius-\(R\) ball with trace \(a\), iterate the actual Duhamel map
\[
\begin{aligned}
\Phi(v)(t)={}&e^{\nu t\Delta}a
+\int_0^te^{\nu(t-r)\Delta}g(s+r)\,dr\\
&-\int_0^te^{\nu(t-r)\Delta}
\mathbb P\nabla\cdot(v\otimes v)(r)\,dr.
\end{aligned}
\]
Within the local estimates and recurrences below, \(f\) and \(g\) denote the shifted functions \(t\mapsto f(s+t)\) and \(t\mapsto g(s+t)\). Here \(t\) is elapsed local time. At the initial construction \(s=0\); after overlap identification, \(w(t)=u(s+t)\) and \(q(t)=p(s+t)\).
The source proves the linear estimate \(\|z\|_{X_\delta}\le L_\nu(\|a\|_{H^3}+\|F\|_{L^2H^2})\) for \(z_t-\nu\Delta z=F\), and
\[
\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}
\le C_q\|v\|_{H^3}\|z\|_{H^3}.
\]
Consequently \(\Phi\) preserves this ball and
\[
\|\Phi(v)-\Phi(z)\|_{X_\delta}
\le\frac{B_s}{2(1+B_s)}\|v-z\|_{X_\delta}
\le\tfrac12\|v-z\|_{X_\delta}.
\]
The forced linear trajectory supplies a member of the ball; when \(B_s=0\), the fixed point is zero. Iteration converges in \(X_\delta\) to an actual velocity \(w\), rather than constructing independent formal rows.

**2. Retain every spatial order on this chosen interval.** For \(m\ge3\), let \(S_k\) be restriction of the Fourier transform to \(|\xi|\le k\), and replace \(a,g,\mathbb P\nabla\cdot(v\otimes v)\) in \(\Phi\) by their \(S_k\) projections. The resulting fixed points satisfy \(w^{(k)}=S_kw^{(k)}\) and \(\sup_k\|w^{(k)}\|_{X_\delta}\le R\). No order-dependent reduction of \(\delta\) is introduced. Self-adjointness and commutation remove \(S_k\) from the energy pairing, giving
\[
\frac12\frac d{dt}\|w^{(k)}\|_{H^m}^2
+\nu\|\nabla w^{(k)}\|_{H^m}^2
\le K_m\|\nabla w^{(k)}\|_\infty\|w^{(k)}\|_{H^m}^2
+\|g\|_{H^m}\|w^{(k)}\|_{H^m}.
\]
Here the final term vanishes unforced, and
\[
\|\nabla v\|_\infty\le C_{\nabla,3}\|v\|_{H^3},\qquad
C_{\nabla,3}=(2\pi)^{-3/2}
\left(\int_{\mathbb R^3}|\xi|^2\langle\xi\rangle^{-6}\,d\xi\right)^{1/2}.
\]
Thus \(\int_0^\delta\|\nabla w^{(k)}\|_\infty\le C_{\nabla,3}\delta R\), independently of \(k\) and \(m\). With
\(E_{k,m}(t)=\|w^{(k)}(t)\|_{H^m}^2+2\nu\int_0^t\|\nabla w^{(k)}\|_{H^m}^2\), Gronwall yields
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{2K_mC_{\nabla,3}\delta R}\|a\|_{H^m}^2
\quad\text{(unforced)},
\]
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{\delta+2K_mC_{\nabla,3}\delta R}
\bigl(\|a\|_{H^m}^2+\|g\|_{L^2H^m}^2\bigr)
\quad\text{(forced)}.
\]
The truncated equation also bounds \(\partial_tw^{(k)}\) in \(L^2H^{m-1}\). The contraction estimate
\(\|w^{(k)}-w\|_{X_\delta}\le2\|\Phi_k(w)-\Phi(w)\|_{X_\delta}\to0\)
identifies every higher-order weak limit with this already constructed velocity. Adjacent Hilbert-scale trace then gives
\[
w\in C([0,\delta];H^m_\sigma)\cap L^2(0,\delta;H^{m+1}_\sigma),
\qquad w_t\in L^2(0,\delta;H^{m-1}_\sigma).
\]
For \(m<3\), Sobolev nesting supplies the asserted lower orders. The interval is fixed; the bounds may depend on \(m\).

**3. Recover normalized pressure and actual temporal rows.** Define
\[
q=R_iR_j(w_iw_j)-(-\Delta)^{-1}\nabla\cdot f,
\]
with the force potential omitted unforced. The Riesz multipliers are bounded on every \(H^m\), and the potential is in \(H^m\) because
\[
\|(-\Delta)^{-1}\nabla\cdot h\|_{H^m}
\le C_m^{\rm fp}(\|h\|_{L^1}+\|h\|_{H^m}).
\]
Its low-frequency proof uses \(\int_{|\xi|\le1}|\xi|^{-2}\,d\xi<\infty\) in dimension three; each derivative of the prescribed Schwartz force meets this hypothesis. Set \(W_0=w\), \(F_n=\partial_t^nf\), and recursively define
\[
Q_n=R_iR_j\sum_{a=0}^n\binom naW_{a,i}W_{n-a,j}
-(-\Delta)^{-1}\nabla\cdot F_n,
\]
\[
W_{n+1}=\nu\Delta W_n
-\sum_{a=0}^n\binom na(W_a\cdot\nabla)W_{n-a}
-\nabla Q_n+F_n.
\]
Put \(F_n=0\) and omit its potential unforced. Spatial persistence makes every right-hand side continuous in every fixed lower Sobolev order. The momentum equation starts the induction with \(\partial_tW_0=W_1\); distributional differentiation, mixed Leibniz, and the pressure formula then give
\[
W_n=\partial_t^nw,\qquad Q_n=\partial_t^nq,
\qquad W_n,Q_n\in C([0,\delta];H^m)
\quad(n,m\ge0).
\]
These are derivatives of one evolving velocity and one normalized pressure. Their values at zero give the datum-generated triangular initial face.

**4. Identify the history through every overlap.** Splitting Duhamel at a time \(r\) and applying the heat semigroup identity gives a restart with datum \(w(r)\) and original future force. For two mild histories \(v,z\) with a common left trace on a short interval \(J\) of length \(h\), their difference obeys
\[
\|v-z\|_{C(J;H^3)}
\le L_\nu C_qh^{1/2}M_b\|v-z\|_{C(J;H^3)},
\quad M_b=\|v\|_{C([0,b];H^3)}+\|z\|_{C([0,b];H^3)}.
\]
A finite partition with coefficient below one gives equality over each finite common interval; the fixed force cancels and the normalized pressure formula gives equality of pressures. All nonempty shifted mild classes below their maximal lifespan are compatible. Their union is the unique maximal evolving pressure-normalized \(H^3\) history from the datum. For smooth data, spatial persistence and the displayed recurrences identify its smooth mixed jet on every strict compact time interval.

**Native output scope.** This block opens the datum-to-evolving-history operation inside the native producer. Its local estimates give the common local interval, actual derivatives, and identification of the maximal history. The native theorem states its whole-\(I\) domain output in the source passage developed below; finite selection preserves established memberships. The local estimates above are not a replacement derivation of whole-\(I\) high-order integrability when the maximal endpoint is finite.

Source locators in the embedded source envelopes:

- u-analysis 597–660: mild class, normalized pressure, restriction and classical admission; 662–889: constants and contraction; 891–981: persistence on one chosen interval; 982–1018: actual temporal rows and maximal union.
- f-analysis 256–323: pressure potential domain and multiplier proof; 609–678: forced class and restriction; 680–927: forced constants and contraction; 929–1027: persistence on one chosen interval; 1028–1071: derivatives and maximal union.
- u-analysis 167–202 and f-analysis 167–202 define the multiplication constants; u-analysis 374–402 and the forced transport-commutator counterpart define \(K_m\), including \(K_m\le(7^m-1)(2m-4+\sqrt3)^{(m-1)^2/4}\).

### 2. Produce the first six pressure/velocity outputs at free \((t,x)\)

Put \(V_0=u\). Every equality below is an equality of fields on \([0,T_*)\times\mathbb R^3\), classically on strict horizons. Every product inside a Riesz operator is a function of the spatial variable; the operator result is evaluated at \((t,x)\). Summation over \(i,j\in\{1,2,3\}\) is understood.
\[
\begin{aligned}
Q_0(t,x)&=\left[R_iR_j(u_i u_j)\right](t,x)-\Phi_0(t,x),\\
V_1(t,x)&=\nu\Delta u(t,x)-(u\cdot\nabla)u(t,x)-\nabla Q_0(t,x)+F_0(t,x),\\
Q_1(t,x)&=\left[R_iR_j\big((V_1)_iu_j+u_i(V_1)_j\big)\right](t,x)-\Phi_1(t,x),\\
V_2(t,x)&=\nu\Delta V_1(t,x)-(V_1\cdot\nabla)u(t,x)
 -(u\cdot\nabla)V_1(t,x)-\nabla Q_1(t,x)+F_1(t,x),\\
Q_2(t,x)&=\left[R_iR_j\big((V_2)_iu_j+2(V_1)_i(V_1)_j+u_i(V_2)_j\big)\right](t,x)-\Phi_2(t,x),\\
V_3(t,x)&=\nu\Delta V_2(t,x)-(V_2\cdot\nabla)u(t,x)
 -2(V_1\cdot\nabla)V_1(t,x)\\
&\hspace{9mm}-(u\cdot\nabla)V_2(t,x)-\nabla Q_2(t,x)+F_2(t,x).
\end{aligned}
\]

The factor 2 in the last two rows comes from the two allocations of one time derivative to each velocity factor. These are not recursively chosen candidate fields: differentiation of the realized history gives \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\). Thus \(Q_0\) is produced from the spatial velocity product and prescribed source; \(V_1\) uses momentum; differentiating the pressure product produces \(Q_1\); differentiating momentum then produces \(V_2\), and this order repeats.

The general row records this operation without discarding any term:
\[
\begin{aligned}
 B_n&=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\\
 Q_n&=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,\\
 V_{n+1}&=\nu\Delta V_n-B_n-\nabla Q_n+F_n.
\end{aligned}
\]
Sources: `author:u-how:e2c9bf4a1e04` 112–133, 205–235; `author:f-how:f75f1c7c33b0` 40–67. The six displayed rows are direct binomial expansions of those sourced recurrences.

### 3. Evaluate the equations initially

Let \(A_n(x)=V_n(0,x)\), \(P_n(x)=Q_n(0,x)\). Evaluation gives the concrete triangular calculation
\[
\begin{aligned}
A_0&=u_0,\\
P_0&=R_iR_j((u_0)_i(u_0)_j)-\Phi_0(0),\\
A_1&=\nu\Delta u_0-(u_0\cdot\nabla)u_0-\nabla P_0+F_0(0),\\
P_1&=R_iR_j((A_1)_i(u_0)_j+(u_0)_i(A_1)_j)-\Phi_1(0),\\
A_2&=\nu\Delta A_1-(A_1\cdot\nabla)u_0-(u_0\cdot\nabla)A_1-\nabla P_1+F_1(0),\\
P_2&=R_iR_j((A_2)_i(u_0)_j+2(A_1)_i(A_1)_j+(u_0)_i(A_2)_j)-\Phi_2(0),\\
A_3&=\nu\Delta A_2-(A_2\cdot\nabla)u_0-2(A_1\cdot\nabla)A_1
 -(u_0\cdot\nabla)A_2-\nabla P_2+F_2(0).
\end{aligned}
\]
Every expression here is a field on \(\mathbb R^3\). At order \(n\), the pressure and next velocity use already determined velocity rows \(A_0,\ldots,A_n\) and the fixed source row \(F_n(0)\). Finite-order multiplication and the normalized pressure construction put each required initial row in every finite spatial Sobolev order, as stated by the source's initial-jet lemma. This supplies the initial face, rather than a bound for integration up to \(T_*\).

Sources: `revision:u-setting:afb54c1cdd30` 498–518; `today:f-setting` 548–565. The displayed early rows expand those initial recurrences.

### 4. Produce spatial rows without changing the history

For a multi-index \(\alpha\), set \(J_{n,\alpha}=\partial_x^\alpha V_n\), \(\Pi_{n,\alpha}=\partial_x^\alpha Q_n\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). The complete equation is
\[
 J_{n+1,\alpha}=\nu\Delta J_{n,\alpha}
 -\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 -\nabla\Pi_{n,\alpha}+F_{n,\alpha},
\]
\[
 \Pi_{n,\alpha}=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta})_i(J_{n-a,\alpha-\beta})_j
 -(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]
These remain fields on the original \([0,T_*)\times\mathbb R^3\); at zero they become \(\partial_x^\alpha A_n\), \(\partial_x^\alpha P_n\). For example, a first spatial derivative of the original row contains both \((\partial_\ell u\cdot\nabla)u\) and \((u\cdot\nabla)\partial_\ell u\), the viscous term \(\nu\Delta\partial_\ell u\), the pressure term \(\nabla\partial_\ell p\), and \(\partial_\ell f\).

A selected equation retains \(J_{n+1,\alpha}\), all \(J_{n,\alpha+2e_\ell}\), all \(\Pi_{n,\alpha+e_\ell}\), both factors of every transport product, and both factors of every differentiated pressure product. The forced record also retains the direct source and pressure-source coordinates. This is a finite dependency cover for selected equations; it does not impose an autonomous closure on the outer coordinates. Trying to evolve the last retained temporal entry invokes the next derivative and moves the boundary outward. No finite evolution solver is demanded: the entries are derivatives of the original history, as the source explicitly states.

Sources: `revision:u-setting:afb54c1cdd30` 520–561; `today:f-setting` 567–611.

The independently formed completed-height relationships and the whole-interval output are developed below, followed by their permitted projections and direct uses.

This view follows the actual How the Proof Works construction as one continuous mathematical account. The original prescribed triple (u_0,nu,f) and every source and pressure-potential derivative remain fixed throughout. The equations, their domains and the independent entries are kept together.

Fix the original triple \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\), \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), and its pressure-normalized maximal classical history. At a proposed finite maximal time put \(I=(0,T_*)\). Every row below belongs to this prescribed forced history. The formulas expand the complete source entry, viscous correspondence, completed critical heights, all-orders spatial return and compatible finite projection. The native theorem retains its supplied whole-terminal output, while an already complete mixed, spatial or height graph has the direct entry displayed below. [author:f-how:f75f1c7c33b0:5–21,70–111]

Write

\[
V_n=\partial_t^nu,\quad Q_n=\partial_t^np,\quad
J_{n,\alpha}=\partial_x^\alpha V_n,\quad
\Pi_{n,\alpha}=\partial_x^\alpha Q_n,
\]

and in the forced branch put \(F_n=\partial_t^nf\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). Set every \(F_n\) to zero for the unforced branch. Define

\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]

The full temporal and pressure rows are

\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\]

\[
-\Delta Q_n=\partial_i\partial_j
 \sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\nabla\cdot F_n,
\]

\[
Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,
\qquad \Phi_n=(-\Delta)^{-1}\nabla\cdot F_n.
\]

The spatially differentiated row contains every allocation of every derivative:

\[
\begin{aligned}
J_{n+1,\alpha}
&+\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha} \\
&=\nu\Delta J_{n,\alpha}+F_{n,\alpha},
\end{aligned}
\]

\[
\Pi_{n,\alpha}
=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 J_{a,\beta,i}J_{n-a,\alpha-\beta,j}
-(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]

Incompressibility is retained in every velocity row. The pressure formula is fixed by the normalized \(H^0\) pressure; a harmonic \(H^0\) difference has Fourier support at \(\{0\}\) and vanishes. [author:u-how:5a06882c5628:105–140; author:f-how:f75f1c7c33b0:40–68; today:f-setting:1–55,567–611]

At zero the operation is an explicit recursion. With \(A_n=V_n(0)\) and \(P_n=Q_n(0)\),

\[
\begin{aligned}
A_0&=u_0,\\
P_n&=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j-\Phi_n(0),\\
A_{n+1}&=\nu\Delta A_n
-\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}
-\nabla P_n+F_n(0).
\end{aligned}
\]

At step \(n\), each velocity input has already been determined. Multiplication, differentiation and the fixed pressure multipliers put each required initial row in every finite Sobolev order. Taking \(\partial_x^\alpha\) gives the initial mixed face. This recursion determines the initial derivatives and their overlap identity; it is not a time-Taylor convergence assumption. [revision:u-setting:006d0d1f43f9:498–518; today:f-setting:548–565]

For an equation \((n,\alpha)\), retain \(J_{n+1,\alpha}\), all three \(J_{n,\alpha+2e_\ell}\), \(\Pi_{n,\alpha+e_\ell}\), and every pair \(J_{a,\beta,i}\), \(J_{n-a,\alpha-\beta+e_i}\) occurring in transport. For pressure retain every product allocation needed at \(\gamma=\alpha\) and \(\gamma=\alpha+e_\ell\). The forced record also keeps \(F_{n,\alpha}\) and the force-potential coordinates at those pressure indices. This finite dependency cover belongs to the original full field. [revision:u-setting:006d0d1f43f9:520–561; today:f-setting:567–611]

Apply \(\mathbb P\) to the complete temporal row, use \(\Delta=-\Lambda^2\), and commute \(\Lambda^s\) with the projection:

\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n
=\Lambda^s\mathbb P(F_n-B_n).
\tag{1}
\]

Here the next temporal derivative and two more spatial derivatives occur in one vector equality, with the entire nonlinear face retained. On squaring, the cross term is

\[
\begin{aligned}
2\nu\operatorname{Re}\langle\Lambda^sV_{n+1},\Lambda^{s+2}V_n\rangle
&=2\nu\operatorname{Re}\langle\Lambda^{s+1}\partial_tV_n,
                                  \Lambda^{s+1}V_n\rangle\\
&=\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2.
\end{aligned}
\]

Consequently,

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s\mathbb P(F_n-B_n)\|_2^2.
\tag{2}
\]

The complementary projection reads

\[
\nabla Q_n=(I-\mathbb P)(F_n-B_n).
\]

Orthogonality of these projections puts the pressure face back into the positive square:

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\tag{3}
\]

Integrating from zero to a strict time \(S<T_*\) keeps the boundary derivative:

\[
\begin{aligned}
&\nu\|\Lambda^{s+1}V_n(S)\|_2^2
+\int_0^S\bigl(\|\Lambda^sV_{n+1}\|_2^2
 +\nu^2\|\Lambda^{s+2}V_n\|_2^2
 +\|\Lambda^s\nabla Q_n\|_2^2\bigr)\,dt\\
&\qquad=\nu\|\Lambda^{s+1}A_n\|_2^2
 +\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2\,dt.
\end{aligned}
\tag{4}
\]

This is the actual complete-row relation used by the author. Each identity first holds on a strict classical interval; in an admitted finite whole-interval rectangle it is evaluated at the finite orders required by that rectangle. Equation (4) is a relationship among its temporal, spatial, pressure, force and transport coordinates. [author:f-how:f75f1c7c33b0:113–151; f-relations:189–252; revision:u-setting:006d0d1f43f9:431–443]

Set

\[
E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\qquad H=E_{0,1/2},
\]

\[
\mathcal P_{r,s}
=-\operatorname{Re}\langle\Lambda^sV_r,
                       \Lambda^s(B_r+\nabla Q_r)\rangle,
\qquad
\mathcal W_{r,s}
=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\]

Pairing the complete row with \(\Lambda^{2s}V_r\) gives

\[
\partial_tE_{r,s}
=-2\nu E_{r,s+1}+\mathcal P_{r,s}+\mathcal W_{r,s}.
\tag{5}
\]

The viscous contribution follows from

\[
\nu\operatorname{Re}\langle\Lambda^sV_r,\Lambda^s\Delta V_r\rangle
=-\nu\|\Lambda^{s+1}V_r\|_2^2.
\]

The pressure term is retained inside the complete current. The unforced reading has \(\mathcal W=0\). [author:u-how:5a06882c5628:142–190; u-relations:54–146; author:f-how:f75f1c7c33b0:153–180; f-relations:68–163]

The velocity-to-height map itself retains every temporal split:

\[
H^{(q)}
=\tfrac12\sum_{a=0}^q\binom qa
  \operatorname{Re}\langle\Lambda^{1/2}V_a,
                          \Lambda^{1/2}V_{q-a}\rangle.
\tag{6}
\]

Thus \(H^{(q)}\) differentiates the critical quadratic energy. It is not \(E_{q,1/2}\). To make “retain the differentiated currents” executable for a fresh reader, the ordinary Leibniz rule expands them as

\[
\partial_t^q\mathcal P_{r,s}
=-\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},
        \Lambda^s(B_{r+q-a}+\nabla Q_{r+q-a})\rangle,
\tag{7}
\]

\[
\partial_t^q\mathcal W_{r,s}
=\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},\Lambda^sF_{r+q-a}\rangle.
\tag{8}
\]

These follow because \(\partial_t^bB_r=B_{r+b}\) and \(\partial_t^bQ_r=Q_{r+b}\). Substituting the displayed product formula for \(B_j\) and the normalized product/potential formula for \(Q_j\) expands each into finitely many actual jet coordinates. Equations (7)–(8) are explicit product-rule expansions of the source's retained currents; they add no new existence premise.

For brevity let \(C_{r,s}=\mathcal P_{r,s}+\mathcal W_{r,s}\). Successive substitution of (5) gives

\[
\begin{aligned}
H'&=-2\nu E_{3/2}+C_{0,1/2},\\
H''&=4\nu^2E_{5/2}-2\nu C_{0,3/2}+\partial_tC_{0,1/2},\\
H^{(k)}&=(-2\nu)^kE_{k+1/2}
 +\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}.
\end{aligned}
\tag{9}
\]

To verify the induction, differentiate the order-\(k\) expression. Its leading term becomes

\[
(-2\nu)^k\partial_t E_{k+1/2}
=(-2\nu)^{k+1}E_{k+3/2}+(-2\nu)^kC_{0,k+1/2},
\]

which is exactly the new terminal summand of the order-\(k+1\) expression. The other summands receive one additional time derivative. With \(\nu>0\), the leading coefficient is nonzero, so the actual inverse operation is

\[
R_0=H,\qquad
R_k=
\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}}
{(-2\nu)^k}
=E_{k+1/2}.
\tag{10}
\]

The analogous formula for every temporal row replaces \(H^{(k)}\) by \(\partial_t^kE_{r,1/2}\), \(C_{0,s}\) by \(C_{r,s}\), and \(E_{k+1/2}\) by \(E_{r,k+1/2}\). This is a triangular coordinate correspondence. The current derivatives in (7)–(8) stay attached through the inversion. [u-relations:90–168; f-relations:103–184]

### Follow the native blocks, heights and recurrence on their actual domains

Fix one original history and \(I=(0,T_*)\). Whole-interval membership means that each selected defining integral over I is finite. It requires no common constant across all derivative orders. Fields defined at every interior time and fields with finite norms over I are distinct assertions.

**Initial and evolving rows.** The initial recurrences construct the full initial jet from \((u_0,\nu)\), or \((u_0,\nu,f)\). Local iteration and uniqueness construct one maximal history. Differentiation identifies its actual mixed rows and their complete equations on every strict classical interval. The displayed local iteration gives a positive interval depending on the current \(H^3\) datum and the prescribed force. [revision:u-setting:afb54c1cdd30:399–443,498–561; today:f-setting:432–481,548–629; u-analysis:671–694; f-analysis:680–717]

**Independently derived height coordinates.** Put \(C_s=\mathcal P_s+\mathcal W_s\), with \(\mathcal W_s=0\) unforced. Pairing the original equation gives
\[
E_s'=C_s-2\nu E_{s+1},
\qquad
R_k=\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{j+1/2}}
{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2.
\]
This identity is obtained by differentiation and substitution, retaining every transport, pressure and force-work term. Its derivation does not use finite rectangle norms. The identity and the assertion \(R_k\in L^1(I)\) have different roles. [u-relations:90–169; f-relations:103–187]

**The native whole-interval constructor.** Its output carries, for each finite N,M,
\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N.
\]
The constructor starts from the original datum, fixed viscosity and original prescribed force when present. It retains the evolving velocity, normalized pressure, complete mixed equations and their Sobolev domains on I. Its finite Sobolev graphs, restriction maps and compatible limit are expanded at each construction passage. The native theorem supplies this constructed family; the complete original theorem and proof bodies accompany that use. [revision:u-setting:afb54c1cdd30:454–623; today:f-setting:487–673]

**Finite selection and direct mixed exhaustion.** A finite selection of a jet carrying these domains preserves I, the fields, their weak derivative identities and normalized pressure. Its norm is the finite sum of those defining integrals. Restriction decreases the integrals, and monotone convergence identifies their supremum with the whole-I value. For fixed r,m, selecting enough rows gives
\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^{r}\|V_n\|_{L^2(I;H^m)}^2.
\]
No membership-generating operation follows that selection. A complete mixed intersection is also a direct entry from which finite rows can be selected. [u-relations:207–313; today:f-setting:681–708,747–791; f-relations:392–440]

**Integrated heights and spatial exhaustion.** The source obtains the height integral using the native finite block:
\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}^*.
\]
It then splits Fourier space into low and high frequencies to obtain
\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\bigl(\|u\|_{L^2(I;L^2)}^2
+2\|R_m\|_{L^1(I)}\bigr).
\]
Kinetic energy controls the first term, including prescribed source work in the forced branch. The native block controls the second term in this source route. An already integrated complete height graph can instead supply that term directly. [u-relations:315–392; f-relations:442–505]

**Return through the recurrence.** Starting with the complete spatial interval column, products and diffusion give \(u_t\in L^1(I;H^m)\), hence a continuous \(H^m\) representative up to the endpoint. With \(M_{n,m}=\sup_{[0,T_*]}\|V_n\|_{H^m}\), the recurrence gives the finite bound
\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m\sum_{a=0}^{n}\binom naM_{a,m+2}M_{n-a,m+2}
+\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\]
All velocity factors on the right have temporal order at most n. The normalized pressure formula recovers Q_n; every F_n vanishes unforced. Finite interval length converts these continuous rows into the mixed Sobolev intersection. Thus the return is a genuine construction from the whole-I spatial column, with that column retained as its input. [revision:u-setting:afb54c1cdd30:668–758; f-relations:508–570]

The native whole-I blocks feed both readings: direct mixed exhaustion, and completed heights → spatial Sobolev column → recurrence return. The height identities arise by differentiating the original energy rows; their evaluation on the constructed family retains its full interval and defining integrals. Both readings agree on every velocity and pressure coordinate. The displayed Sobolev graphs and projection maps make this assembly explicit.

**The complete positive square retains transport.** In the forced branch its integrated right side contains \(\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt\), with F_n=0 unforced. The source bounds the nonlinear factors using the available velocity rectangle; the prescribed force contribution has its own finite budget. The complete square keeps its boundary values and transport-force source; the stated product bounds evaluate that source on the retained finite graph. [f-relations:189–382]

Once the relevant whole-I rows are available, compatible traces, normalized endpoint recurrences, local restart and overlap uniqueness continue the original history. The original future force remains attached throughout the forced branch.



### Complete binomial cancellation

For divergence-free \(a\), put
\[
T(a,b,c)=\int (a\cdot\nabla)b\cdot c\,dx.
\]
Integration by parts gives \(T(a,b,c)=-T(a,c,b)\). Differentiating the kinetic transport pairing k times retains the complete allocation
\[
\sum_{a+b+c=k}\frac{k!}{a!b!c!}
\int (V_a\cdot\nabla)V_b\cdot V_c\,dx=0.
\]
For each a, exchanging b,c preserves the coefficient and reverses the sign. Every pressure pairing vanishes by the retained divergence identities. Thus the complete row gives
\[
\partial_t^{k+1}\!\left(\tfrac12\|u\|_2^2\right)
+\nu\partial_t^k\|\nabla u\|_2^2
=\partial_t^k\langle u,f\rangle.
\]
All source derivatives remain in the forced branch; set f=0 unforced. The contracted quadratic coordinate is
\[
\partial_t^k\!\left(\tfrac12\|u\|_2^2\right)
=\tfrac12\sum_{a=0}^k\binom ka\langle V_a,V_{k-a}\rangle.
\]
At k=2 it is \(\|V_1\|_2^2+\langle u,V_2\rangle\): the central square comes with its actual crossed pairing. The positive diagonal faces are read through the squared-row identity above, retaining its full transport-force source. This calculation keeps the original fields throughout. [u-relations:14–46,54–147; f-relations:13–60,68–163]



### Integrate the completed ladder with its boundary currents

Write \(c=-2\nu\), \(R_j=E_{0,j+1/2}\), and \(C_j=\mathcal P_{0,j+1/2}+\mathcal W_{0,j+1/2}\), with every \(\mathcal W=0\) unforced. The displayed ladder says
\[
H^{(k)}=c^kR_k+\sum_{j=0}^{k-1}c^jC_j^{(k-1-j)}.
\]
For k at least one define the full endpoint current
\[
A_k=H^{(k-1)}-\sum_{j=0}^{k-2}c^jC_j^{(k-2-j)}
=c^{k-1}R_{k-1}.
\]
The sum is empty at k=1. Integrating the preceding order-k identity on \((0,S)\), \(S<T_*\), gives
\[
c^k\int_0^S R_k\,dt
=[A_k]_0^S-c^{k-1}\int_0^S C_{k-1}\,dt.
\]
Divide by \(c^{k-1}\) and retain both endpoints:
\[
2\nu\int_0^S R_k\,dt
=R_{k-1}(0)-R_{k-1}(S)
+\int_0^S C_{k-1}\,dt.
\]
All differentiated transfer and force currents have telescoped into the adjacent energy and its full accumulated work. This is the integrated native ladder, evaluated on the original history. Its passage to the whole interval retains that coupled budget. On an available native whole-I block the memberships are already carried by the fields; finite selection adds no separate estimate. These identities expand the operation without changing that domain account. [u-relations:90–169; f-relations:103–184]

### The native source theorem and its whole-interval output

The native theorem states that its constructed evolving pressure-complete jet carries the whole-interval Sobolev domains. Finite selection preserves such domains. The dependency walk above follows both the native assertion and the completed-height return, retaining the inputs used at each step. The original proof bodies below expose the source reasoning behind the assertion; the exposition imposes no instruction to accept or reject it.

The datum construction concerns the original pressure-normalized history. Its output is the whole-terminal pressure-complete jet on \(I\): the actual fields \(J_{n,\alpha}=\partial_x^\alpha\partial_t^nu\) and \(\Pi_{n,\alpha}=\partial_x^\alpha\partial_t^np\), their governing identities, their prescribed initial face, and their compatible Sobolev memberships. For every finite \(n,m,\alpha\), these include
\[
J_{n,\alpha}\in L^2(I;H^m),\qquad
\Pi_{n,\alpha}\in L^1(I;H^m).
\]
The branch data determine which constructed jet is carried: \((u_0,\nu)\) unforced, or the entire original \((u_0,\nu,f)\) forced. The equations above explain its field coordinates and the independently originated height relations. The whole-terminal memberships belong to that construction's output and travel with its coordinates. In the following selection, \(N,M\) change which coordinates are retained, while \(I\) remains fixed. [author:u-how:e2c9bf4a1e04:205–347; revision:u-setting:afb54c1cdd30:454–495,563–623; author:f-how:f75f1c7c33b0:69–112,181–248; today:f-setting:487–546,631–708]

For any finite \(N,M\), select the record

\[
\mathcal R_{N,M}
=\bigl((V_n)_{0\le n\le N},(V_{n+1})_{0\le n\le N};
       (Q_n)_{0\le n\le N};(F_n)_{0\le n\le N}\bigr).
\]

The force coordinates are absent in the unforced record. The whole-terminal output of that native entry is the adjacent pair

\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N,
\quad I=(0,T_*),
\tag{11}
\]

with the pressure and mixed-coordinate memberships in the theorem.

The current dependency account distinguishes construction from finite selection. In the unforced source, the datum-generated whole-terminal jet already contains its compatible Sobolev coordinates on \(I\). The finite record is its coordinate projection:
\[
\mathcal R_{N,M}=\pi_{N,M}\mathcal J^{\mathrm{whole}}[u_0,\nu;I].
\]
Selecting \(V_n,V_{n+1},Q_n\) retains their original interval and the identity \(\partial_tV_n=V_{n+1}\). Equation (11) reads memberships already contained in that constructed object. It does not request an additional placement operation from the selected finite graph. [revision:u-setting:afb54c1cdd30:563–578; author:u-how:e2c9bf4a1e04:255–280]

The prescribed-force branch retains its own input \((u_0,\nu,f)\), force jet and pressure potential. Its current source states the native whole-interval outputs inside the forced datum construction after the complete initial face, coupled graph, both projections and source payment. Once this native output, a completed forced mixed intersection, or a completed spatial interval column is available, use its finite coordinates directly. No unforced construction supplies a forced input, and no second placement is imposed after a completed forced object. [today:f-setting:548–641,643–708]

#### The constructed Sobolev graph and its finite readouts

Fix the original branch data b: \((u_0,\nu)\) unforced, or \((u_0,\nu,f)\) forced, with the entire prescribed future force retained. Keep \(I=(0,T_*)\). For finite N and M at least three define the adjacent-row Hilbert graph
\[
D_{N,M}(I)=\{(v_0,\ldots,v_{N+1}):
\partial_tv_n=v_{n+1},\quad 0\le n\le N,\quad
\|v\|_{N,M}<\infty\},
\]
where \(\|v\|_{N,M}^2\) is the adjacent Sobolev norm in (12). Distributional differentiation is closed under convergence in its factors, so D is complete. The adjacent trace supplies \(v_n(0)\) for n at most N. Attach the datum-generated initial face, normalized pressure formula, full binomial products and original force, and impose the displayed momentum rows. This defines the closed coupled graph \(G^b_{N,M}(I)\). Product and pressure continuity follow from the preceding analytic operations. Every mixed coordinate is a derivative of these fields. Larger M covers all lower target orders.

Restriction \(\rho\) deletes outer temporal coordinates and uses the continuous spatial Sobolev inclusions. It preserves I, the derivative identities, normalized pressure, initial face and prescribed force. The native construction's supplied output is the coherent family
\[
\Gamma_b=\mathcal C_b(I)\in
\varprojlim_{N,M}G^b_{N,M}(I),
\qquad \rho\Gamma_{b;N,M}=\Gamma_{b;N',M'}.
\]
The source theorem supplies this element. Its finite readout is exactly
\[
\mathcal R^b_{N,M}=\pi_{N,M}\Gamma_b\in G^b_{N,M}(I).
\]
Thus its Sobolev memberships and finite defining norm are coordinates of the available output. Selection changes indices and has the identity time map on I. It introduces no further whole-interval estimate. [revision:u-setting:afb54c1cdd30:563–600; today:f-setting:631–708]

To assemble the limit explicitly, take the cofinal sequence \((N,M)=(k,k+3)\). Compatible finite coordinates identify one distributional field \(v_0=u\), with \(v_n=\partial_t^nu\). For any finite r,m choose k at least max(r,m). Then
\[
\sum_{n=0}^r\|\partial_t^nu\|_{L^2(I;H^m)}^2
\le\|\pi_{k,k+3}\Gamma_b\|_{k,k+3}^2<\infty.
\]
This produces the mixed intersection as a readout of the constructed family. Each finite norm is available; no bound common to derivative orders is imposed. The complete binomial cancellation and integrated height telescope above retain their full currents and boundary terms. The spatial reconstruction, acceleration estimate, endpoint and restart below consume this available object and its finite projections.

The following operations use those available objects:

| Available object | Operation | Usable output |
| --- | --- | --- |
| Constructed whole-terminal jet or its adjacent rows | Select finite coordinates and sum defining squared norms | The finite whole-terminal rectangle norm (12) |
| That finite norm on \(I\) | Restrict nonnegative integrals and exhaust strict horizons | The cutoff supremum (13) |
| Compatible finite mixed records | Exhaust mixed indices | The mixed intersection (14) |
| An already supplied completed mixed intersection | Select finite derivative coordinates | Adjacent rows and norm directly, by (15) |
| Completed integrated heights with full currents | Fourier split, then use the original equation | The spatial column and actual temporal/pressure rows |

Once these finite memberships are available, their defining squared norms give

\[
\mathfrak R_{N,M}(T_*)
=\sum_{n=0}^N\left(
 \|V_n\|_{L^2(I;H^{M+1})}^2+
 \|V_{n+1}\|_{L^2(I;H^{M-1})}^2\right)<\infty.
\tag{12}
\]

Restriction to \((0,S)\) decreases each nonnegative integral. Monotone convergence identifies

\[
\sup_{S<T_*}\mathfrak R_{N,M}(S)
=\lim_{S\uparrow T_*}\mathfrak R_{N,M}(S)
=\mathfrak R_{N,M}(T_*).
\tag{13}
\]

The constant may depend on \(N,M,u_0,\nu,f,T_*\). No common constant over infinitely many orders is required. Enlarging the rectangle retains identical distributional derivatives, the identical initial recursion and the identical pressure normalization. Deleting outer coordinates recovers the smaller record. [author:u-how:5a06882c5628:265–289; author:f-how:f75f1c7c33b0:182–220; revision:u-setting:006d0d1f43f9:574–615; today:f-setting:643–672]


### Material acceleration is a readout of the native finite block

The native datum entry has no additional material-acceleration premise. Take its already obtained whole-I selection \(N=0,M=1\), and put
\[
r_u=\|u\|_{L^2(I;H^2)}^2,\qquad
r_t=\|u_t\|_{L^2(I;L^2)}^2,\qquad
R=r_u+r_t,\quad I_1=\|u_0\|_{H^1}^2.
\]
The original fields and interval I are retained throughout. The adjacent-row identity gives
\[
\frac d{dt}\|u\|_{H^1}^2
=2\operatorname{Re}\langle J^2u,u_t\rangle,
\qquad J=(1-\Delta)^{1/2},
\]
so integration and \(2ab\le a^2+b^2\) give
\[
\sup_{t\in I}\|u(t)\|_{H^1}^2\le I_1+R.
\]
With the source's fixed embedding constant \(C_E=(8\pi)^{-1/2}\),
\[
\|u\|_{L^2(I;L^\infty)}^2\le C_E^2r_u.
\]
At each time, \(\|(u\cdot\nabla)u\|_2\le\|u\|_\infty\|\nabla u\|_2\). Thus
\[
\|B_0\|_{L^2(I;L^2)}^2
\le C_E^2(I_1+R)r_u,
\]
and the original material acceleration has the finite budget
\[
\begin{aligned}
\mathcal A_*:=\|D_tu\|_{L^2(I;L^2)}^2
&\le 2r_t+2C_E^2(I_1+R)r_u\\
&\le 2R+2C_E^2(I_1+R)R<\infty.
\end{aligned}
\]
This is a composition of the native output, trace, embedding and the identity \(D_tu=u_t+B_0\). It produces an acceleration bound from a finite native block; it does not ask the native constructor to assume that bound. The original force, pressure and governing history remain fixed in either branch. [r-body:453–460,577–590,1569–1585]

The optional **material** entry proves the reverse sufficient implication from an independently supplied finite acceleration budget through the elliptic square, spatial Gronwall bounds, recurrence and endpoint. That implication is available when its input is supplied. It is neither the native constructor's definition nor an extra generating requirement after finite selection.

### Complete the selected interval pressure rows

For a fixed temporal order \(n\), spatial multi-index \(\alpha\) and target spatial order \(m\ge0\), retain both velocity factors in every pressure-product allocation. Put
\[
\Phi_{n,\alpha}=(-\Delta)^{-1}\operatorname{div}F_{n,\alpha}.
\]
At each time, the finite-order multiplication estimate \(H^{m+1}\cdot H^{m+1}\to H^m\) and boundedness of the Riesz transforms give
\[
\begin{aligned}
\|\Pi_{n,\alpha}(t)\|_{H^m}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}(t)\|_{H^{m+1}}
\|J_{n-a,\alpha-\beta}(t)\|_{H^{m+1}}
+\|\Phi_{n,\alpha}(t)\|_{H^m}.
\end{aligned}
\]
Integrate on the retained interval \(I\) and apply Cauchy–Schwarz separately to each product:
\[
\begin{aligned}
\|\Pi_{n,\alpha}\|_{L^1(I;H^m)}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}\|_{L^2(I;H^{m+1})}
\|J_{n-a,\alpha-\beta}\|_{L^2(I;H^{m+1})}
+\|\Phi_{n,\alpha}\|_{L^1(I;H^m)}<\infty.
\end{aligned}
\]
Choose a finite cut with \(N\ge n\) and \(M\ge m+|\alpha|\). Its available \(V_a\in L^2(I;H^{M+1})\) coordinates supply every velocity norm on this right-hand side after spatial differentiation. The bound for \(\nabla\Pi_{n,\alpha}\) in \(L^1(I;H^{m-1})\) follows by differentiation. At \(\alpha=0\), this is the temporal pressure estimate. In the unforced branch \(\Phi_{n,\alpha}=0\); in the forced branch the prescribed smooth Schwartz source and its potential budget supply the final term. Every pressure coordinate is thus read from its actual selected factors, with \(I\) unchanged. This operation consumes the constructed interval velocity coordinates; it does not generate their memberships. [author:u-how:e2c9bf4a1e04:283–295; revision:u-setting:afb54c1cdd30:602–612; today:f-setting:280–330,613–641]

The direct mixed reading chooses, for each requested finite \(r,m\), a rectangle containing \(V_0,\ldots,V_r\) at spatial order \(m\). Since these are the weak derivatives of \(u\),

\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^r\|V_n\|_{L^2(I;H^m)}^2<\infty.
\tag{14}
\]

Taking every finite pair gives \(u\in\bigcap_{r,m\ge0}H^r(I;H^m)\). The converse finite operation is direct projection: if this complete mixed intersection is the entering object, select its finitely many rows without repeating the datum construction. In particular,

\[
\mathfrak R_{N,M}(T_*)
\le 2\|u\|_{H^{N+1}(I;H^{M+1})}^2.
\tag{15}
\]

This entry needs no completed-height calculation. [revision:u-setting:006d0d1f43f9:621–655; today:f-setting:681–708]

The completed-height reading uses (10) on the native rows. For each finite \(k\),

\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}(T_*).
\tag{16}
\]

For the reverse spatial passage, split Fourier space at \(|\xi|=1\). The weight \((1+|\xi|^2)^m\) is at most \(2^m\) on the inner region and at most \(2^m|\xi|^{2m+1}\) on the outer region. It follows that

\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\left(\|u\|_{L^2(I;L^2)}^2+2\|R_m\|_{L^1(I)}\right).
\tag{17}
\]

The kinetic identity gives the low-frequency floor. Unforced,

\[
\tfrac12\|u(t)\|_2^2+\nu\int_0^t\|\nabla u\|_2^2
=\tfrac12\|u_0\|_2^2.
\]

Forced, put \(K_f(t)=\|u_0\|_2+\int_0^t\|\mathbb Pf(s)\|_2\,ds\). Pairing with \(u\), using incompressibility and then the scalar square-root estimate gives \(\|u(t)\|_2\le K_f(t)\). Thus the floor in (17) is bounded by \(T_*\|u_0\|_2^2\) or \(T_*K_f(T_*)^2\), respectively. The floor controls low frequencies; it is not promoted to an all-orders construction. [u-relations:14–45,315–392; f-relations:13–60]

Equations (16)–(17) show how the complete integrated height graph and the complete spatial \(L^2\) column encode one another. A reader entering with the complete height graph and every \(R_k\in L^1(I)\) can perform (17) directly. A reader entering with the spatial column can omit both (16) and the scalar height construction. Pointwise all-order Sobolev membership and interval all-order Sobolev membership are retained with their distinct domains.

This entry begins with the explicit whole-interval object

\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma),
\qquad T_*<\infty.
\tag{18}
\]

It is independent of how that column was obtained. At each finite target \(m\), the available \(m+2\) order gives

\[
\|\mathbb P\nabla\cdot(u\otimes u)\|_{L^1H^m}
\le C_m\|u\|_{L^2H^{m+2}}^2,
\quad
\|\Delta u\|_{L^1H^m}
\le\sqrt{T_*}\|u\|_{L^2H^{m+2}}.
\]

Substitution into the original projected equation yields

\[
\|u_t\|_{L^1H^m}
\le\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}<\infty.
\tag{19}
\]

Banach integration produces \(u\in W^{1,1}(I;H^m)\subset C([0,T_*];H^m)\) and the explicit bound

\[
M_{0,m}=\|u_0\|_{H^m}
 +\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}.
\]

Suppose \(V_0,\ldots,V_n\) are continuous in every finite spatial order. In the projected recurrence the available higher spatial orders, multiplication and source jet give the finite next-row bound

\[
M_{n+1,m}=\nu M_{n,m+2}
 +C_m\sum_{a=0}^n\binom naM_{a,m+2}M_{n-a,m+2}
 +\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\tag{20}
\]

Every term on the right has temporal order at most \(n\). The pressure formula recovers \(Q_n\) at any requested finite order, including \(-\Phi_n\) in the forced branch. On the interior the continuous vector expression equals \(\partial_tV_n\), and

\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau
\]

extends to \(0\le s\le t\le T_*\). It identifies the actual one-sided endpoint derivatives. Induction gives \(V_n,Q_n\in C([0,T_*];H^m)\) at every finite \(n,m\). Finite interval length then gives

\[
\|u\|_{H^r(I;H^m)}^2
\le T_*\sum_{n=0}^rM_{n,m}^2<\infty,
\]

and (11) follows by selecting adjacent coordinates. This is an actual constructive return from spatial to mixed rows, with no backward appeal to the mixed reading. [revision:u-setting:006d0d1f43f9:661–750; author:f-how:f75f1c7c33b0:222–250; f-relations:508–570]

The force contributes to velocity, normalized pressure and every differentiated current from the initial step onward. At a fixed finite row order its source pairing satisfies

\[
2|\langle F_n,V_n\rangle_{H^M}|
\le\nu\|V_n\|_{H^{M+1}}^2
 +\nu^{-1}\|F_n\|_{H^{M-1}}^2.
\tag{21}
\]

This is Fourier Cauchy–Schwarz followed by Young's inequality. The source norm is finite on \([0,T_*]\) because the original source jet is smooth there with Schwartz spatial values. The pressure potential obeys a finite \(H^M\) bound from its \(L^1\) and Sobolev source norms: at low frequency its multiplier has size \(|\xi|^{-1}\), whose square is locally integrable in three dimensions, while high frequency is controlled by the finite Sobolev source norm. Thus \(\Phi_n\), its mixed derivatives and their time continuity are retained at the requested finite orders. [today:f-setting:613–629]

The pressure product uses the velocity rows at the appropriate finite order. In the temporal case,

\[
\begin{aligned}
\|Q_n\|_{L^1H^M}+\|\nabla Q_n\|_{L^1H^{M-1}}
&\le C_M^{\rm p}\sum_{a=0}^n\binom na
  \|V_a\|_{L^2H^{M+1}}\|V_{n-a}\|_{L^2H^{M+1}}\\
&\quad+\mathfrak F^{\rm p}_{n,0,M}(I).
\end{aligned}
\tag{22}
\]

The mixed version has the full double Leibniz sum and the corresponding force-potential budget. These are row operations of the prescribed forced history, including its normalized pressure. In (1)–(4) the forcing is inside \(F_n-B_n\); in (5)–(10) it is inside every \(\mathcal W\) derivative; in (19)–(20) it is inside each reconstructed temporal row. Setting all source coordinates to zero recovers the unforced calculations. [today:f-setting:280–330,567–641; author:f-how:f75f1c7c33b0:12–21,113–220]

**Available outputs**

- Native theorem statement: Native forced adjacent whole-interval rows; finite projection at the forced intersection entry; forced height graph; compatible full mixed forced intersection.
- Finite native R0,1 produces the material-acceleration L2 budget by trace, embedding and the unchanged material identity.

**Exact sources**: author:u-how:e2c9bf4a1e04:283-295; author:u-how:e2c9bf4a1e04:112-133; author:u-how:e2c9bf4a1e04:205-347; revision:u-setting:afb54c1cdd30:498-623; author:u-how:5a06882c5628:34-309; author:f-how:f75f1c7c33b0:5-250; revision:u-setting:006d0d1f43f9:403-750; today:f-setting:548-708; u-relations:54-169; f-relations:68-252; f-relations:508-570; u-analysis:597-1018; f-analysis:609-1071; f-analysis:256-323; u-relations:207-392; f-relations:189-570; revision:u-setting:afb54c1cdd30:668-758; author:draft:49cee9a4e6c6:9-19; r-body:453-590

## One endpoint, complete incoming velocity jet and normalized pressure jet

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- All finite adjacent interval rows of the chosen original history, supplied by an available native or intersection entry.
- Adjacent trace and multiplication operations.

Either compatible all-orders description gives the source's full-interval rows. Apply the adjacent trace operation to every \(V_n\) at every finite \(m\). Define
\[
\mathfrak E_{N,m}=(1+T_*^{-1})^{1/2}(\mathfrak R^*_{N,m})^{1/2}.
\]
It bounds \(\sup_{[0,T_*]}\|V_n\|_{H^m}\) for \(n\le N\). Spatial differentiation gives the mixed-row bound at \(m+|\alpha|\). The representatives agree under all Sobolev restriction maps, so their terminal values form one family
\[
V_n^*=\lim_{t\uparrow T_*}V_n(t),\qquad
J_{n,\alpha}^*=\partial_x^\alpha V_n^*.
\]
The zeroth value is one \(u_*\in H^\infty_\sigma\), rather than unrelated endpoints at each order. [u-endpoint:112-158,214-324; f-endpoint:114-161,220-329]

The distributional identity \(\partial_tV_n=V_{n+1}\), with both continuous representatives available, gives
\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau,\qquad 0\le s\le t\le T_*.
\]
It proves genuine one-sided derivatives and the terminal modulus
\[
\|V_n(t)-V_n^*\|_{H^m}\le(T_*-t)\mathfrak E_{n+1,m}.
\]
Inducting through the continuous rows gives the complete incoming temporal jet in every finite spatial order. [u-endpoint:326-349; f-endpoint:331-354]

Pass the normalized pressure product to the limit using higher velocity traces and Sobolev multiplication. Unforced,
\[
Q_n^*=R_iR_j\sum_{b=0}^n\binom nb(V_b^*)_i(V_{n-b}^*)_j.
\]
Forced, subtract \(\Phi_n(T_*)\). A product difference is split into two factors, each controlled by the velocity trace bounds and terminal moduli; the forced difference adds
\((T_*-t)\sup_{[0,T_*]}\|\Phi_{n+1}\|_{H^m}\).
This yields pressure convergence and all mixed pressure traces. [u-endpoint:351-465; f-endpoint:356-462]

The diffusion term converges in \(H^q\) from a velocity trace in \(H^{q+2}\), transport products converge using correspondingly higher orders, and the pressure gradient converges from \(H^{q+1}\). Passing the actual recurrence to \(T_*\) yields
\[
V_{n+1}^*=\nu\Delta V_n^*
-\sum_{b=0}^n\binom nb(V_b^*\cdot\nabla)V_{n-b}^*
-\nabla Q_n^*+F_n(T_*),
\]
where \(F_n=0\) in the unforced branch. Starting with \(V_0^*=u_*\), the pressure formula fixes \(Q_0^*\), then the velocity formula fixes \(V_1^*\), and induction fixes the entire normalized jet. This is uniqueness of the displayed endpoint recurrence family. [u-endpoint:390-465; f-endpoint:464-491]

**Available outputs**

- One u_* in H^infinity_sigma; compatible velocity, pressure and mixed terminal jets; finite-order moduli; the normalized endpoint recurrence.

**Exact sources**: u-analysis:330-374; u-endpoint:112-158; u-endpoint:214-349; f-endpoint:114-161; f-endpoint:220-354; u-endpoint:351-465; f-endpoint:356-491

## Local realization, overlap uniqueness, jet matching and continuation

Branch: shared

The common objects are original histories, actual Eulerian mixed derivatives, normalized pressure, fixed viscosity, complete Leibniz products and finite-order Sobolev operations. General identities first hold on strict classical intervals. Whole-interval memberships enter through their stated constructions or explicit intersection/height domains. Each column has its own intersection implication; complete signed height relationships relate their coordinates. No constant uniform over all orders is formed.

**Available inputs**

- The common smooth endpoint and normalized incoming recurrence jet.
- Quantitative H^3 mild theory, higher persistence and shifted uniqueness.

The local construction begins at an arbitrary time \(s\) with \(a\in H^3_\sigma\). Its mild class is \(C([s,b];H^3)\) with normalized pressure and the Duhamel equation. Splitting the integral at an intermediate time and using the heat semigroup proves restriction to a shifted mild class. Variation of constants places a classical restriction in that class. [u-analysis:597-660; f-analysis:609-679]

For the heat equation with source in \(L^2H^2\), pairing at \(H^3\), keeping the Bessel low-frequency term, and applying Young's inequality gives a linear bound in
\[
X_\delta=C H^3_\sigma\cap L^2H^4_\sigma,\qquad
w_t\in L^2H^2_\sigma.
\]
The quadratic estimate
\(\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}
\le C_{\rm q}\|v\|_{H^3}\|z\|_{H^3}\)
and its difference version make the Duhamel map a contraction on an explicit closed ball for
\[
\delta\le\min\{1,c_\nu(1+\|a\|_{H^3})^{-2}\}.
\]
In the forced branch the linear map includes the original shifted force \(f(s+r)\), and the denominator also includes
\(\Gamma_s=\|\mathbb Pf\|_{L^2(s,s+1;H^2)}\).
The difference of two maps has the force cancel because their prescribed source agrees. A finite partition into sufficiently short intervals proves uniqueness in the full \(C H^3\) mild class. [u-analysis:662-880; f-analysis:680-925]

Fourier truncation, higher-order energy estimates, contraction convergence, and weak compactness give \(C H^m\) persistence for that fixed point. For \(a\in H^\infty\), its full recurrence produces all temporal rows, including \(F_n,\Phi_n\) in the forced case. [u-analysis:881-1018; f-analysis:926-1071]

In the unforced endpoint proof, the uniform trace bound \(\|u(t_0)\|_{H^3},\|u_*\|_{H^3}\le\mathfrak E_{0,3}\) supplies a positive common restart duration \(\delta_0\). Choose \(t_0\) less than \(\delta_0/2\) before \(T_*\). Local restart at \(u(t_0)\) agrees with the incoming history on every strict overlap by mild-class uniqueness. Its trace at \(T_*\) is \(u_*\), and shifted uniqueness identifies its right-hand restriction with the restart from \(u_*\). This supplies an actual common local history across the joining time. [u-endpoint:466-526]

The outgoing smooth solution starts at \(W_0^+=u_*=V_0^*\). Its differentiated equations obey the endpoint recurrence. Induction fixes \(W_n^+=V_n^*\) and the pressure jets as well. Every one-sided derivative consequently matches in every finite Sobolev space. Sobolev embedding glues the incoming and outgoing pairs smoothly, preserves the original history, and extends it beyond \(T_*\). In the forced branch the recurrence includes the original prescribed values \(F_n(T_*)\) and the restart continues with the original future \(f(t)\). [u-endpoint:528-619; f-endpoint:493-552]

If \(T_*<\infty\), this extension contradicts the definition of maximality. The source concludes \(T_*=\infty\), gathers the global mixed regularity and normalized pressure, and obtains uniqueness by the local uniqueness composition. Its energy identity follows by the original \(L^2\) pairing. These are the source's unforced and prescribed-force proof conclusions at their respective data. [u-endpoint:631-733; f-endpoint:570-657]

The governing continuation uses the original history's compatible rows and endpoint, local realization and uniqueness. The author's final gradient and material-separation estimates are finite rectangle consequences: once sufficiently high orders give \(\int_0^T\|\nabla u\|_\infty<\infty\),
\[
|X(a,t)-X(b,t)|\ge |a-b|\exp\left(-\int_0^t\|\nabla u(s)\|_\infty ds\right)>0.
\]
This useful consequence does not become a new strain hypothesis for the native continuation.

**Available outputs**

- An actual smooth extension of the original pressure-complete history, with its original future force when present; the source maximality contradiction and global conclusions.

**Exact sources**: u-analysis:597-880; f-analysis:609-925; u-analysis:881-1018; f-analysis:926-1071; u-endpoint:466-526; u-endpoint:528-619; f-endpoint:493-552; u-endpoint:631-733; f-endpoint:570-657; manuscript:parts/unforced/00-how-proof-works.tex:307-395; manuscript:parts/forced/00-how-proof-works.tex:221-250

## Eulerian and material columns with their commutators

Branch: application

Material reconstruction requires the full Eulerian or material interval column and includes commutators. Candidate exclusion additionally consumes specified external local/exterior inputs, complete localized residual admission, a smooth prescribed source extension, strict-interval classical regularity and identical datum/viscosity/force/domain. Exact exterior cancellation is compatible with a divergent positive rectangle norm. Pressure absorption has the separate hypothesis \(f=\nabla\phi\), tested by the projected force; it is independent of strict-interval identification.

**Available inputs**

- Original pressure-normalized NS history and prescribed force. Complete-column equivalence retains its stated entering column. The optional acceleration criterion assumes a finite acceleration budget only when entered independently; the native block supplies that budget by its own readout.

For this fluid \(D_t=\partial_t+u\cdot\nabla\). Material acceleration is
\[
D_tu=V_1+(u\cdot\nabla)u=-\nabla p+\nu\Delta u+f.
\]
Higher material derivatives are finite polynomials in Eulerian mixed derivatives. Reverse reconstruction uses \(\partial_t=D_t-u\cdot\nabla\) with its commutators. [r-body:52-87,1569-1750]

Time embedding and polynomial reconstruction send the Eulerian intersection to all material rows in \(L^2H^m\). Conversely, for \(w_q=D_t^qu\) in every \(L^2H^m\),
\[
\partial_tw_q=w_{q+1}-(u\cdot\nabla)w_q,
\quad
\|\partial_tw_q\|_{L^1H^m}
\le\sqrt T\|w_{q+1}\|_{L^2H^m}
+C_m\|u\|_{L^2H^{m+2}}\|w_q\|_{L^2H^{m+2}}.
\]
Banach integration gives uniform material bounds; reverse polynomial reconstruction yields the Eulerian intersection. The whole-interval premises remain explicit. [r-body:1752-1819]

## Formal refinement of the supplied material construction

The supplied draft proposes that viscosity couples the velocity-time, critical-height and spatial columns strongly enough to produce whole-interval control. The calculations below distinguish the actual coupled identities from the finiteness assertion to be established. They derive the material rows, test the full finite quadratic form, and prove a complete conditional construction from one acceleration integral. The original native theorem statement remains separately visible; the acceleration premise below is not asserted to follow from the datum. [author:draft:49cee9a4e6c6:9–19]

Small spatial scales correspond to high frequencies. The all-orders Sobolev object is an intersection of finite-order spaces. Forming derivative identities and taking all indices does not, by itself, assert that each defining integral is finite up to the proposed endpoint. The simple binomial temporal recurrence uses Eulerian derivatives; material derivatives retain the additional commutators explicitly displayed below.

### 1. The first material rows, with all coefficients retained

Write
\[
D=\partial_t+u\cdot\nabla,\qquad U_{ij}=\partial_j u_i,
\qquad a=Du,\quad b=Da.
\]
The original equation gives acceleration:
\[
a=\nu\Delta u-\nabla p+f.
\]
Expanding the operators, rather than commuting them, gives
\[
[D,\partial_i]w=-(\partial_i u_j)\partial_jw,
\]
\[
[D,\Delta]w=-(\Delta u_j)\partial_jw
-2(\partial_i u_j)\partial_{ij}w,
\qquad
D\nabla p=\nabla Dp-U^{\mathsf T}\nabla p.
\]
Consequently the jerk row is
\[
b=\nu\Delta a-\nabla Dp+U^{\mathsf T}\nabla p+Df
-\nu\left[(\Delta u)\cdot\nabla u
+2\sum_i(\partial_i u)\cdot\nabla\partial_i u\right].
\]
These formulas reproduce `r-body:1589–1615`. They preserve the viscous geometry while displaying its deformation coefficients.

For the next row, set \(L_0=\Delta\), \(G_0=\nabla\), \(L_{q+1}=[D,L_q]\), and \(G_{q+1}=[D,G_q]\). Direct differentiation gives
\[
Db=\nu\Delta b+2\nu L_1a+\nu L_2u
-\nabla D^2p-2G_1Dp-G_2p+D^2f.
\]
Here \(G_1p=-U^{\mathsf T}\nabla p\), and
\[
G_2p=\left[-(\nabla a)^{\mathsf T}
+2(U^{\mathsf T})^2\right]\nabla p,
\qquad DU=\nabla a-U^2.
\]
At every order the exact recurrence is
\[
D^{n+1}u=\nu\sum_{q=0}^n\binom nq L_qD^{n-q}u
-\sum_{q=0}^n\binom nq G_qD^{n-q}p+D^nf.
\]
This is the commutator binomial of `r-body:1695–1718`. It differs from the Eulerian Leibniz binomial
\[
V_{n+1}=\nu\Delta V_n-\nabla Q_n
-\sum_{j=0}^n\binom nj(V_j\cdot\nabla)V_{n-j}+F_n,
\]
where \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\), and \(F_n=\partial_t^nf\). Both describe derivatives of this history. Neither advances the physical time by differentiating.

Material force rows contain response factors:
\[
Df=f_t+u\cdot\nabla f,
\qquad
D^2f=f_{tt}+2u\cdot\nabla f_t+a\cdot\nabla f
+u_i u_j\partial_{ij}f.
\]
Smooth prescribed Eulerian force derivatives do not by themselves bound these material rows independently of \(u,a\).

### 2. Pressure and volume remain coupled

Pressure satisfies
\[
-\Delta p=\operatorname{tr}(U^2)-\nabla\cdot f.
\]
Applying \(D\) gives its transported equation
\[
-\Delta Dp
=D\left[\operatorname{tr}(U^2)-\nabla\cdot f\right]+L_1p.
\]
Thus \(Dp\) includes the Laplacian commutator; it is not obtained by differentiating a scalar pressure source while freezing the geometry.

Incompressibility gives
\[
\nabla\cdot a=\operatorname{tr}(U^2),\qquad
\nabla\cdot b=3\operatorname{tr}(U\nabla a)-2\operatorname{tr}(U^3).
\]
More generally, for \(w_q=D^qu\),
\[
\delta_0=0,\qquad
\delta_{q+1}=D\delta_q+\operatorname{tr}(U\nabla w_q),
\qquad\delta_q=\nabla\cdot w_q.
\]
The material rows need not be divergence free. These are exactly the constraints compatible with volume-preserving trajectories (`r-body:1617–1693`). In particular, \(\operatorname{tr}(U^2)\) is signed and differs from \(|U|^2\).

### 3. A genuine coercive identity and a whole-interval criterion

Let \(P\) be Leray projection and \(Q=I-P\). Pressure reconstruction gives
\[
Pa=\nu\Delta u+Pf,\qquad Qa=Q[(u\cdot\nabla)u].
\]
Their Fourier Sobolev orthogonality yields
\[
\|a\|_{\dot H^s}^2
=\|\nu\Delta u+Pf\|_{\dot H^s}^2
+\|Q[(u\cdot\nabla)u]\|_{\dot H^s}^2.
\]
For \(f=0\), this becomes
\[
\|a\|_{\dot H^s}^2
=\nu^2\|u\|_{\dot H^{s+2}}^2
+\|\nabla p\|_{\dot H^s}^2.
\]
Pressure cannot cancel viscosity in this global norm (`r-body:793–828`). This is a real native-domain coercivity statement, with acceleration as its input.

It gives a concrete useful criterion: **if \(a\in L^2(I;L^2)\), then all finite mixed rows and a smooth terminal continuation follow for smooth data and prescribed smooth force.** Indeed,
\[
\nu\|\Delta u\|_{L^2(I;L^2)}
\le\|a\|_{L^2(I;L^2)}+\|Pf\|_{L^2(I;L^2)}.
\]
Kinetic energy controls low frequencies, giving \(u\in L^2(I;H^2)\), hence \(u\in L^2(I;L^\infty)\). For each integer \(m\ge0\), the tame product inequality
\[
\|u\otimes u\|_{H^m}\le C_m\|u\|_\infty\|u\|_{H^m}
\]
and the projected equation give, with \(y_m=\|u\|_{H^m}^2\),
\[
y_m'+\nu\|\nabla u\|_{H^m}^2
\le\left(C_m\nu^{-1}\|u\|_\infty^2+1\right)y_m
+\|f\|_{H^m}^2.
\]
Gronwall controls every spatial height on \(I\). The Eulerian recurrence then controls each temporal derivative at every spatial height. Adjacent temporal rows give terminal traces, and the original equation supplies compatible pressure and restart data. This argument derives the other rows from one material integral; it does not assume all rectangles finite.

### 4. What happens when one tries to generate that integral

The full material acceleration energy is
\[
\begin{aligned}
\frac12\partial_t\|a\|_2^2+\nu\|\nabla a\|_2^2
={}&\int Dp\,\operatorname{tr}(U^2)
+\int a\cdot U^{\mathsf T}\nabla p+\int a\cdot Df\\
&+\nu\int a\cdot L_1u.
\end{aligned}
\]
Its pressure work survives because \(\nabla\cdot a\ne0\). Combining its first two terms yields
\[
\partial_t\int p\,\operatorname{tr}(U^2)-\int p\,\nabla\cdot b.
\]
That rearrangement does not create a positive energy: for \(f=0\), \(\int p\operatorname{tr}(U^2)=\|\nabla p\|_2^2\), so subtracting it from \(\frac12\|a\|_2^2\) produces
\(\frac12\nu^2\|\Delta u\|_2^2-\frac12\|\nabla p\|_2^2\).

A sharper test uses the momentum equation paired with \(a\). For \(f=0\), it gives exactly
\[
\|a\|_2^2+\frac\nu2\partial_t\|\nabla u\|_2^2
=\|\nabla p\|_2^2+\nu\mathcal P_1,
\qquad
\mathcal P_1=-\int U:U^2.
\]
Substitution of the orthogonal identity cancels the pressure squares and returns
\[
\frac12\partial_t\|\nabla u\|_2^2+\nu\|\Delta u\|_2^2
=\mathcal P_1.
\]
This derives the signed current from the full material geometry. No pressure or incompressibility constraint was omitted.

The critical-height version retains precisely the source's signed currents:
\[
H'=-2\nu E_{3/2}+\mathcal P_{1/2}+W_{1/2},
\]
\[
H''=4\nu^2E_{5/2}-2\nu(\mathcal P_{3/2}+W_{3/2})
+\partial_t(\mathcal P_{1/2}+W_{1/2}).
\]
Nonzero viscous coefficients expose the next height, but the differentiated signed currents remain on the right (`r-body:227–288`). This is an identity between unknown response coordinates, not an independent bound on them.

### 5. A realizable countertest to automatic viscous domination

On the \(2\pi\)-periodic cube let
\[
v=(\sin y,-\sin x,\sin y+\sin(x+y)).
\]
It is divergence free. Its pressure is nontrivial:
\(p_v=-\cos x\cos y\), with
\(-\Delta p_v=\nabla\cdot[(v\cdot\nabla)v]\).
Writing \(V=(2\pi)^3\), direct Fourier multiplication gives
\[
\mathcal P_s[v]=\frac V4(2^s-1),\qquad
\|\Lambda^{s+1}v\|_2^2=V\left(\frac32+2^s\right).
\]
At height one these are \(V/4\) and \(7V/2\). For datum \(Av\), production scales as \(A^3\), while viscous dissipation scales as \(\nu A^2\). Enstrophy initially increases for \(A>14\nu\), despite exact pressure coupling and incompressibility.

This has a finite-energy whole-space realization. A bounded periodic vector potential is
\[
\mathcal A=(\cos y,-\cos(x+y),-\cos x-\cos y),
\qquad\nabla\times\mathcal A=v.
\]
Choose a smooth cutoff equal to one on \([-L,L]^3\), vanishing outside \([-L-1,L+1]^3\), with bounded derivatives, and set \(v_L=\nabla\times(\chi_L\mathcal A)\). For \(L=n\pi\),
\[
\mathcal P_1[v_L]=\frac{(2L)^3}{4}+O(L^2),\qquad
\|\Delta v_L\|_2^2=\frac72(2L)^3+O(L^2).
\]
The shell contributes only \(O(L^2)\), because its width and all required derivatives are bounded. Thus smooth compactly supported incompressible data have positive initial enstrophy growth for fixed sufficiently large \(A\). Their whole-space pressure is determined by the original Poisson law.

This countertest rules out an automatic sign cancellation or unconditional viscous domination inferred from complete coupling. It does not assert blowup or refute the supplied theorem. The supported new contribution is the acceleration-integrability criterion; the attempted generation of its hypothesis returns the explicit signed production term above. A further whole-interval argument must control that term or supply another coercive functional, rather than infer integrability from the matrix's geometric relations alone.


## Full finite-matrix and height calculation

### 1. Construct the coupled coordinates before estimating them

Put \(V_n=\partial_t^nu\), \(F_n=\partial_t^nf\), and
\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\qquad
Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j
-(-\Delta)^{-1}\nabla\cdot F_n.
\]
The complete rows are
\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\qquad \nabla\cdot V_n=0.
\tag{1}
\]
Apply every selected spatial derivative, distribute it over every product, and retain the adjacent time coordinate, both extra viscous derivatives, and every pressure factor. A finite matrix is a selection of these coordinates and identities; its outer entries continue to be derivatives of this fluid. It is not a closed finite system obtained by deleting the outer equations.

This gives a compatible jet in the space of distributions on \(I\). To obtain a jet in the stronger target space, one must establish
\[
\sup_{S<T_*}\sum_{n=0}^N\left(
\|V_n\|_{L^2(0,S;H^{M+1})}^2+
\|V_{n+1}\|_{L^2(0,S;H^{M-1})}^2\right)<\infty.
\tag{2}
\]
For this norm-exhaustion realization, (2) is equivalent to the target interval memberships. A direct existence construction into the target spaces could instead establish them without a separate estimating operation. Finite selection adds no second generator.

### 2. Simultaneous coercivity: sum the full viscous matrix

For \(s\ge0\), square (1) in \(\dot H^s\). Solenoidal and gradient fields are orthogonal. The cross term between \(V_{n+1}\) and \(-\nu\Delta V_n\) is a time derivative. The exact result is
\[
\begin{aligned}
D_{n,s}(S):={}&\nu\|\Lambda^{s+1}V_n(S)\|_2^2\\
&+\int_0^S\left(\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2\right)dt\\
={}&\nu\|\Lambda^{s+1}V_n(0)\|_2^2
+\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt.
\end{aligned}\tag{3}
\]
Choose finite positive weights \(w_{n,s}\), and sum (3) over \(0\le n\le N\), \(0\le s\le M-1\), with \(M\ge2\). This is a simultaneous positive quadratic form in the temporal, viscous and pressure faces. It does not bound rows sequentially or discard their interactions. Control of this form, including its \(s=0\) traces, supplies (2) by Sobolev nesting and the fundamental theorem in time.

Its exact outstanding contribution is
\[
\mathcal B_{N,M}(S)=
\sum_{n,s}w_{n,s}\int_0^S
\left(\|\Lambda^sB_n\|_2^2
-2\operatorname{Re}\langle\Lambda^sF_n,\Lambda^sB_n\rangle\right)dt.
\tag{4}
\]
The force squares have finite prescribed budgets. In the unforced case (4) consists of positive nonlinear squares. Pressure completes the left side of (3); its orthogonality does not cancel the solenoidal nonlinear part on the right.

Attempting the manuscript's full product estimate inside this simultaneous form yields, schematically,
\[
D(S)\le A(u_0,\nu,f,N,M)+C_{N,M,\nu}(I_{N,M}+R(S))R(S),
\tag{5}
\]
where \(R(S)\) is the target rectangle norm and \(I_{N,M}\) its known initial-face norm. This is the actual shape of `P/forced/02-compatible-rectangles.tex:309–381`. Because the right side grows quadratically in \(R\), (5) permits arbitrarily large \(R\); it is not an upper bound from data alone. The positive viscous diagonal has survived, but an absorption or cancellation for (4) has not yet been produced.

### 3. Use the height ladder against that remainder

Let \(E_s=\tfrac12\|\Lambda^su\|_2^2\), \(H=E_{1/2}\),
\[
P_s=-\langle\Lambda^su,\Lambda^s(B_0+\nabla p)\rangle,
\qquad W_s=\langle\Lambda^su,\Lambda^sf\rangle.
\]
Direct pairing and repeated substitution give
\[
E_s'=P_s+W_s-2\nu E_{s+1},
\quad
H^{(k)}=(-2\nu)^kE_{k+1/2}
+\sum_{j=0}^{k-1}(-2\nu)^j
\partial_t^{k-1-j}(P_{j+1/2}+W_{j+1/2}).
\tag{6}
\]
Thus the draft correctly identifies the full completed coordinate \(R_k=E_{k+1/2}\). Positivity belongs to this completed expression. It does not separately bound its differentiated nonlinear terms or \(H^{(k)}\).

Try the first gain explicitly. With \(A=\|u\|_{\dot H^{1/2}}\), \(Y=\|u\|_{\dot H^{3/2}}\), Sobolev embedding and duality give
\[
\|B_0\|_{\dot H^{-1/2}}
\le C\|u\|_3\|\nabla u\|_3\le CAY,
\qquad |P_{1/2}|\le CAY^2.
\]
Consequently (6) gives
\[
H(S)+\int_0^S(\nu-CA(t))Y(t)^2dt
\le H(0)+\int_0^S|W_{1/2}|dt.
\tag{7}
\]
Young's inequality pays force work with a fraction of \(\nu Y^2\) and its finite \(\dot H^{-1/2}\) force budget. For small critical amplitude, (7) supplies \(R_1\in L^1(I)\). For arbitrary smooth data, the coefficient \(\nu-CA(t)\) has no established positive lower bound. Going to the next height differentiates \(P_{1/2}\), introducing the full mixed-jet factors; it supplies no sign that reverses this conclusion.

An integer-row check exposes that sign concretely:
\[
\frac12\frac d{dt}\|\nabla u\|_2^2+\nu\|\Delta u\|_2^2
=-\int\partial_k u_i\,\partial_k u_j\,\partial_j u_i\,dx
+\langle f,-\Delta u\rangle.
\tag{8}
\]
The cubic integral changes sign under \(u\mapsto-u\); incompressibility and pressure normalization do not make it dissipative. Bounding it gives
\[
\left|\int\partial_k u_i\partial_k u_j\partial_j u_i\right|
\le C\|\nabla u\|_2^{3/2}\|\Delta u\|_2^{3/2}
\le\frac\nu2\|\Delta u\|_2^2+C\nu^{-3}\|\nabla u\|_2^6.
\tag{9}
\]
Equations (7) and (9) are the explicit failed global absorptions of the coupled height/matrix calculation, not claims that every possible coupled functional must fail.

### 4. Material differentiation retains the unresolved interaction

The manuscript's binomial rows use Eulerian derivatives. For the draft's material interpretation, set \(D=\partial_t+u\cdot\nabla\). Then
\[
Du=\nu\Delta u-\nabla p+f,
\]
but \(D\) does not commute with spatial derivatives:
\[
[D,\partial_i]g=-(\partial_i u_j)\partial_jg,
\quad
[D,\Delta]g=-(\Delta u_j)\partial_jg
-2(\partial_k u_j)\partial_{kj}g.
\]
The next complete material row is
\[
\begin{aligned}
D^2u={}&\nu\Delta Du-\nabla Dp+Df
+(\nabla u)^T\nabla p\\
&-\nu\left[(\Delta u\cdot\nabla)u
+2\sum_k(\partial_k u\cdot\nabla)\partial_k u\right].
\end{aligned}\tag{10}
\]
Also \(\nabla\cdot Du=\partial_i u_j\partial_j u_i\), so material rows cannot inherit the Eulerian pressure orthogonality without correction. For spatial Sobolev energies the transport term becomes
\[
P_s=-\langle\Lambda^su,[\Lambda^s,u\cdot\nabla]u\rangle.
\tag{11}
\]
Material coordinates preserve the physical coupling, but (10)–(11) show exactly where transport reappears. Replacing Eulerian derivatives by material derivatives while omitting these terms would remove the interaction that needs control.

### 5. A full-chain material-acceleration criterion

The viscous geometry gives a stronger usable consequence if one specific whole-interval coordinate is supplied. Retain the explicit premise
\[
a:=Du,\qquad A_*:=\int_I\|a(t)\|_2^2dt<\infty.
\tag{12}
\]
No initial-jet calculation establishes (12). Under this premise the material momentum equation yields the exact elliptic square
\[
\|a-f\|_2^2=\nu^2\|\Delta u\|_2^2+\|\nabla p\|_2^2.
\tag{13}
\]
Indeed, \(\Delta u\) is solenoidal and \(\nabla p\) is a gradient. This orthogonality does apply to their pairing, even though \(a\) itself is not solenoidal.

Let \(F_*:=\int_I\|f\|_2^2dt\), and let \(K_*\) be the finite kinetic-energy bound \(\sup_I\|u\|_2\). Since \((1+r^2)^2\le2(1+r^4)\), (13) gives
\[
\int_I\|u\|_{H^2}^2dt
\le2T_*K_*^2+4\nu^{-2}(A_*+F_*).
\tag{14}
\]
With the fixed three-dimensional embedding constant \(C_E\),
\[
U_*:=\int_I\|u\|_\infty^2dt
\le C_E^2\left(2T_*K_*^2+4\nu^{-2}(A_*+F_*)\right)<\infty.
\tag{15}
\]
This one coordinate now controls every spatial order together. For any nonnegative integer \(m\), use the equivalent derivative-sum \(H^m\) norm. The integer Moser product estimate on \(\mathbb R^3\) is
\[
\|u\otimes u\|_{H^m}\le C_m\|u\|_\infty\|u\|_{H^m}.
\tag{16}
\]
For integer derivatives this follows by Leibniz and Gagliardo–Nirenberg interpolation of each intermediate product between its \(L^\infty\) factor and its order-\(m\), \(L^2\) factor. On strict horizons every factor is smooth and the estimate applies without an endpoint assumption.

Pair the projected divergence-form equation with \(u\) in this derivative-sum norm, moving the divergence onto the testing field. With \(y_m=\|u\|_{H^m}^2\) and \(d_m=\|\nabla u\|_{H^m}\), (16) and Young's inequality give
\[
y_m'+\nu d_m^2
\le\left(\frac{C_m}{\nu}\|u\|_\infty^2+1\right)y_m
+\|f\|_{H^m}^2.
\tag{17}
\]
Pressure remains fixed by its original formula; its pairing with each Eulerian solenoidal derivative vanishes. The constants in (16)–(17) depend on \(m,\nu\), not on the strict horizon \(S\). Integrating (17) for \(t\le S<T_*\) gives
\[
\sup_{t<T_*}y_m(t)
\le\left(y_m(0)+\int_I\|f\|_{H^m}^2dt\right)
\exp\left(T_*+\frac{C_m}{\nu}U_*\right)<\infty.
\tag{18}
\]
Integrating (17) once more also bounds \(\int_Id_m^2\). Every initial norm and force integral in (18) is prescribed. Thus (12) yields all positive spatial orders, with a separate finite constant for each order.

The complete recurrence (1) now gives \(V_1\in L^\infty(I;H^m)\) from the already bounded \(u\) orders \(m+2\). Induction over the full binomial sums gives \(V_n\in L^\infty(I;H^m)\) for every finite \(n,m\). The Riesz formula, including its force potential, gives the pressure rows. Integrating the adjacent rows yields their common smooth endpoint; finite \(T_*\) then gives every required \(H^r(I;H^m)\) norm. Local restart with the prescribed future force contradicts finite maximality. This is a complete conditional chain from (12), not an all-orders premise in disguise.

The source identities do not yet produce (12). Expanding its left side gives
\[
\|a\|_2^2=\|u_t\|_2^2+\|B_0\|_2^2
+2\operatorname{Re}\langle u_t,B_0\rangle.
\tag{19}
\]
Trying to pay (19) by (3) retains \(\|B_0\|_2^2\) on the right. Pairing the material equation with \(a\) instead retains
\[
\langle\nabla p,a\rangle
=-\int p\,\partial_i u_j\partial_j u_i\,dx,
\qquad
\langle\Delta u,B_0\rangle
=-\int\partial_k u_i\partial_k u_j\partial_j u_i\,dx.
\tag{20}
\]
These are actual pressure/strain transfers, not vanishing material-transport terms. Formula (13) supplies the positive conversion once the acceleration budget exists; (19)–(20) identify the operation still needed to derive that budget from the datum.



This is an independent conditional entry. It is not a prerequisite of the native datum construction. When the native finite block is already available, its acceleration integral is supplied by the native finite-block readout.

### Optional material-acceleration entry

Let \(a=D_tu\). The material momentum equation and solenoidal/gradient orthogonality give the exact identity
\[
\|a-f\|_2^2=\nu^2\|\Delta u\|_2^2+\|\nabla p\|_2^2.
\]
If \(A_*:=\int_I\|a\|_2^2dt<\infty\), kinetic energy controls low frequencies and this identity yields \(u\in L^2(I;H^2)\subset L^2(I;L^\infty)\). At each integer spatial order m, the projected equation and tame product bound give
\[
\frac d{dt}\|u\|_{H^m}^2+\nu\|\nabla u\|_{H^m}^2
\le\left(C_m\nu^{-1}\|u\|_\infty^2+1\right)\|u\|_{H^m}^2
+\|f\|_{H^m}^2.
\]
The coefficient is integrable independently of the strict horizon. Gronwall produces every spatial order; the full recurrence then produces temporal and pressure rows and their endpoint. The **material** transition contains the complete constants, proof, commutators and finite-matrix calculation. With tools use `open material --budget 50000`; in the text edition read **Formal refinement of the supplied material construction** below.

The acceleration integral is an explicit premise of this new criterion. It is not substituted for a proved datum output. Trying to derive it by pairing the unforced material equation returns
\[
\|a\|_2^2+\frac\nu2\frac d{dt}\|\nabla u\|_2^2
=\|\nabla p\|_2^2+\nu\mathcal P_1,
\qquad
\mathcal P_1=-\int\partial_k u_i\,\partial_k u_j\,\partial_j u_i\,dx.
\]
Substitution of the orthogonal identity recovers the enstrophy balance with this signed current retained. Thus the material refinement supplies a genuine conditional construction; it does not independently pay its acceleration budget. Failure to generate this integral by the optional material-energy method does not establish a defect or an additional premise in the native construction. Finite selection of an obtained jet remains a readout with no additional generating obligation. [r-body:793–828,1589–1629]



**Available outputs**

- The source Eulerian/material all-order equivalence at its explicit interval domains, with finite-coordinate bounds.
- Conditional construction: one finite whole-I L2 material-acceleration budget gives all spatial, temporal and pressure rows, endpoint and original-force restart.
- Exact material commutators, pressure/divergence constraints and the retained nonlinear work in the attempted native-domain production.

**Exact sources**: r-body:1569-1819; author:draft:49cee9a4e6c6:9-19; r-body:793-828; f-relations:189-382

## Localize the external candidate and prescribe its complete residual

Branch: application

Material reconstruction requires the full Eulerian or material interval column and includes commutators. Candidate exclusion additionally consumes specified external local/exterior inputs, complete localized residual admission, a smooth prescribed source extension, strict-interval classical regularity and identical datum/viscosity/force/domain. Exact exterior cancellation is compatible with a divergent positive rectangle norm. Pressure absorption has the separate hypothesis \(f=\nabla\phi\), tested by the projected force; it is independent of strict-interval identification.

**Available inputs**

- The external source's specified local construction and exact exterior, all-order local residual estimates, cutoff geometry and stated local jet bounds.
- The native prescribed-force theorem is the eventual consumer of the admitted force.

The candidate comparison concerns a separately specified local construction and its localization, at viscosity one before the stated rescaling. Its source parameters are \(0<h<1/100\), \(\tau=1-t\), \(A_c=1/2+h\), \(D=1/2-h\), and \(b=2^{A_c}\kappa>0\). The exterior input is
\[
H_c(Z)=\Gamma(1+h)^{-1}\int_0^\infty e^{-v}v^h(1+Zv)^{-h}\,dv,
\]
\[
K(r,t)=br^{-2A_c}H_c(4\tau/r^2),\quad
v=Ke_\theta,\quad
\pi=-\int_r^\infty K(\rho,t)^2\,\frac{d\rho}{\rho}.
\]
The source attributes this exact exterior and the vanishing correction fields to the external construction. It is an open exterior region with a moving inner boundary; it is not a global unforced solution on \(\mathbb R^3\). [r-body:1010-1057,1225-1231]

The localized candidate is specified by
\[
u=cv+w,\quad w=\nabla c\times\mathcal A,\quad
p=c\pi,\quad c=\chi_x\chi_t,
\]
with local \(v=\operatorname{curl}\mathcal A+Be_\theta\) and axisymmetric \(c\). This preserves divergence freedom. Expand the full residual \(f=u_t+(u\cdot\nabla)u-\nu\Delta u+\nabla p\). Besides \(c\mathcal R_\nu(v,\pi)\), it contains
\[
\begin{aligned}
&(c_t-\nu\Delta c)v-2\nu\sum_i(\partial_i c)\partial_i v+\pi\nabla c\\
&+(c^2-c)(v\cdot\nabla)v+c(v\cdot\nabla c)v+w_t-\nu\Delta w\\
&+c(v\cdot\nabla)w+c(w\cdot\nabla)v+(w\cdot\nabla)w.
\end{aligned}
\]
The possible extra term \((w\cdot\nabla c)v\) is zero by the cross-product identity. Every remaining term belongs to the prescribed candidate force. [r-localization:1-56]

Product rules bound each fixed force jet by finitely many jets of \(c,v,\mathcal A,\pi\). Transition geometry gives \(q\ge(z_0/2)^{1/D}\) axially and \(q\ge r_0^2/(8X_{\rm ext})\) for interior radial corrections. The external closed-scale bounds, finite summands, denominator \(1-2h\eta^2>0\), and Cartesian axis representation supply their local jet bounds. Remaining exterior transitions have \(r\ge r_0/2\); time transitions have \(\tau\ge\tau_0/2\), allowing explicit heat-profile bounds. [r-localization:58-152]

Near the proposed singular point the cutoffs are one, so admission consumes the external construction's all-order flat local-residual estimate on its interior, with zero residual in the exact exterior. These are external-source hypotheses of the admission step. Combining them with the cutoff bounds gives uniform bounds for every fixed \(\partial_x^\alpha\partial_t^jf\). One further time derivative makes each preceding jet uniformly Cauchy at \(t=1\); spatial derivative limits give compatible \(F_j\in C_c^\infty\) supported in one fixed compact set. [r-localization:154-188]

To continue the force, take \(\chi_0=1\) near zero and choose increasing \(b_j\) in
\[
\widetilde f(x,1+\sigma)
=\sum_{j\ge0}\chi_0(b_j\sigma)\frac{\sigma^j}{j!}F_j(x),\qquad \sigma\ge0.
\]
The differentiated \(j\)-th summand is bounded by \(C_{j,m}b_j^{m-j}\|F_j\|_{C^{|\alpha|}}\). Choose \(b_j\) to make this at most \(2^{-j}\) for the finite collection \(|\alpha|+m\le\lfloor j/2\rfloor\). Every fixed differentiated tail then converges uniformly. At zero only \(j=m\) contributes to the \(m\)-th temporal jet, giving \(F_m\). The extension is smooth, keeps fixed spatial support, and vanishes for \(\sigma\ge1\). Joining it to the actual residual for \(t<1\) gives the source's prescribed smooth compactly supported force \(\widetilde f\). [r-admission:11-76]

**Available outputs**

- The complete localized residual, fixed-order terminal source jets and a smooth compactly supported prescribed extension agreeing with the actual residual before t=1.

**Exact sources**: r-body:1010-1057; r-body:1225-1231; r-localization:1-94; r-localization:96-188; r-admission:11-76

## Exact momentum cancellation and divergent positive norms in the exterior

Branch: application

Material reconstruction requires the full Eulerian or material interval column and includes commutators. Candidate exclusion additionally consumes specified external local/exterior inputs, complete localized residual admission, a smooth prescribed source extension, strict-interval classical regularity and identical datum/viscosity/force/domain. Exact exterior cancellation is compatible with a divergent positive rectangle norm. Pressure absorption has the separate hypothesis \(f=\nabla\phi\), tested by the projected force; it is independent of strict-interval identification.

**Available inputs**

- The exact specified exterior and agreement region.

Differentiate the heat-profile integral and integrate by parts to obtain
\[
Z^2H_c''+[1+2(1+h)Z]H_c'+h(1+h)H_c=0.
\]
Substitution into \(K\) gives
\(K_t=(\partial_{rr}+r^{-1}\partial_r-r^{-2})K\).
The four signed momentum terms are
\[
u_t=K_te_\theta,\quad (u\cdot\nabla)u=-K^2r^{-1}e_r,\quad
\nabla p=K^2r^{-1}e_r,\quad-\Delta u=-K_te_\theta.
\]
Their sum and its fixed mixed derivatives are zero in this exterior. Large individual terms do not make its residual nonzero. [r-body:1059-1085]

Using the external coordinate relations
\(\tau=q(1-\eta^2)\), \(z=q^D\eta\), \(X=r^2/(2q)\),
choose a shrinking annulus
\[
\mathcal E_\tau=\{c\sqrt\tau<r<2c\sqrt\tau,\ |z|<d\tau^D\}
\]
whose \(X\) lies in the exact exterior and where both cutoffs are one. Take Eulerian derivatives at fixed spatial position before substituting \(r=y\sqrt\tau\). Positive profile coefficients then give
\[
|u|\asymp\tau^{-1/2-h},\qquad
|u_t|=|\Delta u|\asymp\tau^{-3/2-h}.
\]
Cylindrical integration over the whole annulus yields
\[
\int_{\mathcal E_\tau}|u_t|^2\,dx
=\int_{\mathcal E_\tau}|\Delta u|^2\,dx
=C_{c,d}\tau^{-3/2-3h},\quad C_{c,d}>0.
\]
The time integral diverges, giving a positive contribution to
\[
R_{0,1}=\int_0^1(\|u\|_{H^2}^2+\|u_t\|_2^2)\,dt.
\]
This lower bound needs agreement with the exterior on that region; it does not use a failure of cancellation in the momentum residual. [r-body:1087-1153]

Material acceleration retains the rotation of \(e_r,e_\theta\):
\[
D_tu=-K^2r^{-1}e_r+K_te_\theta.
\]
Its squared integral has the two positive powers
\(C_{c,d}\tau^{-3/2-3h}+B_{c,d}\tau^{-3/2-5h}\).
The parcel map keeps \(r,z\) fixed and shifts \(\theta\), with volume Jacobian one. Its growing acceleration satisfies differentiated incompressibility. The shrinking annulus samples different parcel labels. [r-body:1155-1231]

**Available outputs**

- Zero complete exterior residual despite large signed terms; positive divergent rectangle contribution; material acceleration growth with volume Jacobian one.

**Exact sources**: r-body:1059-1085; r-body:1087-1153; r-body:1155-1231

## Strict-interval identification, rectangle consequences and separate pressure reduction

Branch: application

Material reconstruction requires the full Eulerian or material interval column and includes commutators. Candidate exclusion additionally consumes specified external local/exterior inputs, complete localized residual admission, a smooth prescribed source extension, strict-interval classical regularity and identical datum/viscosity/force/domain. Exact exterior cancellation is compatible with a divergent positive rectangle norm. Pressure absorption has the separate hypothesis \(f=\nabla\phi\), tested by the projected force; it is independent of strict-interval identification.

**Available inputs**

- The native prescribed-data regular solution and its finite rectangle outputs.
- Admission of the entire localized residual under the stated external inputs.
- Identical datum, viscosity, prescribed force and spatial domain; candidate classical regularity on each strict interval.
- Exterior agreement for the positive divergent contribution.

The candidate conclusion consumes the native prescribed-force theorem plus admission of the complete localized residual under the external inputs above. For its zero datum and \(\widetilde f\), the source theorem supplies a regular pair \((U,P)\) on \([0,1]\) in the complete mixed intersection. The trace at \(m=2\), followed by the source's Fourier embedding constant \(1/\sqrt{8\pi}\), gives
\[
\sup_{[0,1]}\|U\|_\infty^2
\le\frac{\|u_0\|_{H^2}^2+R_{0,2}[U]}{8\pi}<\infty.
\]
This is a finite rectangle readout of that global forced solution. [r-body:116-143,553-606]

Let \(v,p_v\) be a proposed classical candidate for identical datum, viscosity, prescribed force, and spatial domain, with finite spatial Sobolev norms on each strict interval. Set \(z=v-U\). Subtraction cancels the prescribed force:
\[
z_t+(v\cdot\nabla)z+(z\cdot\nabla)U+\nabla(p_v-P)=\nu\Delta z.
\]
Pairing with \(z\) eliminates pressure and divergence-free transport. The remaining term is bounded by \(\|\nabla U\|_\infty\|z\|_2^2\), whose coefficient is integrable by the intersection for \(U\). Gronwall on every \([0,S]\), \(S<1\), with \(z(0)=0\), gives \(v=U\) on \([0,1)\). No candidate terminal trace is an entering hypothesis of this identification. [r-body:1366-1407]

After this identification, every finite rectangle bound of \(U\) applies to \(v\). The uniform speed bound and finite \(R_{0,1}\) conflict with the source candidate's unbounded speed and the positive exterior divergence above. This is the manuscript's external-candidate exclusion, with native forced theorem, full residual admission, identical prescribed data, strict-interval classical regularity, and exterior-agreement inputs kept explicit. [r-body:1409-1451]

### Conservative-force reduction has its own hypothesis

For \(f=\nabla\phi\), pressure \(p-\phi\) gives an unforced velocity equation. Orthogonal projection gives the residual's distance to all pressure adjustments as \(\|\mathbb Pf\|_{H^m}\). This reduction retains the conservative-force hypothesis. [r-body:1865-1944]

In a fixed cutoff exterior rectangle away from the axis, the source has terminal heat jets \(K_j>0\) and azimuthal force
\[
(F_j)_\theta
=-K_j\left(\chi_{rr}+\chi_{zz}
-\frac{1+4h+4j}{r}\chi_r\right).
\]
If this vanished throughout the connected rectangle, the cutoff would solve a uniformly elliptic equation while attaining its maximum one and also vanishing at interior points. The strong maximum principle excludes that combination. A compactly supported azimuthal divergence-free test field of matching sign gives \(\langle\mathbb PF_j,w\rangle>0\). At \(j=0\) the resulting positive dual bound persists on a final time interval. This obstructs absorbing this prescribed candidate force into pressure; it is separate from the uniqueness comparison and from the sign of total force work. [r-body:1946-2079]

### The four proposed refutation readouts, with their actual inputs

The author's original four-part list has these meanings. In the supplied rehearsal's order, the third and fourth are compatible smoothness through the endpoint and the acceleration/participation comparison.

1. **Individual terms.** A sufficiently high finite norm rectangle bounds each selected velocity, pressure, transport, viscous and source coordinate. Every factor and its source must remain attached. [r-body:740–790]
2. **Combined size.** Summing the individual positive bounds controls the total sizes of the complete equation's terms. This differs from the signed residual being small: large terms can cancel exactly in the residual. [r-body:1010–1085]
3. **Compatible intersection and endpoint.** Whole-interval rows at all finite orders give a compatible smooth endpoint and restart for the original history. Smoothness only on each strict interval does not supply that terminal input. [r-body:390–449]
4. **Acceleration and participation.** The rectangle construction bounds material acceleration quantitatively. Equality with the candidate on each strict interval transfers that bound and conflicts with its divergent acceleration. Nonzero divergence of material acceleration is compatible with an incompressible velocity and a volume-preserving flow; incompressibility alone is not the contradiction. [r-body:933–998,1155–1230,1266–1450,1589–1693]

These are linked consequences of the whole-history control, rather than four independent proofs of that control. The candidate comparison also retains complete residual admission, identical prescribed data and force, and strict-interval uniqueness. The source's exact exterior cancels the full momentum residual while positive derivative integrals diverge. Pressure absorption requires zero projected force and is unavailable for the displayed nonzero projected cutoff force. [r-body:1087–1153,1359–1450,1865–1944,2011–2079]

The rough phrase “single rung” is not used as a mathematical premise here. Differentiating a smooth solution of the complete equation produces its full derivative identities. The issue is the quantitative whole-interval domains, not whether a candidate explicitly presents every derivative row. “Engineered force” describes the construction more accurately than “imaginary force.”


**Available outputs**

- Identification on every strict interval without an entering candidate terminal trace; transfer of regular-solution rectangle bounds; exclusion at the source premises; independent projected-force obstruction to pressure absorption.

**Exact sources**: r-body:116-143; r-body:553-606; r-body:1366-1407; r-body:1409-1451; r-body:1865-1944; r-body:1946-2079

## Technical walkthrough

# Navier–Stokes: the supplied whole argument

This model follows the current supplied arguments, preserving their standing and domains. Bracketed references name exact embedded source IDs and line spans; The executable embeds source paths, hashes and complete source bodies; use its source command for cited passages.

## Construction, domains and source dependencies

### Follow the native blocks, heights and recurrence on their actual domains

Fix one original history and \(I=(0,T_*)\). Whole-interval membership means that each selected defining integral over I is finite. It requires no common constant across all derivative orders. Fields defined at every interior time and fields with finite norms over I are distinct assertions.

**Initial and evolving rows.** The initial recurrences construct the full initial jet from \((u_0,\nu)\), or \((u_0,\nu,f)\). Local iteration and uniqueness construct one maximal history. Differentiation identifies its actual mixed rows and their complete equations on every strict classical interval. The displayed local iteration gives a positive interval depending on the current \(H^3\) datum and the prescribed force. [revision:u-setting:afb54c1cdd30:399–443,498–561; today:f-setting:432–481,548–629; u-analysis:671–694; f-analysis:680–717]

**Independently derived height coordinates.** Put \(C_s=\mathcal P_s+\mathcal W_s\), with \(\mathcal W_s=0\) unforced. Pairing the original equation gives
\[
E_s'=C_s-2\nu E_{s+1},
\qquad
R_k=\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{j+1/2}}
{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2.
\]
This identity is obtained by differentiation and substitution, retaining every transport, pressure and force-work term. Its derivation does not use finite rectangle norms. The identity and the assertion \(R_k\in L^1(I)\) have different roles. [u-relations:90–169; f-relations:103–187]

**The native whole-interval constructor.** Its output carries, for each finite N,M,
\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N.
\]
The constructor starts from the original datum, fixed viscosity and original prescribed force when present. It retains the evolving velocity, normalized pressure, complete mixed equations and their Sobolev domains on I. Its finite Sobolev graphs, restriction maps and compatible limit are expanded at each construction passage. The native theorem supplies this constructed family; the complete original theorem and proof bodies accompany that use. [revision:u-setting:afb54c1cdd30:454–623; today:f-setting:487–673]

**Finite selection and direct mixed exhaustion.** A finite selection of a jet carrying these domains preserves I, the fields, their weak derivative identities and normalized pressure. Its norm is the finite sum of those defining integrals. Restriction decreases the integrals, and monotone convergence identifies their supremum with the whole-I value. For fixed r,m, selecting enough rows gives
\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^{r}\|V_n\|_{L^2(I;H^m)}^2.
\]
No membership-generating operation follows that selection. A complete mixed intersection is also a direct entry from which finite rows can be selected. [u-relations:207–313; today:f-setting:681–708,747–791; f-relations:392–440]

**Integrated heights and spatial exhaustion.** The source obtains the height integral using the native finite block:
\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}^*.
\]
It then splits Fourier space into low and high frequencies to obtain
\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\bigl(\|u\|_{L^2(I;L^2)}^2
+2\|R_m\|_{L^1(I)}\bigr).
\]
Kinetic energy controls the first term, including prescribed source work in the forced branch. The native block controls the second term in this source route. An already integrated complete height graph can instead supply that term directly. [u-relations:315–392; f-relations:442–505]

**Return through the recurrence.** Starting with the complete spatial interval column, products and diffusion give \(u_t\in L^1(I;H^m)\), hence a continuous \(H^m\) representative up to the endpoint. With \(M_{n,m}=\sup_{[0,T_*]}\|V_n\|_{H^m}\), the recurrence gives the finite bound
\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m\sum_{a=0}^{n}\binom naM_{a,m+2}M_{n-a,m+2}
+\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\]
All velocity factors on the right have temporal order at most n. The normalized pressure formula recovers Q_n; every F_n vanishes unforced. Finite interval length converts these continuous rows into the mixed Sobolev intersection. Thus the return is a genuine construction from the whole-I spatial column, with that column retained as its input. [revision:u-setting:afb54c1cdd30:668–758; f-relations:508–570]

The native whole-I blocks feed both readings: direct mixed exhaustion, and completed heights → spatial Sobolev column → recurrence return. The height identities arise by differentiating the original energy rows; their evaluation on the constructed family retains its full interval and defining integrals. Both readings agree on every velocity and pressure coordinate. The displayed Sobolev graphs and projection maps make this assembly explicit.

**The complete positive square retains transport.** In the forced branch its integrated right side contains \(\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt\), with F_n=0 unforced. The source bounds the nonlinear factors using the available velocity rectangle; the prescribed force contribution has its own finite budget. The complete square keeps its boundary values and transport-force source; the stated product bounds evaluate that source on the retained finite graph. [f-relations:189–382]

Once the relevant whole-I rows are available, compatible traces, normalized endpoint recurrences, local restart and overlap uniqueness continue the original history. The original future force remains attached throughout the forced branch.


## 1. The original histories and their variables

For the unforced branch fix
\[
u_0\in H^\infty_\sigma(\mathbb R^3),\qquad
H^\infty=\bigcap_{m\ge0}H^m,\qquad \nu>0.
\]
The generated maximal pressure-complete history is \((T_*,u,p)\), with
\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,\quad
\nabla\cdot u=0,\quad u(0)=u_0,\quad p=R_iR_j(u_i u_j).
\]
The \(L^2\) pressure normalization is unique: a pressure difference has Fourier support at zero and belongs to \(L^2\), so it vanishes. [u-setting:4-86]

For the forced branch prescribe the complete triple
\[
(u_0,\nu,f),\qquad
f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3)).
\]
Its velocity solves the equation with \(+f\) on the right. Its normalized pressure is
\[
p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\cdot f.
\]
Every coordinate belongs to this forced history; restart retains the original future \(f(t)\). [f-native:20-107]

The independent variables remain \(x,t\); derivative indices do not advance time or evaluate variables. All columns describe one fluid per branch. Material conversion retains commutators. The direct intersection and height-relationship constructions remain independent entries, without a universal prerequisite between them. [contract:46-82]

## 2. Analytic operations used throughout

Write \(\Lambda=(-\Delta)^{1/2}\), \(A=(I-\Delta)^{1/2}\), and \(\|v\|_{H^s}=\|A^sv\|_2\). Fourier Cauchy–Schwarz proves \(H^s\hookrightarrow C^k\) for \(s>k+3/2\). Weighted convolution and Young's inequality give the finite-order multiplication bounds. Riesz transforms and the Leray projection are bounded Fourier multipliers commuting with spatial derivatives. [u-analysis:63-101,167-312]

The pressure multiplier in the forced branch includes \(\Phi=(-\Delta)^{-1}\nabla\cdot F\). Split its Fourier norm at \(|\xi|=1\). At low frequencies \(|\widehat F|\le c\|F\|_{L^1}\), and the squared potential multiplier has the locally integrable radial weight \(|\xi|^{-2}\) in three dimensions. At high frequencies its order is \(-1\), controlled by a finite Sobolev norm. The displayed source lemma bounds its \(H^m\) norm using \(\|F\|_{L^1}+\|F\|_{H^m}\), including continuity for smooth Schwartz-valued force jets. Retaining the high-frequency order \(-1\) in this Fourier split also gives the sharper \(L^1+H^{m-1}\) estimate as an additional algebraic deduction. [f-analysis:256-324]

The adjacent trace operation starts with
\[
v\in L^2(0,T;H^{m+1}),\qquad
v_t\in L^2(0,T;H^{m-1}),\qquad 0<T<\infty.
\]
For a Fourier truncation \(v_R\),
\[
\frac d{dt}\|v_R\|_{H^m}^2
=2\operatorname{Re}\langle A^{m-1}(v_R)_t,A^{m+1}v_R\rangle.
\]
Integration and Cauchy–Schwarz give the norm variation bound. Apply it to differences of truncations, with one Lebesgue time supplying the initial Cauchy value, to obtain convergence in \(C([0,T];H^m)\). The result is a unique continuous representative and
\[
\sup_{[0,T]}\|v\|_{H^m}^2
\le T^{-1}\|v\|_{L^2H^m}^2
+2\|v_t\|_{L^2H^{m-1}}\|v\|_{L^2H^{m+1}}.
\]
This operation consumes adjacent interval memberships and is later used for each finite mixed row and for the endpoint. [u-analysis:330-374; f-analysis:342-386]

## 3. Pressure-complete prolongation and the initial face

Define
\[
V_n=\partial_t^nu,\quad Q_n=\partial_t^np,\quad
J_{n,\alpha}=\partial_x^\alpha V_n,\quad
\Pi_{n,\alpha}=\partial_x^\alpha Q_n.
\]
Differentiate the momentum and pressure equations with the full temporal and spatial Leibniz rules:
\[
\begin{aligned}
J_{n+1,\alpha}
&+\sum_{b=0}^n\sum_{\beta\le\alpha}
\binom nb\binom\alpha\beta
(J_{b,\beta}\cdot\nabla)J_{n-b,\alpha-\beta}
+\nabla\Pi_{n,\alpha}
=\nu\Delta J_{n,\alpha},\\
\Pi_{n,\alpha}
&=R_iR_j\sum_{b=0}^n\sum_{\beta\le\alpha}
\binom nb\binom\alpha\beta
J_{b,\beta,i}J_{n-b,\alpha-\beta,j},\qquad
\nabla\cdot J_{n,\alpha}=0.
\end{aligned}
\]
Every coordinate is an actual derivative of the original history. The pure temporal recurrence is obtained by setting \(\alpha=0\). The source proves these identities by differentiating the original equations and commuting the fixed multipliers. Their first domain is each strict classical interval. [u-setting:89-157]

Evaluation at zero recursively fixes the initial face:
\[
A_0=u_0,\quad
P_n=R_iR_j\sum_{b=0}^n\binom nb(A_b)_i(A_{n-b})_j,
\]
\[
A_{n+1}=\nu\Delta A_n
-\sum_{b=0}^n\binom nb(A_b\cdot\nabla)A_{n-b}-\nabla P_n.
\]
At step \(n\), only already determined rows enter. Differentiation, Sobolev multiplication, and the Riesz bounds preserve \(H^\infty\), so every finite initial row is available at every requested finite spatial order. Spatial differentiation supplies \(J_{n,\alpha}(0)\) and \(\Pi_{n,\alpha}(0)\). [u-setting:209-258,456-476]

Each selected equation retains its adjacent temporal entry, three viscous successors \(J_{n,\alpha+2e_\ell}\), pressure gradients, and all transport/pressure-product factors. Applying \(\mathbb P\) and \(I-\mathbb P\) reads evolution and pressure. This is a finite cover of original-history coordinates. [u-setting:478-519]

## 4. The velocity, height, and spatial columns

Put
\[
E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\qquad H=E_{0,1/2}.
\]
Quadratic differentiation gives the velocity-to-height contraction
\[
H^{(k)}=\tfrac12\sum_{b=0}^k\binom kb
\langle\Lambda^{1/2}V_b,\Lambda^{1/2}V_{k-b}\rangle.
\]
This uses every split through \(k\); scalar \(H^{(k)}\) is not a replacement for the full vector row. [u-relations:54-88]

Define the complete signed transfer
\[
\mathcal P_{r,s}
=-\operatorname{Re}\left\langle\Lambda^sV_r,
\Lambda^s\left(\sum_{b=0}^r\binom rb(V_b\cdot\nabla)V_{r-b}
+\nabla Q_r\right)\right\rangle.
\]
Pair the complete temporal recurrence with \(\Lambda^{2s}V_r\). The viscous pairing is exactly \(-2\nu E_{r,s+1}\), giving
\[
\partial_tE_{r,s}=\mathcal P_{r,s}-2\nu E_{r,s+1}.
\]
Differentiate, substitute the next spatial-energy identity, and induct on \(k\):
\[
\partial_t^kE_{r,s}
=(-2\nu)^kE_{r,s+k}
+\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}\mathcal P_{r,s+j}.
\]
For \(r=0,s=1/2\), division by \((-2\nu)^k\) reconstructs
\[
R_k:=
\frac{H^{(k)}-\sum_{j=0}^{k-1}(-2\nu)^j
\partial_t^{k-1-j}\mathcal P_{j+1/2}}{(-2\nu)^k}
=E_{k+1/2}.
\]
These are triangular identities with all differentiated currents retained. They are derived on strict intervals and give the relationship rows that can be collected into compatible finite rectangles of identities. [u-relations:90-169; contract:58-82]

Each complete column has its own intersection implication. Spatially,
\[
L^2_x\cap\bigcap_{k\ge0}\dot H_x^{k+1/2}
=\bigcap_{m\ge0}H_x^m\hookrightarrow C^\infty_x.
\]
The \(L^2\) coordinate controls low frequencies, and arbitrarily high half-integer weights control every finite integer weight. Temporally,
\[
\bigcap_{r\ge0}H^r(I)\hookrightarrow C^\infty_t(I),\qquad
\bigcap_{r\ge0}H^r(I;H^m)\hookrightarrow C^\infty_t(I;H^m).
\]
Choosing temporal and spatial exponents above each requested derivative order gives the mixed implication. The intersection keeps every finite membership; it introduces no sum across infinitely many orders. [u-spine:345-458]

For the admitted history, the completed graph has the exact integrated correspondence
\[
\int_I R_k=\tfrac12\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2.
\]
Thus every \(R_k\in L^1(I)\), with the finite-energy \(L^2(I;L^2)\) floor, is equivalent to the full spatial \(L^2\) intersection. This uses the completed graph, including its currents. Scalar temporal smoothness of \(H\) alone is a different input. [u-spine:406-422]

## 5. The author unforced construction, expanded in place

### 1. Start with the prescribed fluid

Fix \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\). In the forced branch fix the entire original smooth-in-time, Schwartz-in-space source \(f\), including its future values. Set \(F_n=\partial_t^n f\) and \(\Phi_n=(-\Delta)^{-1}\nabla\cdot F_n\). In the unforced branch set \(f\) and every \(F_n,\Phi_n\) to zero.

Local realization and overlap uniqueness give one maximal pressure-normalized classical history \((T_*,u,p)\) on \([0,T_*)\times\mathbb R^3\). Its evolution is
\[
u(t)=u_0+\int_0^t[\nu\Delta u-(u\cdot\nabla)u-\nabla p+f](s)\,ds,
\qquad
p(t)=R_iR_j(u_i(t)u_j(t))-\Phi_0(t).
\]
The pressure operator uses the velocity throughout space, then evaluates its result at the spatial point under consideration. It retains the prescribed normalization, so no freely chosen function of time is added to pressure. The initial face and local evolution are distinct operations: the initial jet is calculated from \(u_0\) and \(F_n(0)\), while the evolving field uses the complete original \(f(t)\). No convergent Taylor series in time is assumed.

Sources: `author:u-how:e2c9bf4a1e04` 205–235; `author:f-how:f75f1c7c33b0` 5–21; `revision:u-setting:006d0d1f43f9` 403–429. The last source explicitly identifies local construction, overlap uniqueness, the maximal union, and strict-horizon regularity.

### 1a. Construct the actual evolving history

This is the evolving-history operation inside the native constructor. At the initial entry write \(a=u_0\in H^\infty_\sigma(\mathbb R^3)\); at a restart use its incoming velocity as \(a\). Fix \(\nu>0\), and put \(f=g=0\) in the unforced branch. In the forced branch the prescribed input is \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), with \(g=\mathbb P f\); every restart uses the translated original force \(r\mapsto f(s+r)\).

**1. Construct one velocity on a common base interval.** Let
\[
\begin{aligned}
C_q&=\sqrt3\,C_3^{\rm alg},\\
L_\nu&=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2},\\
c_\nu&=(8C_qL_\nu^2)^{-2}.
\end{aligned}
\]
At a restart time \(s\), set \(\Gamma_s=\|g\|_{L^2(s,s+1;H^2)}\) and \(B_s=\|a\|_{H^3}+\Gamma_s\). In the unforced branch \(\Gamma_s=0\). Choose
\[
0<\delta\le\min\{1,c_\nu(1+B_s)^{-2}\},\qquad R=2L_\nu B_s.
\]
After translating \(s\) to zero, use the Banach space
\[
X_\delta=C([0,\delta];H^3_\sigma)\cap L^2(0,\delta;H^4_\sigma),
\quad v_t\in L^2(0,\delta;H^2_\sigma),
\]
with norm equal to the sum of the three displayed norms. On its closed radius-\(R\) ball with trace \(a\), iterate the actual Duhamel map
\[
\begin{aligned}
\Phi(v)(t)={}&e^{\nu t\Delta}a
+\int_0^te^{\nu(t-r)\Delta}g(s+r)\,dr\\
&-\int_0^te^{\nu(t-r)\Delta}
\mathbb P\nabla\cdot(v\otimes v)(r)\,dr.
\end{aligned}
\]
Within the local estimates and recurrences below, \(f\) and \(g\) denote the shifted functions \(t\mapsto f(s+t)\) and \(t\mapsto g(s+t)\). Here \(t\) is elapsed local time. At the initial construction \(s=0\); after overlap identification, \(w(t)=u(s+t)\) and \(q(t)=p(s+t)\).
The source proves the linear estimate \(\|z\|_{X_\delta}\le L_\nu(\|a\|_{H^3}+\|F\|_{L^2H^2})\) for \(z_t-\nu\Delta z=F\), and
\[
\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}
\le C_q\|v\|_{H^3}\|z\|_{H^3}.
\]
Consequently \(\Phi\) preserves this ball and
\[
\|\Phi(v)-\Phi(z)\|_{X_\delta}
\le\frac{B_s}{2(1+B_s)}\|v-z\|_{X_\delta}
\le\tfrac12\|v-z\|_{X_\delta}.
\]
The forced linear trajectory supplies a member of the ball; when \(B_s=0\), the fixed point is zero. Iteration converges in \(X_\delta\) to an actual velocity \(w\), rather than constructing independent formal rows.

**2. Retain every spatial order on this chosen interval.** For \(m\ge3\), let \(S_k\) be restriction of the Fourier transform to \(|\xi|\le k\), and replace \(a,g,\mathbb P\nabla\cdot(v\otimes v)\) in \(\Phi\) by their \(S_k\) projections. The resulting fixed points satisfy \(w^{(k)}=S_kw^{(k)}\) and \(\sup_k\|w^{(k)}\|_{X_\delta}\le R\). No order-dependent reduction of \(\delta\) is introduced. Self-adjointness and commutation remove \(S_k\) from the energy pairing, giving
\[
\frac12\frac d{dt}\|w^{(k)}\|_{H^m}^2
+\nu\|\nabla w^{(k)}\|_{H^m}^2
\le K_m\|\nabla w^{(k)}\|_\infty\|w^{(k)}\|_{H^m}^2
+\|g\|_{H^m}\|w^{(k)}\|_{H^m}.
\]
Here the final term vanishes unforced, and
\[
\|\nabla v\|_\infty\le C_{\nabla,3}\|v\|_{H^3},\qquad
C_{\nabla,3}=(2\pi)^{-3/2}
\left(\int_{\mathbb R^3}|\xi|^2\langle\xi\rangle^{-6}\,d\xi\right)^{1/2}.
\]
Thus \(\int_0^\delta\|\nabla w^{(k)}\|_\infty\le C_{\nabla,3}\delta R\), independently of \(k\) and \(m\). With
\(E_{k,m}(t)=\|w^{(k)}(t)\|_{H^m}^2+2\nu\int_0^t\|\nabla w^{(k)}\|_{H^m}^2\), Gronwall yields
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{2K_mC_{\nabla,3}\delta R}\|a\|_{H^m}^2
\quad\text{(unforced)},
\]
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{\delta+2K_mC_{\nabla,3}\delta R}
\bigl(\|a\|_{H^m}^2+\|g\|_{L^2H^m}^2\bigr)
\quad\text{(forced)}.
\]
The truncated equation also bounds \(\partial_tw^{(k)}\) in \(L^2H^{m-1}\). The contraction estimate
\(\|w^{(k)}-w\|_{X_\delta}\le2\|\Phi_k(w)-\Phi(w)\|_{X_\delta}\to0\)
identifies every higher-order weak limit with this already constructed velocity. Adjacent Hilbert-scale trace then gives
\[
w\in C([0,\delta];H^m_\sigma)\cap L^2(0,\delta;H^{m+1}_\sigma),
\qquad w_t\in L^2(0,\delta;H^{m-1}_\sigma).
\]
For \(m<3\), Sobolev nesting supplies the asserted lower orders. The interval is fixed; the bounds may depend on \(m\).

**3. Recover normalized pressure and actual temporal rows.** Define
\[
q=R_iR_j(w_iw_j)-(-\Delta)^{-1}\nabla\cdot f,
\]
with the force potential omitted unforced. The Riesz multipliers are bounded on every \(H^m\), and the potential is in \(H^m\) because
\[
\|(-\Delta)^{-1}\nabla\cdot h\|_{H^m}
\le C_m^{\rm fp}(\|h\|_{L^1}+\|h\|_{H^m}).
\]
Its low-frequency proof uses \(\int_{|\xi|\le1}|\xi|^{-2}\,d\xi<\infty\) in dimension three; each derivative of the prescribed Schwartz force meets this hypothesis. Set \(W_0=w\), \(F_n=\partial_t^nf\), and recursively define
\[
Q_n=R_iR_j\sum_{a=0}^n\binom naW_{a,i}W_{n-a,j}
-(-\Delta)^{-1}\nabla\cdot F_n,
\]
\[
W_{n+1}=\nu\Delta W_n
-\sum_{a=0}^n\binom na(W_a\cdot\nabla)W_{n-a}
-\nabla Q_n+F_n.
\]
Put \(F_n=0\) and omit its potential unforced. Spatial persistence makes every right-hand side continuous in every fixed lower Sobolev order. The momentum equation starts the induction with \(\partial_tW_0=W_1\); distributional differentiation, mixed Leibniz, and the pressure formula then give
\[
W_n=\partial_t^nw,\qquad Q_n=\partial_t^nq,
\qquad W_n,Q_n\in C([0,\delta];H^m)
\quad(n,m\ge0).
\]
These are derivatives of one evolving velocity and one normalized pressure. Their values at zero give the datum-generated triangular initial face.

**4. Identify the history through every overlap.** Splitting Duhamel at a time \(r\) and applying the heat semigroup identity gives a restart with datum \(w(r)\) and original future force. For two mild histories \(v,z\) with a common left trace on a short interval \(J\) of length \(h\), their difference obeys
\[
\|v-z\|_{C(J;H^3)}
\le L_\nu C_qh^{1/2}M_b\|v-z\|_{C(J;H^3)},
\quad M_b=\|v\|_{C([0,b];H^3)}+\|z\|_{C([0,b];H^3)}.
\]
A finite partition with coefficient below one gives equality over each finite common interval; the fixed force cancels and the normalized pressure formula gives equality of pressures. All nonempty shifted mild classes below their maximal lifespan are compatible. Their union is the unique maximal evolving pressure-normalized \(H^3\) history from the datum. For smooth data, spatial persistence and the displayed recurrences identify its smooth mixed jet on every strict compact time interval.

**Native output scope.** This block opens the datum-to-evolving-history operation inside the native producer. Its local estimates give the common local interval, actual derivatives, and identification of the maximal history. The native theorem states its whole-\(I\) domain output in the source passage developed below; finite selection preserves established memberships. The local estimates above are not a replacement derivation of whole-\(I\) high-order integrability when the maximal endpoint is finite.

Source locators in the embedded source envelopes:

- u-analysis 597–660: mild class, normalized pressure, restriction and classical admission; 662–889: constants and contraction; 891–981: persistence on one chosen interval; 982–1018: actual temporal rows and maximal union.
- f-analysis 256–323: pressure potential domain and multiplier proof; 609–678: forced class and restriction; 680–927: forced constants and contraction; 929–1027: persistence on one chosen interval; 1028–1071: derivatives and maximal union.
- u-analysis 167–202 and f-analysis 167–202 define the multiplication constants; u-analysis 374–402 and the forced transport-commutator counterpart define \(K_m\), including \(K_m\le(7^m-1)(2m-4+\sqrt3)^{(m-1)^2/4}\).

### 2. Produce the first six pressure/velocity outputs at free \((t,x)\)

Put \(V_0=u\). Every equality below is an equality of fields on \([0,T_*)\times\mathbb R^3\), classically on strict horizons. Every product inside a Riesz operator is a function of the spatial variable; the operator result is evaluated at \((t,x)\). Summation over \(i,j\in\{1,2,3\}\) is understood.
\[
\begin{aligned}
Q_0(t,x)&=\left[R_iR_j(u_i u_j)\right](t,x)-\Phi_0(t,x),\\
V_1(t,x)&=\nu\Delta u(t,x)-(u\cdot\nabla)u(t,x)-\nabla Q_0(t,x)+F_0(t,x),\\
Q_1(t,x)&=\left[R_iR_j\big((V_1)_iu_j+u_i(V_1)_j\big)\right](t,x)-\Phi_1(t,x),\\
V_2(t,x)&=\nu\Delta V_1(t,x)-(V_1\cdot\nabla)u(t,x)
 -(u\cdot\nabla)V_1(t,x)-\nabla Q_1(t,x)+F_1(t,x),\\
Q_2(t,x)&=\left[R_iR_j\big((V_2)_iu_j+2(V_1)_i(V_1)_j+u_i(V_2)_j\big)\right](t,x)-\Phi_2(t,x),\\
V_3(t,x)&=\nu\Delta V_2(t,x)-(V_2\cdot\nabla)u(t,x)
 -2(V_1\cdot\nabla)V_1(t,x)\\
&\hspace{9mm}-(u\cdot\nabla)V_2(t,x)-\nabla Q_2(t,x)+F_2(t,x).
\end{aligned}
\]

The factor 2 in the last two rows comes from the two allocations of one time derivative to each velocity factor. These are not recursively chosen candidate fields: differentiation of the realized history gives \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\). Thus \(Q_0\) is produced from the spatial velocity product and prescribed source; \(V_1\) uses momentum; differentiating the pressure product produces \(Q_1\); differentiating momentum then produces \(V_2\), and this order repeats.

The general row records this operation without discarding any term:
\[
\begin{aligned}
 B_n&=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\\
 Q_n&=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,\\
 V_{n+1}&=\nu\Delta V_n-B_n-\nabla Q_n+F_n.
\end{aligned}
\]
Sources: `author:u-how:e2c9bf4a1e04` 112–133, 205–235; `author:f-how:f75f1c7c33b0` 40–67. The six displayed rows are direct binomial expansions of those sourced recurrences.

### 3. Evaluate the equations initially

Let \(A_n(x)=V_n(0,x)\), \(P_n(x)=Q_n(0,x)\). Evaluation gives the concrete triangular calculation
\[
\begin{aligned}
A_0&=u_0,\\
P_0&=R_iR_j((u_0)_i(u_0)_j)-\Phi_0(0),\\
A_1&=\nu\Delta u_0-(u_0\cdot\nabla)u_0-\nabla P_0+F_0(0),\\
P_1&=R_iR_j((A_1)_i(u_0)_j+(u_0)_i(A_1)_j)-\Phi_1(0),\\
A_2&=\nu\Delta A_1-(A_1\cdot\nabla)u_0-(u_0\cdot\nabla)A_1-\nabla P_1+F_1(0),\\
P_2&=R_iR_j((A_2)_i(u_0)_j+2(A_1)_i(A_1)_j+(u_0)_i(A_2)_j)-\Phi_2(0),\\
A_3&=\nu\Delta A_2-(A_2\cdot\nabla)u_0-2(A_1\cdot\nabla)A_1
 -(u_0\cdot\nabla)A_2-\nabla P_2+F_2(0).
\end{aligned}
\]
Every expression here is a field on \(\mathbb R^3\). At order \(n\), the pressure and next velocity use already determined velocity rows \(A_0,\ldots,A_n\) and the fixed source row \(F_n(0)\). Finite-order multiplication and the normalized pressure construction put each required initial row in every finite spatial Sobolev order, as stated by the source's initial-jet lemma. This supplies the initial face, rather than a bound for integration up to \(T_*\).

Sources: `revision:u-setting:afb54c1cdd30` 498–518; `today:f-setting` 548–565. The displayed early rows expand those initial recurrences.

### 4. Produce spatial rows without changing the history

For a multi-index \(\alpha\), set \(J_{n,\alpha}=\partial_x^\alpha V_n\), \(\Pi_{n,\alpha}=\partial_x^\alpha Q_n\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). The complete equation is
\[
 J_{n+1,\alpha}=\nu\Delta J_{n,\alpha}
 -\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 -\nabla\Pi_{n,\alpha}+F_{n,\alpha},
\]
\[
 \Pi_{n,\alpha}=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta})_i(J_{n-a,\alpha-\beta})_j
 -(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]
These remain fields on the original \([0,T_*)\times\mathbb R^3\); at zero they become \(\partial_x^\alpha A_n\), \(\partial_x^\alpha P_n\). For example, a first spatial derivative of the original row contains both \((\partial_\ell u\cdot\nabla)u\) and \((u\cdot\nabla)\partial_\ell u\), the viscous term \(\nu\Delta\partial_\ell u\), the pressure term \(\nabla\partial_\ell p\), and \(\partial_\ell f\).

A selected equation retains \(J_{n+1,\alpha}\), all \(J_{n,\alpha+2e_\ell}\), all \(\Pi_{n,\alpha+e_\ell}\), both factors of every transport product, and both factors of every differentiated pressure product. The forced record also retains the direct source and pressure-source coordinates. This is a finite dependency cover for selected equations; it does not impose an autonomous closure on the outer coordinates. Trying to evolve the last retained temporal entry invokes the next derivative and moves the boundary outward. No finite evolution solver is demanded: the entries are derivatives of the original history, as the source explicitly states.

Sources: `revision:u-setting:afb54c1cdd30` 520–561; `today:f-setting` 567–611.

The independently formed completed-height relationships and the whole-interval output are developed below, followed by their permitted projections and direct uses.

This view follows the actual How the Proof Works construction as one continuous mathematical account. The original unforced history has F_n=Phi_n=W_(r,s)=0 throughout. The equations, their domains and the independent entries are kept together.

Fix the original divergence-free datum \(u_0\in H^\infty_\sigma(\mathbb R^3)\), positive \(\nu\), and its pressure-normalized maximal classical history. At a proposed finite maximal time put \(I=(0,T_*)\). The following equations give a continuous reading of the author's field, viscous and completed-height construction. Set \(F_n=0\), \(\Phi_n=0\) and \(\mathcal W_{r,s}=0\) throughout this unforced entry. The native datum theorem retains its supplied whole-terminal output; an already complete mixed or spatial column can enter the indicated reconstruction directly. [author:u-how:5a06882c5628:212–229,265–307]

Write

\[
V_n=\partial_t^nu,\quad Q_n=\partial_t^np,\quad
J_{n,\alpha}=\partial_x^\alpha V_n,\quad
\Pi_{n,\alpha}=\partial_x^\alpha Q_n,
\]

and in the forced branch put \(F_n=\partial_t^nf\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). Set every \(F_n\) to zero for the unforced branch. Define

\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]

The full temporal and pressure rows are

\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\]

\[
-\Delta Q_n=\partial_i\partial_j
 \sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\nabla\cdot F_n,
\]

\[
Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,
\qquad \Phi_n=(-\Delta)^{-1}\nabla\cdot F_n.
\]

The spatially differentiated row contains every allocation of every derivative:

\[
\begin{aligned}
J_{n+1,\alpha}
&+\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha} \\
&=\nu\Delta J_{n,\alpha}+F_{n,\alpha},
\end{aligned}
\]

\[
\Pi_{n,\alpha}
=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 J_{a,\beta,i}J_{n-a,\alpha-\beta,j}
-(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]

Incompressibility is retained in every velocity row. The pressure formula is fixed by the normalized \(H^0\) pressure; a harmonic \(H^0\) difference has Fourier support at \(\{0\}\) and vanishes. [author:u-how:5a06882c5628:105–140; author:f-how:f75f1c7c33b0:40–68; today:f-setting:1–55,567–611]

At zero the operation is an explicit recursion. With \(A_n=V_n(0)\) and \(P_n=Q_n(0)\),

\[
\begin{aligned}
A_0&=u_0,\\
P_n&=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j-\Phi_n(0),\\
A_{n+1}&=\nu\Delta A_n
-\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}
-\nabla P_n+F_n(0).
\end{aligned}
\]

At step \(n\), each velocity input has already been determined. Multiplication, differentiation and the fixed pressure multipliers put each required initial row in every finite Sobolev order. Taking \(\partial_x^\alpha\) gives the initial mixed face. This recursion determines the initial derivatives and their overlap identity; it is not a time-Taylor convergence assumption. [revision:u-setting:006d0d1f43f9:498–518; today:f-setting:548–565]

For an equation \((n,\alpha)\), retain \(J_{n+1,\alpha}\), all three \(J_{n,\alpha+2e_\ell}\), \(\Pi_{n,\alpha+e_\ell}\), and every pair \(J_{a,\beta,i}\), \(J_{n-a,\alpha-\beta+e_i}\) occurring in transport. For pressure retain every product allocation needed at \(\gamma=\alpha\) and \(\gamma=\alpha+e_\ell\). The forced record also keeps \(F_{n,\alpha}\) and the force-potential coordinates at those pressure indices. This finite dependency cover belongs to the original full field. [revision:u-setting:006d0d1f43f9:520–561; today:f-setting:567–611]

Apply \(\mathbb P\) to the complete temporal row, use \(\Delta=-\Lambda^2\), and commute \(\Lambda^s\) with the projection:

\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n
=\Lambda^s\mathbb P(F_n-B_n).
\tag{1}
\]

Here the next temporal derivative and two more spatial derivatives occur in one vector equality, with the entire nonlinear face retained. On squaring, the cross term is

\[
\begin{aligned}
2\nu\operatorname{Re}\langle\Lambda^sV_{n+1},\Lambda^{s+2}V_n\rangle
&=2\nu\operatorname{Re}\langle\Lambda^{s+1}\partial_tV_n,
                                  \Lambda^{s+1}V_n\rangle\\
&=\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2.
\end{aligned}
\]

Consequently,

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s\mathbb P(F_n-B_n)\|_2^2.
\tag{2}
\]

The complementary projection reads

\[
\nabla Q_n=(I-\mathbb P)(F_n-B_n).
\]

Orthogonality of these projections puts the pressure face back into the positive square:

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\tag{3}
\]

Integrating from zero to a strict time \(S<T_*\) keeps the boundary derivative:

\[
\begin{aligned}
&\nu\|\Lambda^{s+1}V_n(S)\|_2^2
+\int_0^S\bigl(\|\Lambda^sV_{n+1}\|_2^2
 +\nu^2\|\Lambda^{s+2}V_n\|_2^2
 +\|\Lambda^s\nabla Q_n\|_2^2\bigr)\,dt\\
&\qquad=\nu\|\Lambda^{s+1}A_n\|_2^2
 +\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2\,dt.
\end{aligned}
\tag{4}
\]

This is the actual complete-row relation used by the author. Each identity first holds on a strict classical interval; in an admitted finite whole-interval rectangle it is evaluated at the finite orders required by that rectangle. Equation (4) is a relationship among its temporal, spatial, pressure, force and transport coordinates. [author:f-how:f75f1c7c33b0:113–151; f-relations:189–252; revision:u-setting:006d0d1f43f9:431–443]

Set

\[
E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\qquad H=E_{0,1/2},
\]

\[
\mathcal P_{r,s}
=-\operatorname{Re}\langle\Lambda^sV_r,
                       \Lambda^s(B_r+\nabla Q_r)\rangle,
\qquad
\mathcal W_{r,s}
=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\]

Pairing the complete row with \(\Lambda^{2s}V_r\) gives

\[
\partial_tE_{r,s}
=-2\nu E_{r,s+1}+\mathcal P_{r,s}+\mathcal W_{r,s}.
\tag{5}
\]

The viscous contribution follows from

\[
\nu\operatorname{Re}\langle\Lambda^sV_r,\Lambda^s\Delta V_r\rangle
=-\nu\|\Lambda^{s+1}V_r\|_2^2.
\]

The pressure term is retained inside the complete current. The unforced reading has \(\mathcal W=0\). [author:u-how:5a06882c5628:142–190; u-relations:54–146; author:f-how:f75f1c7c33b0:153–180; f-relations:68–163]

The velocity-to-height map itself retains every temporal split:

\[
H^{(q)}
=\tfrac12\sum_{a=0}^q\binom qa
  \operatorname{Re}\langle\Lambda^{1/2}V_a,
                          \Lambda^{1/2}V_{q-a}\rangle.
\tag{6}
\]

Thus \(H^{(q)}\) differentiates the critical quadratic energy. It is not \(E_{q,1/2}\). To make “retain the differentiated currents” executable for a fresh reader, the ordinary Leibniz rule expands them as

\[
\partial_t^q\mathcal P_{r,s}
=-\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},
        \Lambda^s(B_{r+q-a}+\nabla Q_{r+q-a})\rangle,
\tag{7}
\]

\[
\partial_t^q\mathcal W_{r,s}
=\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},\Lambda^sF_{r+q-a}\rangle.
\tag{8}
\]

These follow because \(\partial_t^bB_r=B_{r+b}\) and \(\partial_t^bQ_r=Q_{r+b}\). Substituting the displayed product formula for \(B_j\) and the normalized product/potential formula for \(Q_j\) expands each into finitely many actual jet coordinates. Equations (7)–(8) are explicit product-rule expansions of the source's retained currents; they add no new existence premise.

For brevity let \(C_{r,s}=\mathcal P_{r,s}+\mathcal W_{r,s}\). Successive substitution of (5) gives

\[
\begin{aligned}
H'&=-2\nu E_{3/2}+C_{0,1/2},\\
H''&=4\nu^2E_{5/2}-2\nu C_{0,3/2}+\partial_tC_{0,1/2},\\
H^{(k)}&=(-2\nu)^kE_{k+1/2}
 +\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}.
\end{aligned}
\tag{9}
\]

To verify the induction, differentiate the order-\(k\) expression. Its leading term becomes

\[
(-2\nu)^k\partial_t E_{k+1/2}
=(-2\nu)^{k+1}E_{k+3/2}+(-2\nu)^kC_{0,k+1/2},
\]

which is exactly the new terminal summand of the order-\(k+1\) expression. The other summands receive one additional time derivative. With \(\nu>0\), the leading coefficient is nonzero, so the actual inverse operation is

\[
R_0=H,\qquad
R_k=
\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}}
{(-2\nu)^k}
=E_{k+1/2}.
\tag{10}
\]

The analogous formula for every temporal row replaces \(H^{(k)}\) by \(\partial_t^kE_{r,1/2}\), \(C_{0,s}\) by \(C_{r,s}\), and \(E_{k+1/2}\) by \(E_{r,k+1/2}\). This is a triangular coordinate correspondence. The current derivatives in (7)–(8) stay attached through the inversion. [u-relations:90–168; f-relations:103–184]

### Follow the native blocks, heights and recurrence on their actual domains

Fix one original history and \(I=(0,T_*)\). Whole-interval membership means that each selected defining integral over I is finite. It requires no common constant across all derivative orders. Fields defined at every interior time and fields with finite norms over I are distinct assertions.

**Initial and evolving rows.** The initial recurrences construct the full initial jet from \((u_0,\nu)\), or \((u_0,\nu,f)\). Local iteration and uniqueness construct one maximal history. Differentiation identifies its actual mixed rows and their complete equations on every strict classical interval. The displayed local iteration gives a positive interval depending on the current \(H^3\) datum and the prescribed force. [revision:u-setting:afb54c1cdd30:399–443,498–561; today:f-setting:432–481,548–629; u-analysis:671–694; f-analysis:680–717]

**Independently derived height coordinates.** Put \(C_s=\mathcal P_s+\mathcal W_s\), with \(\mathcal W_s=0\) unforced. Pairing the original equation gives
\[
E_s'=C_s-2\nu E_{s+1},
\qquad
R_k=\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{j+1/2}}
{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2.
\]
This identity is obtained by differentiation and substitution, retaining every transport, pressure and force-work term. Its derivation does not use finite rectangle norms. The identity and the assertion \(R_k\in L^1(I)\) have different roles. [u-relations:90–169; f-relations:103–187]

**The native whole-interval constructor.** Its output carries, for each finite N,M,
\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N.
\]
The constructor starts from the original datum, fixed viscosity and original prescribed force when present. It retains the evolving velocity, normalized pressure, complete mixed equations and their Sobolev domains on I. Its finite Sobolev graphs, restriction maps and compatible limit are expanded at each construction passage. The native theorem supplies this constructed family; the complete original theorem and proof bodies accompany that use. [revision:u-setting:afb54c1cdd30:454–623; today:f-setting:487–673]

**Finite selection and direct mixed exhaustion.** A finite selection of a jet carrying these domains preserves I, the fields, their weak derivative identities and normalized pressure. Its norm is the finite sum of those defining integrals. Restriction decreases the integrals, and monotone convergence identifies their supremum with the whole-I value. For fixed r,m, selecting enough rows gives
\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^{r}\|V_n\|_{L^2(I;H^m)}^2.
\]
No membership-generating operation follows that selection. A complete mixed intersection is also a direct entry from which finite rows can be selected. [u-relations:207–313; today:f-setting:681–708,747–791; f-relations:392–440]

**Integrated heights and spatial exhaustion.** The source obtains the height integral using the native finite block:
\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}^*.
\]
It then splits Fourier space into low and high frequencies to obtain
\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\bigl(\|u\|_{L^2(I;L^2)}^2
+2\|R_m\|_{L^1(I)}\bigr).
\]
Kinetic energy controls the first term, including prescribed source work in the forced branch. The native block controls the second term in this source route. An already integrated complete height graph can instead supply that term directly. [u-relations:315–392; f-relations:442–505]

**Return through the recurrence.** Starting with the complete spatial interval column, products and diffusion give \(u_t\in L^1(I;H^m)\), hence a continuous \(H^m\) representative up to the endpoint. With \(M_{n,m}=\sup_{[0,T_*]}\|V_n\|_{H^m}\), the recurrence gives the finite bound
\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m\sum_{a=0}^{n}\binom naM_{a,m+2}M_{n-a,m+2}
+\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\]
All velocity factors on the right have temporal order at most n. The normalized pressure formula recovers Q_n; every F_n vanishes unforced. Finite interval length converts these continuous rows into the mixed Sobolev intersection. Thus the return is a genuine construction from the whole-I spatial column, with that column retained as its input. [revision:u-setting:afb54c1cdd30:668–758; f-relations:508–570]

The native whole-I blocks feed both readings: direct mixed exhaustion, and completed heights → spatial Sobolev column → recurrence return. The height identities arise by differentiating the original energy rows; their evaluation on the constructed family retains its full interval and defining integrals. Both readings agree on every velocity and pressure coordinate. The displayed Sobolev graphs and projection maps make this assembly explicit.

**The complete positive square retains transport.** In the forced branch its integrated right side contains \(\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt\), with F_n=0 unforced. The source bounds the nonlinear factors using the available velocity rectangle; the prescribed force contribution has its own finite budget. The complete square keeps its boundary values and transport-force source; the stated product bounds evaluate that source on the retained finite graph. [f-relations:189–382]

Once the relevant whole-I rows are available, compatible traces, normalized endpoint recurrences, local restart and overlap uniqueness continue the original history. The original future force remains attached throughout the forced branch.



### Complete binomial cancellation

For divergence-free \(a\), put
\[
T(a,b,c)=\int (a\cdot\nabla)b\cdot c\,dx.
\]
Integration by parts gives \(T(a,b,c)=-T(a,c,b)\). Differentiating the kinetic transport pairing k times retains the complete allocation
\[
\sum_{a+b+c=k}\frac{k!}{a!b!c!}
\int (V_a\cdot\nabla)V_b\cdot V_c\,dx=0.
\]
For each a, exchanging b,c preserves the coefficient and reverses the sign. Every pressure pairing vanishes by the retained divergence identities. Thus the complete row gives
\[
\partial_t^{k+1}\!\left(\tfrac12\|u\|_2^2\right)
+\nu\partial_t^k\|\nabla u\|_2^2
=\partial_t^k\langle u,f\rangle.
\]
All source derivatives remain in the forced branch; set f=0 unforced. The contracted quadratic coordinate is
\[
\partial_t^k\!\left(\tfrac12\|u\|_2^2\right)
=\tfrac12\sum_{a=0}^k\binom ka\langle V_a,V_{k-a}\rangle.
\]
At k=2 it is \(\|V_1\|_2^2+\langle u,V_2\rangle\): the central square comes with its actual crossed pairing. The positive diagonal faces are read through the squared-row identity above, retaining its full transport-force source. This calculation keeps the original fields throughout. [u-relations:14–46,54–147; f-relations:13–60,68–163]



### Integrate the completed ladder with its boundary currents

Write \(c=-2\nu\), \(R_j=E_{0,j+1/2}\), and \(C_j=\mathcal P_{0,j+1/2}+\mathcal W_{0,j+1/2}\), with every \(\mathcal W=0\) unforced. The displayed ladder says
\[
H^{(k)}=c^kR_k+\sum_{j=0}^{k-1}c^jC_j^{(k-1-j)}.
\]
For k at least one define the full endpoint current
\[
A_k=H^{(k-1)}-\sum_{j=0}^{k-2}c^jC_j^{(k-2-j)}
=c^{k-1}R_{k-1}.
\]
The sum is empty at k=1. Integrating the preceding order-k identity on \((0,S)\), \(S<T_*\), gives
\[
c^k\int_0^S R_k\,dt
=[A_k]_0^S-c^{k-1}\int_0^S C_{k-1}\,dt.
\]
Divide by \(c^{k-1}\) and retain both endpoints:
\[
2\nu\int_0^S R_k\,dt
=R_{k-1}(0)-R_{k-1}(S)
+\int_0^S C_{k-1}\,dt.
\]
All differentiated transfer and force currents have telescoped into the adjacent energy and its full accumulated work. This is the integrated native ladder, evaluated on the original history. Its passage to the whole interval retains that coupled budget. On an available native whole-I block the memberships are already carried by the fields; finite selection adds no separate estimate. These identities expand the operation without changing that domain account. [u-relations:90–169; f-relations:103–184]

### The native source theorem and its whole-interval output

The native theorem states that its constructed evolving pressure-complete jet carries the whole-interval Sobolev domains. Finite selection preserves such domains. The dependency walk above follows both the native assertion and the completed-height return, retaining the inputs used at each step. The original proof bodies below expose the source reasoning behind the assertion; the exposition imposes no instruction to accept or reject it.

The datum construction concerns the original pressure-normalized history. Its output is the whole-terminal pressure-complete jet on \(I\): the actual fields \(J_{n,\alpha}=\partial_x^\alpha\partial_t^nu\) and \(\Pi_{n,\alpha}=\partial_x^\alpha\partial_t^np\), their governing identities, their prescribed initial face, and their compatible Sobolev memberships. For every finite \(n,m,\alpha\), these include
\[
J_{n,\alpha}\in L^2(I;H^m),\qquad
\Pi_{n,\alpha}\in L^1(I;H^m).
\]
The branch data determine which constructed jet is carried: \((u_0,\nu)\) unforced, or the entire original \((u_0,\nu,f)\) forced. The equations above explain its field coordinates and the independently originated height relations. The whole-terminal memberships belong to that construction's output and travel with its coordinates. In the following selection, \(N,M\) change which coordinates are retained, while \(I\) remains fixed. [author:u-how:e2c9bf4a1e04:205–347; revision:u-setting:afb54c1cdd30:454–495,563–623; author:f-how:f75f1c7c33b0:69–112,181–248; today:f-setting:487–546,631–708]

For any finite \(N,M\), select the record

\[
\mathcal R_{N,M}
=\bigl((V_n)_{0\le n\le N},(V_{n+1})_{0\le n\le N};
       (Q_n)_{0\le n\le N};(F_n)_{0\le n\le N}\bigr).
\]

The force coordinates are absent in the unforced record. The adjacent coordinates selected from the constructed whole-terminal jet are

\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N,
\quad I=(0,T_*),
\tag{11}
\]

with the pressure and mixed-coordinate memberships in the theorem.

The current dependency account distinguishes construction from finite selection. In the unforced source, the datum-generated whole-terminal jet already contains its compatible Sobolev coordinates on \(I\). The finite record is its coordinate projection:
\[
\mathcal R_{N,M}=\pi_{N,M}\mathcal J^{\mathrm{whole}}[u_0,\nu;I].
\]
Selecting \(V_n,V_{n+1},Q_n\) retains their original interval and the identity \(\partial_tV_n=V_{n+1}\). Equation (11) reads memberships already contained in that constructed object. It does not request an additional placement operation from the selected finite graph. [revision:u-setting:afb54c1cdd30:563–578; author:u-how:e2c9bf4a1e04:255–280]

The prescribed-force branch retains its own input \((u_0,\nu,f)\), force jet and pressure potential. Its current source states the native whole-interval outputs inside the forced datum construction after the complete initial face, coupled graph, both projections and source payment. Once this native output, a completed forced mixed intersection, or a completed spatial interval column is available, use its finite coordinates directly. No unforced construction supplies a forced input, and no second placement is imposed after a completed forced object. [today:f-setting:548–641,643–708]

#### The constructed Sobolev graph and its finite readouts

Fix the original branch data b: \((u_0,\nu)\) unforced, or \((u_0,\nu,f)\) forced, with the entire prescribed future force retained. Keep \(I=(0,T_*)\). For finite N and M at least three define the adjacent-row Hilbert graph
\[
D_{N,M}(I)=\{(v_0,\ldots,v_{N+1}):
\partial_tv_n=v_{n+1},\quad 0\le n\le N,\quad
\|v\|_{N,M}<\infty\},
\]
where \(\|v\|_{N,M}^2\) is the adjacent Sobolev norm in (12). Distributional differentiation is closed under convergence in its factors, so D is complete. The adjacent trace supplies \(v_n(0)\) for n at most N. Attach the datum-generated initial face, normalized pressure formula, full binomial products and original force, and impose the displayed momentum rows. This defines the closed coupled graph \(G^b_{N,M}(I)\). Product and pressure continuity follow from the preceding analytic operations. Every mixed coordinate is a derivative of these fields. Larger M covers all lower target orders.

Restriction \(\rho\) deletes outer temporal coordinates and uses the continuous spatial Sobolev inclusions. It preserves I, the derivative identities, normalized pressure, initial face and prescribed force. The native construction's supplied output is the coherent family
\[
\Gamma_b=\mathcal C_b(I)\in
\varprojlim_{N,M}G^b_{N,M}(I),
\qquad \rho\Gamma_{b;N,M}=\Gamma_{b;N',M'}.
\]
The source theorem supplies this element. Its finite readout is exactly
\[
\mathcal R^b_{N,M}=\pi_{N,M}\Gamma_b\in G^b_{N,M}(I).
\]
Thus its Sobolev memberships and finite defining norm are coordinates of the available output. Selection changes indices and has the identity time map on I. It introduces no further whole-interval estimate. [revision:u-setting:afb54c1cdd30:563–600; today:f-setting:631–708]

To assemble the limit explicitly, take the cofinal sequence \((N,M)=(k,k+3)\). Compatible finite coordinates identify one distributional field \(v_0=u\), with \(v_n=\partial_t^nu\). For any finite r,m choose k at least max(r,m). Then
\[
\sum_{n=0}^r\|\partial_t^nu\|_{L^2(I;H^m)}^2
\le\|\pi_{k,k+3}\Gamma_b\|_{k,k+3}^2<\infty.
\]
This produces the mixed intersection as a readout of the constructed family. Each finite norm is available; no bound common to derivative orders is imposed. The complete binomial cancellation and integrated height telescope above retain their full currents and boundary terms. The spatial reconstruction, acceleration estimate, endpoint and restart below consume this available object and its finite projections.

The following operations use those available objects:

| Available object | Operation | Usable output |
| --- | --- | --- |
| Constructed whole-terminal jet or its adjacent rows | Select finite coordinates and sum defining squared norms | The finite whole-terminal rectangle norm (12) |
| That finite norm on \(I\) | Restrict nonnegative integrals and exhaust strict horizons | The cutoff supremum (13) |
| Compatible finite mixed records | Exhaust mixed indices | The mixed intersection (14) |
| An already supplied completed mixed intersection | Select finite derivative coordinates | Adjacent rows and norm directly, by (15) |
| Completed integrated heights with full currents | Fourier split, then use the original equation | The spatial column and actual temporal/pressure rows |

Once these finite memberships are available, their defining squared norms give

\[
\mathfrak R_{N,M}(T_*)
=\sum_{n=0}^N\left(
 \|V_n\|_{L^2(I;H^{M+1})}^2+
 \|V_{n+1}\|_{L^2(I;H^{M-1})}^2\right)<\infty.
\tag{12}
\]

Restriction to \((0,S)\) decreases each nonnegative integral. Monotone convergence identifies

\[
\sup_{S<T_*}\mathfrak R_{N,M}(S)
=\lim_{S\uparrow T_*}\mathfrak R_{N,M}(S)
=\mathfrak R_{N,M}(T_*).
\tag{13}
\]

The constant may depend on \(N,M,u_0,\nu,f,T_*\). No common constant over infinitely many orders is required. Enlarging the rectangle retains identical distributional derivatives, the identical initial recursion and the identical pressure normalization. Deleting outer coordinates recovers the smaller record. [author:u-how:5a06882c5628:265–289; author:f-how:f75f1c7c33b0:182–220; revision:u-setting:006d0d1f43f9:574–615; today:f-setting:643–672]


### Material acceleration is a readout of the native finite block

The native datum entry has no additional material-acceleration premise. Take its already obtained whole-I selection \(N=0,M=1\), and put
\[
r_u=\|u\|_{L^2(I;H^2)}^2,\qquad
r_t=\|u_t\|_{L^2(I;L^2)}^2,\qquad
R=r_u+r_t,\quad I_1=\|u_0\|_{H^1}^2.
\]
The original fields and interval I are retained throughout. The adjacent-row identity gives
\[
\frac d{dt}\|u\|_{H^1}^2
=2\operatorname{Re}\langle J^2u,u_t\rangle,
\qquad J=(1-\Delta)^{1/2},
\]
so integration and \(2ab\le a^2+b^2\) give
\[
\sup_{t\in I}\|u(t)\|_{H^1}^2\le I_1+R.
\]
With the source's fixed embedding constant \(C_E=(8\pi)^{-1/2}\),
\[
\|u\|_{L^2(I;L^\infty)}^2\le C_E^2r_u.
\]
At each time, \(\|(u\cdot\nabla)u\|_2\le\|u\|_\infty\|\nabla u\|_2\). Thus
\[
\|B_0\|_{L^2(I;L^2)}^2
\le C_E^2(I_1+R)r_u,
\]
and the original material acceleration has the finite budget
\[
\begin{aligned}
\mathcal A_*:=\|D_tu\|_{L^2(I;L^2)}^2
&\le 2r_t+2C_E^2(I_1+R)r_u\\
&\le 2R+2C_E^2(I_1+R)R<\infty.
\end{aligned}
\]
This is a composition of the native output, trace, embedding and the identity \(D_tu=u_t+B_0\). It produces an acceleration bound from a finite native block; it does not ask the native constructor to assume that bound. The original force, pressure and governing history remain fixed in either branch. [r-body:453–460,577–590,1569–1585]

The optional **material** entry proves the reverse sufficient implication from an independently supplied finite acceleration budget through the elliptic square, spatial Gronwall bounds, recurrence and endpoint. That implication is available when its input is supplied. It is neither the native constructor's definition nor an extra generating requirement after finite selection.

### Complete the selected interval pressure rows

For a fixed temporal order \(n\), spatial multi-index \(\alpha\) and target spatial order \(m\ge0\), retain both velocity factors in every pressure-product allocation. Put
\[
\Phi_{n,\alpha}=(-\Delta)^{-1}\operatorname{div}F_{n,\alpha}.
\]
At each time, the finite-order multiplication estimate \(H^{m+1}\cdot H^{m+1}\to H^m\) and boundedness of the Riesz transforms give
\[
\begin{aligned}
\|\Pi_{n,\alpha}(t)\|_{H^m}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}(t)\|_{H^{m+1}}
\|J_{n-a,\alpha-\beta}(t)\|_{H^{m+1}}
+\|\Phi_{n,\alpha}(t)\|_{H^m}.
\end{aligned}
\]
Integrate on the retained interval \(I\) and apply Cauchy–Schwarz separately to each product:
\[
\begin{aligned}
\|\Pi_{n,\alpha}\|_{L^1(I;H^m)}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}\|_{L^2(I;H^{m+1})}
\|J_{n-a,\alpha-\beta}\|_{L^2(I;H^{m+1})}
+\|\Phi_{n,\alpha}\|_{L^1(I;H^m)}<\infty.
\end{aligned}
\]
Choose a finite cut with \(N\ge n\) and \(M\ge m+|\alpha|\). Its available \(V_a\in L^2(I;H^{M+1})\) coordinates supply every velocity norm on this right-hand side after spatial differentiation. The bound for \(\nabla\Pi_{n,\alpha}\) in \(L^1(I;H^{m-1})\) follows by differentiation. At \(\alpha=0\), this is the temporal pressure estimate. In the unforced branch \(\Phi_{n,\alpha}=0\); in the forced branch the prescribed smooth Schwartz source and its potential budget supply the final term. Every pressure coordinate is thus read from its actual selected factors, with \(I\) unchanged. This operation consumes the constructed interval velocity coordinates; it does not generate their memberships. [author:u-how:e2c9bf4a1e04:283–295; revision:u-setting:afb54c1cdd30:602–612; today:f-setting:280–330,613–641]

The direct mixed reading chooses, for each requested finite \(r,m\), a rectangle containing \(V_0,\ldots,V_r\) at spatial order \(m\). Since these are the weak derivatives of \(u\),

\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^r\|V_n\|_{L^2(I;H^m)}^2<\infty.
\tag{14}
\]

Taking every finite pair gives \(u\in\bigcap_{r,m\ge0}H^r(I;H^m)\). The converse finite operation is direct projection: if this complete mixed intersection is the entering object, select its finitely many rows without repeating the datum construction. In particular,

\[
\mathfrak R_{N,M}(T_*)
\le 2\|u\|_{H^{N+1}(I;H^{M+1})}^2.
\tag{15}
\]

This entry needs no completed-height calculation. [revision:u-setting:006d0d1f43f9:621–655; today:f-setting:681–708]

The completed-height reading uses (10) on the native rows. For each finite \(k\),

\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}(T_*).
\tag{16}
\]

For the reverse spatial passage, split Fourier space at \(|\xi|=1\). The weight \((1+|\xi|^2)^m\) is at most \(2^m\) on the inner region and at most \(2^m|\xi|^{2m+1}\) on the outer region. It follows that

\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\left(\|u\|_{L^2(I;L^2)}^2+2\|R_m\|_{L^1(I)}\right).
\tag{17}
\]

The kinetic identity gives the low-frequency floor. Unforced,

\[
\tfrac12\|u(t)\|_2^2+\nu\int_0^t\|\nabla u\|_2^2
=\tfrac12\|u_0\|_2^2.
\]

Forced, put \(K_f(t)=\|u_0\|_2+\int_0^t\|\mathbb Pf(s)\|_2\,ds\). Pairing with \(u\), using incompressibility and then the scalar square-root estimate gives \(\|u(t)\|_2\le K_f(t)\). Thus the floor in (17) is bounded by \(T_*\|u_0\|_2^2\) or \(T_*K_f(T_*)^2\), respectively. The floor controls low frequencies; it is not promoted to an all-orders construction. [u-relations:14–45,315–392; f-relations:13–60]

Equations (16)–(17) show how the complete integrated height graph and the complete spatial \(L^2\) column encode one another. A reader entering with the complete height graph and every \(R_k\in L^1(I)\) can perform (17) directly. A reader entering with the spatial column can omit both (16) and the scalar height construction. Pointwise all-order Sobolev membership and interval all-order Sobolev membership are retained with their distinct domains.

This entry begins with the explicit whole-interval object

\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma),
\qquad T_*<\infty.
\tag{18}
\]

It is independent of how that column was obtained. At each finite target \(m\), the available \(m+2\) order gives

\[
\|\mathbb P\nabla\cdot(u\otimes u)\|_{L^1H^m}
\le C_m\|u\|_{L^2H^{m+2}}^2,
\quad
\|\Delta u\|_{L^1H^m}
\le\sqrt{T_*}\|u\|_{L^2H^{m+2}}.
\]

Substitution into the original projected equation yields

\[
\|u_t\|_{L^1H^m}
\le\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}<\infty.
\tag{19}
\]

Banach integration produces \(u\in W^{1,1}(I;H^m)\subset C([0,T_*];H^m)\) and the explicit bound

\[
M_{0,m}=\|u_0\|_{H^m}
 +\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}.
\]

Suppose \(V_0,\ldots,V_n\) are continuous in every finite spatial order. In the projected recurrence the available higher spatial orders, multiplication and source jet give the finite next-row bound

\[
M_{n+1,m}=\nu M_{n,m+2}
 +C_m\sum_{a=0}^n\binom naM_{a,m+2}M_{n-a,m+2}
 +\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\tag{20}
\]

Every term on the right has temporal order at most \(n\). The pressure formula recovers \(Q_n\) at any requested finite order, including \(-\Phi_n\) in the forced branch. On the interior the continuous vector expression equals \(\partial_tV_n\), and

\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau
\]

extends to \(0\le s\le t\le T_*\). It identifies the actual one-sided endpoint derivatives. Induction gives \(V_n,Q_n\in C([0,T_*];H^m)\) at every finite \(n,m\). Finite interval length then gives

\[
\|u\|_{H^r(I;H^m)}^2
\le T_*\sum_{n=0}^rM_{n,m}^2<\infty,
\]

and (11) follows by selecting adjacent coordinates. This is an actual constructive return from spatial to mixed rows, with no backward appeal to the mixed reading. [revision:u-setting:006d0d1f43f9:661–750; author:f-how:f75f1c7c33b0:222–250; f-relations:508–570]

## 6. The spatial-to-mixed return

The return operation has entering domain
\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma),
\qquad T_*<\infty.
\]
At a fixed target \(m\), the available \(m+2\) order gives
\[
\|\mathbb P\nabla\cdot(u\otimes u)\|_{L^1H^m}
\le C_m\|u\|_{L^2H^{m+2}}^2,\qquad
\|\Delta u\|_{L^1H^m}\le\sqrt{T_*}\|u\|_{L^2H^{m+2}}.
\]
The equation yields \(u_t\in L^1H^m\); Banach integration gives \(u\in C([0,T_*];H^m)\). Its representatives agree under Sobolev embedding because they extend the original distribution. [u-setting:624-667]

Assume the rows through \(V_n\) are continuous at every finite spatial order. Use
\[
Q_n=R_iR_j\sum_{b=0}^n\binom nb(V_b)_i(V_{n-b})_j,\qquad
V_{n+1}=\nu\Delta V_n-\sum_{b=0}^n\binom nb(V_b\cdot\nabla)V_{n-b}-\nabla Q_n.
\]
Higher available spatial orders and multiplication give \(Q_n,V_{n+1}\) continuously in any \(H^m\). Their derivative identity extends to the endpoints:
\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau.
\]
Induction identifies actual temporal derivatives and one-sided endpoint values. Finite \(T_*\) gives their \(L^2(I;H^m)\) memberships and the mixed intersection. The entering domain remains \(\mathscr S_0(I)\). [u-setting:669-708]

## 7. The author prescribed-force construction, expanded in place

### 1. Start with the prescribed fluid

Fix \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\). In the forced branch fix the entire original smooth-in-time, Schwartz-in-space source \(f\), including its future values. Set \(F_n=\partial_t^n f\) and \(\Phi_n=(-\Delta)^{-1}\nabla\cdot F_n\). In the unforced branch set \(f\) and every \(F_n,\Phi_n\) to zero.

Local realization and overlap uniqueness give one maximal pressure-normalized classical history \((T_*,u,p)\) on \([0,T_*)\times\mathbb R^3\). Its evolution is
\[
u(t)=u_0+\int_0^t[\nu\Delta u-(u\cdot\nabla)u-\nabla p+f](s)\,ds,
\qquad
p(t)=R_iR_j(u_i(t)u_j(t))-\Phi_0(t).
\]
The pressure operator uses the velocity throughout space, then evaluates its result at the spatial point under consideration. It retains the prescribed normalization, so no freely chosen function of time is added to pressure. The initial face and local evolution are distinct operations: the initial jet is calculated from \(u_0\) and \(F_n(0)\), while the evolving field uses the complete original \(f(t)\). No convergent Taylor series in time is assumed.

Sources: `author:u-how:e2c9bf4a1e04` 205–235; `author:f-how:f75f1c7c33b0` 5–21; `revision:u-setting:006d0d1f43f9` 403–429. The last source explicitly identifies local construction, overlap uniqueness, the maximal union, and strict-horizon regularity.

### 1a. Construct the actual evolving history

This is the evolving-history operation inside the native constructor. At the initial entry write \(a=u_0\in H^\infty_\sigma(\mathbb R^3)\); at a restart use its incoming velocity as \(a\). Fix \(\nu>0\), and put \(f=g=0\) in the unforced branch. In the forced branch the prescribed input is \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), with \(g=\mathbb P f\); every restart uses the translated original force \(r\mapsto f(s+r)\).

**1. Construct one velocity on a common base interval.** Let
\[
\begin{aligned}
C_q&=\sqrt3\,C_3^{\rm alg},\\
L_\nu&=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2},\\
c_\nu&=(8C_qL_\nu^2)^{-2}.
\end{aligned}
\]
At a restart time \(s\), set \(\Gamma_s=\|g\|_{L^2(s,s+1;H^2)}\) and \(B_s=\|a\|_{H^3}+\Gamma_s\). In the unforced branch \(\Gamma_s=0\). Choose
\[
0<\delta\le\min\{1,c_\nu(1+B_s)^{-2}\},\qquad R=2L_\nu B_s.
\]
After translating \(s\) to zero, use the Banach space
\[
X_\delta=C([0,\delta];H^3_\sigma)\cap L^2(0,\delta;H^4_\sigma),
\quad v_t\in L^2(0,\delta;H^2_\sigma),
\]
with norm equal to the sum of the three displayed norms. On its closed radius-\(R\) ball with trace \(a\), iterate the actual Duhamel map
\[
\begin{aligned}
\Phi(v)(t)={}&e^{\nu t\Delta}a
+\int_0^te^{\nu(t-r)\Delta}g(s+r)\,dr\\
&-\int_0^te^{\nu(t-r)\Delta}
\mathbb P\nabla\cdot(v\otimes v)(r)\,dr.
\end{aligned}
\]
Within the local estimates and recurrences below, \(f\) and \(g\) denote the shifted functions \(t\mapsto f(s+t)\) and \(t\mapsto g(s+t)\). Here \(t\) is elapsed local time. At the initial construction \(s=0\); after overlap identification, \(w(t)=u(s+t)\) and \(q(t)=p(s+t)\).
The source proves the linear estimate \(\|z\|_{X_\delta}\le L_\nu(\|a\|_{H^3}+\|F\|_{L^2H^2})\) for \(z_t-\nu\Delta z=F\), and
\[
\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}
\le C_q\|v\|_{H^3}\|z\|_{H^3}.
\]
Consequently \(\Phi\) preserves this ball and
\[
\|\Phi(v)-\Phi(z)\|_{X_\delta}
\le\frac{B_s}{2(1+B_s)}\|v-z\|_{X_\delta}
\le\tfrac12\|v-z\|_{X_\delta}.
\]
The forced linear trajectory supplies a member of the ball; when \(B_s=0\), the fixed point is zero. Iteration converges in \(X_\delta\) to an actual velocity \(w\), rather than constructing independent formal rows.

**2. Retain every spatial order on this chosen interval.** For \(m\ge3\), let \(S_k\) be restriction of the Fourier transform to \(|\xi|\le k\), and replace \(a,g,\mathbb P\nabla\cdot(v\otimes v)\) in \(\Phi\) by their \(S_k\) projections. The resulting fixed points satisfy \(w^{(k)}=S_kw^{(k)}\) and \(\sup_k\|w^{(k)}\|_{X_\delta}\le R\). No order-dependent reduction of \(\delta\) is introduced. Self-adjointness and commutation remove \(S_k\) from the energy pairing, giving
\[
\frac12\frac d{dt}\|w^{(k)}\|_{H^m}^2
+\nu\|\nabla w^{(k)}\|_{H^m}^2
\le K_m\|\nabla w^{(k)}\|_\infty\|w^{(k)}\|_{H^m}^2
+\|g\|_{H^m}\|w^{(k)}\|_{H^m}.
\]
Here the final term vanishes unforced, and
\[
\|\nabla v\|_\infty\le C_{\nabla,3}\|v\|_{H^3},\qquad
C_{\nabla,3}=(2\pi)^{-3/2}
\left(\int_{\mathbb R^3}|\xi|^2\langle\xi\rangle^{-6}\,d\xi\right)^{1/2}.
\]
Thus \(\int_0^\delta\|\nabla w^{(k)}\|_\infty\le C_{\nabla,3}\delta R\), independently of \(k\) and \(m\). With
\(E_{k,m}(t)=\|w^{(k)}(t)\|_{H^m}^2+2\nu\int_0^t\|\nabla w^{(k)}\|_{H^m}^2\), Gronwall yields
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{2K_mC_{\nabla,3}\delta R}\|a\|_{H^m}^2
\quad\text{(unforced)},
\]
\[
\sup_{t\le\delta}E_{k,m}(t)
\le e^{\delta+2K_mC_{\nabla,3}\delta R}
\bigl(\|a\|_{H^m}^2+\|g\|_{L^2H^m}^2\bigr)
\quad\text{(forced)}.
\]
The truncated equation also bounds \(\partial_tw^{(k)}\) in \(L^2H^{m-1}\). The contraction estimate
\(\|w^{(k)}-w\|_{X_\delta}\le2\|\Phi_k(w)-\Phi(w)\|_{X_\delta}\to0\)
identifies every higher-order weak limit with this already constructed velocity. Adjacent Hilbert-scale trace then gives
\[
w\in C([0,\delta];H^m_\sigma)\cap L^2(0,\delta;H^{m+1}_\sigma),
\qquad w_t\in L^2(0,\delta;H^{m-1}_\sigma).
\]
For \(m<3\), Sobolev nesting supplies the asserted lower orders. The interval is fixed; the bounds may depend on \(m\).

**3. Recover normalized pressure and actual temporal rows.** Define
\[
q=R_iR_j(w_iw_j)-(-\Delta)^{-1}\nabla\cdot f,
\]
with the force potential omitted unforced. The Riesz multipliers are bounded on every \(H^m\), and the potential is in \(H^m\) because
\[
\|(-\Delta)^{-1}\nabla\cdot h\|_{H^m}
\le C_m^{\rm fp}(\|h\|_{L^1}+\|h\|_{H^m}).
\]
Its low-frequency proof uses \(\int_{|\xi|\le1}|\xi|^{-2}\,d\xi<\infty\) in dimension three; each derivative of the prescribed Schwartz force meets this hypothesis. Set \(W_0=w\), \(F_n=\partial_t^nf\), and recursively define
\[
Q_n=R_iR_j\sum_{a=0}^n\binom naW_{a,i}W_{n-a,j}
-(-\Delta)^{-1}\nabla\cdot F_n,
\]
\[
W_{n+1}=\nu\Delta W_n
-\sum_{a=0}^n\binom na(W_a\cdot\nabla)W_{n-a}
-\nabla Q_n+F_n.
\]
Put \(F_n=0\) and omit its potential unforced. Spatial persistence makes every right-hand side continuous in every fixed lower Sobolev order. The momentum equation starts the induction with \(\partial_tW_0=W_1\); distributional differentiation, mixed Leibniz, and the pressure formula then give
\[
W_n=\partial_t^nw,\qquad Q_n=\partial_t^nq,
\qquad W_n,Q_n\in C([0,\delta];H^m)
\quad(n,m\ge0).
\]
These are derivatives of one evolving velocity and one normalized pressure. Their values at zero give the datum-generated triangular initial face.

**4. Identify the history through every overlap.** Splitting Duhamel at a time \(r\) and applying the heat semigroup identity gives a restart with datum \(w(r)\) and original future force. For two mild histories \(v,z\) with a common left trace on a short interval \(J\) of length \(h\), their difference obeys
\[
\|v-z\|_{C(J;H^3)}
\le L_\nu C_qh^{1/2}M_b\|v-z\|_{C(J;H^3)},
\quad M_b=\|v\|_{C([0,b];H^3)}+\|z\|_{C([0,b];H^3)}.
\]
A finite partition with coefficient below one gives equality over each finite common interval; the fixed force cancels and the normalized pressure formula gives equality of pressures. All nonempty shifted mild classes below their maximal lifespan are compatible. Their union is the unique maximal evolving pressure-normalized \(H^3\) history from the datum. For smooth data, spatial persistence and the displayed recurrences identify its smooth mixed jet on every strict compact time interval.

**Native output scope.** This block opens the datum-to-evolving-history operation inside the native producer. Its local estimates give the common local interval, actual derivatives, and identification of the maximal history. The native theorem states its whole-\(I\) domain output in the source passage developed below; finite selection preserves established memberships. The local estimates above are not a replacement derivation of whole-\(I\) high-order integrability when the maximal endpoint is finite.

Source locators in the embedded source envelopes:

- u-analysis 597–660: mild class, normalized pressure, restriction and classical admission; 662–889: constants and contraction; 891–981: persistence on one chosen interval; 982–1018: actual temporal rows and maximal union.
- f-analysis 256–323: pressure potential domain and multiplier proof; 609–678: forced class and restriction; 680–927: forced constants and contraction; 929–1027: persistence on one chosen interval; 1028–1071: derivatives and maximal union.
- u-analysis 167–202 and f-analysis 167–202 define the multiplication constants; u-analysis 374–402 and the forced transport-commutator counterpart define \(K_m\), including \(K_m\le(7^m-1)(2m-4+\sqrt3)^{(m-1)^2/4}\).

### 2. Produce the first six pressure/velocity outputs at free \((t,x)\)

Put \(V_0=u\). Every equality below is an equality of fields on \([0,T_*)\times\mathbb R^3\), classically on strict horizons. Every product inside a Riesz operator is a function of the spatial variable; the operator result is evaluated at \((t,x)\). Summation over \(i,j\in\{1,2,3\}\) is understood.
\[
\begin{aligned}
Q_0(t,x)&=\left[R_iR_j(u_i u_j)\right](t,x)-\Phi_0(t,x),\\
V_1(t,x)&=\nu\Delta u(t,x)-(u\cdot\nabla)u(t,x)-\nabla Q_0(t,x)+F_0(t,x),\\
Q_1(t,x)&=\left[R_iR_j\big((V_1)_iu_j+u_i(V_1)_j\big)\right](t,x)-\Phi_1(t,x),\\
V_2(t,x)&=\nu\Delta V_1(t,x)-(V_1\cdot\nabla)u(t,x)
 -(u\cdot\nabla)V_1(t,x)-\nabla Q_1(t,x)+F_1(t,x),\\
Q_2(t,x)&=\left[R_iR_j\big((V_2)_iu_j+2(V_1)_i(V_1)_j+u_i(V_2)_j\big)\right](t,x)-\Phi_2(t,x),\\
V_3(t,x)&=\nu\Delta V_2(t,x)-(V_2\cdot\nabla)u(t,x)
 -2(V_1\cdot\nabla)V_1(t,x)\\
&\hspace{9mm}-(u\cdot\nabla)V_2(t,x)-\nabla Q_2(t,x)+F_2(t,x).
\end{aligned}
\]

The factor 2 in the last two rows comes from the two allocations of one time derivative to each velocity factor. These are not recursively chosen candidate fields: differentiation of the realized history gives \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\). Thus \(Q_0\) is produced from the spatial velocity product and prescribed source; \(V_1\) uses momentum; differentiating the pressure product produces \(Q_1\); differentiating momentum then produces \(V_2\), and this order repeats.

The general row records this operation without discarding any term:
\[
\begin{aligned}
 B_n&=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\\
 Q_n&=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,\\
 V_{n+1}&=\nu\Delta V_n-B_n-\nabla Q_n+F_n.
\end{aligned}
\]
Sources: `author:u-how:e2c9bf4a1e04` 112–133, 205–235; `author:f-how:f75f1c7c33b0` 40–67. The six displayed rows are direct binomial expansions of those sourced recurrences.

### 3. Evaluate the equations initially

Let \(A_n(x)=V_n(0,x)\), \(P_n(x)=Q_n(0,x)\). Evaluation gives the concrete triangular calculation
\[
\begin{aligned}
A_0&=u_0,\\
P_0&=R_iR_j((u_0)_i(u_0)_j)-\Phi_0(0),\\
A_1&=\nu\Delta u_0-(u_0\cdot\nabla)u_0-\nabla P_0+F_0(0),\\
P_1&=R_iR_j((A_1)_i(u_0)_j+(u_0)_i(A_1)_j)-\Phi_1(0),\\
A_2&=\nu\Delta A_1-(A_1\cdot\nabla)u_0-(u_0\cdot\nabla)A_1-\nabla P_1+F_1(0),\\
P_2&=R_iR_j((A_2)_i(u_0)_j+2(A_1)_i(A_1)_j+(u_0)_i(A_2)_j)-\Phi_2(0),\\
A_3&=\nu\Delta A_2-(A_2\cdot\nabla)u_0-2(A_1\cdot\nabla)A_1
 -(u_0\cdot\nabla)A_2-\nabla P_2+F_2(0).
\end{aligned}
\]
Every expression here is a field on \(\mathbb R^3\). At order \(n\), the pressure and next velocity use already determined velocity rows \(A_0,\ldots,A_n\) and the fixed source row \(F_n(0)\). Finite-order multiplication and the normalized pressure construction put each required initial row in every finite spatial Sobolev order, as stated by the source's initial-jet lemma. This supplies the initial face, rather than a bound for integration up to \(T_*\).

Sources: `revision:u-setting:afb54c1cdd30` 498–518; `today:f-setting` 548–565. The displayed early rows expand those initial recurrences.

### 4. Produce spatial rows without changing the history

For a multi-index \(\alpha\), set \(J_{n,\alpha}=\partial_x^\alpha V_n\), \(\Pi_{n,\alpha}=\partial_x^\alpha Q_n\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). The complete equation is
\[
 J_{n+1,\alpha}=\nu\Delta J_{n,\alpha}
 -\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 -\nabla\Pi_{n,\alpha}+F_{n,\alpha},
\]
\[
 \Pi_{n,\alpha}=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta})_i(J_{n-a,\alpha-\beta})_j
 -(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]
These remain fields on the original \([0,T_*)\times\mathbb R^3\); at zero they become \(\partial_x^\alpha A_n\), \(\partial_x^\alpha P_n\). For example, a first spatial derivative of the original row contains both \((\partial_\ell u\cdot\nabla)u\) and \((u\cdot\nabla)\partial_\ell u\), the viscous term \(\nu\Delta\partial_\ell u\), the pressure term \(\nabla\partial_\ell p\), and \(\partial_\ell f\).

A selected equation retains \(J_{n+1,\alpha}\), all \(J_{n,\alpha+2e_\ell}\), all \(\Pi_{n,\alpha+e_\ell}\), both factors of every transport product, and both factors of every differentiated pressure product. The forced record also retains the direct source and pressure-source coordinates. This is a finite dependency cover for selected equations; it does not impose an autonomous closure on the outer coordinates. Trying to evolve the last retained temporal entry invokes the next derivative and moves the boundary outward. No finite evolution solver is demanded: the entries are derivatives of the original history, as the source explicitly states.

Sources: `revision:u-setting:afb54c1cdd30` 520–561; `today:f-setting` 567–611.

The independently formed completed-height relationships and the whole-interval output are developed below, followed by their permitted projections and direct uses.

This view follows the actual How the Proof Works construction as one continuous mathematical account. The original prescribed triple (u_0,nu,f) and every source and pressure-potential derivative remain fixed throughout. The equations, their domains and the independent entries are kept together.

Fix the original triple \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\), \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), and its pressure-normalized maximal classical history. At a proposed finite maximal time put \(I=(0,T_*)\). Every row below belongs to this prescribed forced history. The formulas expand the complete source entry, viscous correspondence, completed critical heights, all-orders spatial return and compatible finite projection. The native theorem retains its supplied whole-terminal output, while an already complete mixed, spatial or height graph has the direct entry displayed below. [author:f-how:f75f1c7c33b0:5–21,70–111]

Write

\[
V_n=\partial_t^nu,\quad Q_n=\partial_t^np,\quad
J_{n,\alpha}=\partial_x^\alpha V_n,\quad
\Pi_{n,\alpha}=\partial_x^\alpha Q_n,
\]

and in the forced branch put \(F_n=\partial_t^nf\), \(F_{n,\alpha}=\partial_x^\alpha F_n\). Set every \(F_n\) to zero for the unforced branch. Define

\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]

The full temporal and pressure rows are

\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\]

\[
-\Delta Q_n=\partial_i\partial_j
 \sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\nabla\cdot F_n,
\]

\[
Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j-\Phi_n,
\qquad \Phi_n=(-\Delta)^{-1}\nabla\cdot F_n.
\]

The spatially differentiated row contains every allocation of every derivative:

\[
\begin{aligned}
J_{n+1,\alpha}
&+\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha} \\
&=\nu\Delta J_{n,\alpha}+F_{n,\alpha},
\end{aligned}
\]

\[
\Pi_{n,\alpha}
=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 J_{a,\beta,i}J_{n-a,\alpha-\beta,j}
-(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\]

Incompressibility is retained in every velocity row. The pressure formula is fixed by the normalized \(H^0\) pressure; a harmonic \(H^0\) difference has Fourier support at \(\{0\}\) and vanishes. [author:u-how:5a06882c5628:105–140; author:f-how:f75f1c7c33b0:40–68; today:f-setting:1–55,567–611]

At zero the operation is an explicit recursion. With \(A_n=V_n(0)\) and \(P_n=Q_n(0)\),

\[
\begin{aligned}
A_0&=u_0,\\
P_n&=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j-\Phi_n(0),\\
A_{n+1}&=\nu\Delta A_n
-\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}
-\nabla P_n+F_n(0).
\end{aligned}
\]

At step \(n\), each velocity input has already been determined. Multiplication, differentiation and the fixed pressure multipliers put each required initial row in every finite Sobolev order. Taking \(\partial_x^\alpha\) gives the initial mixed face. This recursion determines the initial derivatives and their overlap identity; it is not a time-Taylor convergence assumption. [revision:u-setting:006d0d1f43f9:498–518; today:f-setting:548–565]

For an equation \((n,\alpha)\), retain \(J_{n+1,\alpha}\), all three \(J_{n,\alpha+2e_\ell}\), \(\Pi_{n,\alpha+e_\ell}\), and every pair \(J_{a,\beta,i}\), \(J_{n-a,\alpha-\beta+e_i}\) occurring in transport. For pressure retain every product allocation needed at \(\gamma=\alpha\) and \(\gamma=\alpha+e_\ell\). The forced record also keeps \(F_{n,\alpha}\) and the force-potential coordinates at those pressure indices. This finite dependency cover belongs to the original full field. [revision:u-setting:006d0d1f43f9:520–561; today:f-setting:567–611]

Apply \(\mathbb P\) to the complete temporal row, use \(\Delta=-\Lambda^2\), and commute \(\Lambda^s\) with the projection:

\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n
=\Lambda^s\mathbb P(F_n-B_n).
\tag{1}
\]

Here the next temporal derivative and two more spatial derivatives occur in one vector equality, with the entire nonlinear face retained. On squaring, the cross term is

\[
\begin{aligned}
2\nu\operatorname{Re}\langle\Lambda^sV_{n+1},\Lambda^{s+2}V_n\rangle
&=2\nu\operatorname{Re}\langle\Lambda^{s+1}\partial_tV_n,
                                  \Lambda^{s+1}V_n\rangle\\
&=\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2.
\end{aligned}
\]

Consequently,

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s\mathbb P(F_n-B_n)\|_2^2.
\tag{2}
\]

The complementary projection reads

\[
\nabla Q_n=(I-\mathbb P)(F_n-B_n).
\]

Orthogonality of these projections puts the pressure face back into the positive square:

\[
\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\tag{3}
\]

Integrating from zero to a strict time \(S<T_*\) keeps the boundary derivative:

\[
\begin{aligned}
&\nu\|\Lambda^{s+1}V_n(S)\|_2^2
+\int_0^S\bigl(\|\Lambda^sV_{n+1}\|_2^2
 +\nu^2\|\Lambda^{s+2}V_n\|_2^2
 +\|\Lambda^s\nabla Q_n\|_2^2\bigr)\,dt\\
&\qquad=\nu\|\Lambda^{s+1}A_n\|_2^2
 +\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2\,dt.
\end{aligned}
\tag{4}
\]

This is the actual complete-row relation used by the author. Each identity first holds on a strict classical interval; in an admitted finite whole-interval rectangle it is evaluated at the finite orders required by that rectangle. Equation (4) is a relationship among its temporal, spatial, pressure, force and transport coordinates. [author:f-how:f75f1c7c33b0:113–151; f-relations:189–252; revision:u-setting:006d0d1f43f9:431–443]

Set

\[
E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\qquad H=E_{0,1/2},
\]

\[
\mathcal P_{r,s}
=-\operatorname{Re}\langle\Lambda^sV_r,
                       \Lambda^s(B_r+\nabla Q_r)\rangle,
\qquad
\mathcal W_{r,s}
=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\]

Pairing the complete row with \(\Lambda^{2s}V_r\) gives

\[
\partial_tE_{r,s}
=-2\nu E_{r,s+1}+\mathcal P_{r,s}+\mathcal W_{r,s}.
\tag{5}
\]

The viscous contribution follows from

\[
\nu\operatorname{Re}\langle\Lambda^sV_r,\Lambda^s\Delta V_r\rangle
=-\nu\|\Lambda^{s+1}V_r\|_2^2.
\]

The pressure term is retained inside the complete current. The unforced reading has \(\mathcal W=0\). [author:u-how:5a06882c5628:142–190; u-relations:54–146; author:f-how:f75f1c7c33b0:153–180; f-relations:68–163]

The velocity-to-height map itself retains every temporal split:

\[
H^{(q)}
=\tfrac12\sum_{a=0}^q\binom qa
  \operatorname{Re}\langle\Lambda^{1/2}V_a,
                          \Lambda^{1/2}V_{q-a}\rangle.
\tag{6}
\]

Thus \(H^{(q)}\) differentiates the critical quadratic energy. It is not \(E_{q,1/2}\). To make “retain the differentiated currents” executable for a fresh reader, the ordinary Leibniz rule expands them as

\[
\partial_t^q\mathcal P_{r,s}
=-\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},
        \Lambda^s(B_{r+q-a}+\nabla Q_{r+q-a})\rangle,
\tag{7}
\]

\[
\partial_t^q\mathcal W_{r,s}
=\operatorname{Re}\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},\Lambda^sF_{r+q-a}\rangle.
\tag{8}
\]

These follow because \(\partial_t^bB_r=B_{r+b}\) and \(\partial_t^bQ_r=Q_{r+b}\). Substituting the displayed product formula for \(B_j\) and the normalized product/potential formula for \(Q_j\) expands each into finitely many actual jet coordinates. Equations (7)–(8) are explicit product-rule expansions of the source's retained currents; they add no new existence premise.

For brevity let \(C_{r,s}=\mathcal P_{r,s}+\mathcal W_{r,s}\). Successive substitution of (5) gives

\[
\begin{aligned}
H'&=-2\nu E_{3/2}+C_{0,1/2},\\
H''&=4\nu^2E_{5/2}-2\nu C_{0,3/2}+\partial_tC_{0,1/2},\\
H^{(k)}&=(-2\nu)^kE_{k+1/2}
 +\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}.
\end{aligned}
\tag{9}
\]

To verify the induction, differentiate the order-\(k\) expression. Its leading term becomes

\[
(-2\nu)^k\partial_t E_{k+1/2}
=(-2\nu)^{k+1}E_{k+3/2}+(-2\nu)^kC_{0,k+1/2},
\]

which is exactly the new terminal summand of the order-\(k+1\) expression. The other summands receive one additional time derivative. With \(\nu>0\), the leading coefficient is nonzero, so the actual inverse operation is

\[
R_0=H,\qquad
R_k=
\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{0,j+1/2}}
{(-2\nu)^k}
=E_{k+1/2}.
\tag{10}
\]

The analogous formula for every temporal row replaces \(H^{(k)}\) by \(\partial_t^kE_{r,1/2}\), \(C_{0,s}\) by \(C_{r,s}\), and \(E_{k+1/2}\) by \(E_{r,k+1/2}\). This is a triangular coordinate correspondence. The current derivatives in (7)–(8) stay attached through the inversion. [u-relations:90–168; f-relations:103–184]

### Follow the native blocks, heights and recurrence on their actual domains

Fix one original history and \(I=(0,T_*)\). Whole-interval membership means that each selected defining integral over I is finite. It requires no common constant across all derivative orders. Fields defined at every interior time and fields with finite norms over I are distinct assertions.

**Initial and evolving rows.** The initial recurrences construct the full initial jet from \((u_0,\nu)\), or \((u_0,\nu,f)\). Local iteration and uniqueness construct one maximal history. Differentiation identifies its actual mixed rows and their complete equations on every strict classical interval. The displayed local iteration gives a positive interval depending on the current \(H^3\) datum and the prescribed force. [revision:u-setting:afb54c1cdd30:399–443,498–561; today:f-setting:432–481,548–629; u-analysis:671–694; f-analysis:680–717]

**Independently derived height coordinates.** Put \(C_s=\mathcal P_s+\mathcal W_s\), with \(\mathcal W_s=0\) unforced. Pairing the original equation gives
\[
E_s'=C_s-2\nu E_{s+1},
\qquad
R_k=\frac{H^{(k)}-
\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}C_{j+1/2}}
{(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2.
\]
This identity is obtained by differentiation and substitution, retaining every transport, pressure and force-work term. Its derivation does not use finite rectangle norms. The identity and the assertion \(R_k\in L^1(I)\) have different roles. [u-relations:90–169; f-relations:103–187]

**The native whole-interval constructor.** Its output carries, for each finite N,M,
\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N.
\]
The constructor starts from the original datum, fixed viscosity and original prescribed force when present. It retains the evolving velocity, normalized pressure, complete mixed equations and their Sobolev domains on I. Its finite Sobolev graphs, restriction maps and compatible limit are expanded at each construction passage. The native theorem supplies this constructed family; the complete original theorem and proof bodies accompany that use. [revision:u-setting:afb54c1cdd30:454–623; today:f-setting:487–673]

**Finite selection and direct mixed exhaustion.** A finite selection of a jet carrying these domains preserves I, the fields, their weak derivative identities and normalized pressure. Its norm is the finite sum of those defining integrals. Restriction decreases the integrals, and monotone convergence identifies their supremum with the whole-I value. For fixed r,m, selecting enough rows gives
\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^{r}\|V_n\|_{L^2(I;H^m)}^2.
\]
No membership-generating operation follows that selection. A complete mixed intersection is also a direct entry from which finite rows can be selected. [u-relations:207–313; today:f-setting:681–708,747–791; f-relations:392–440]

**Integrated heights and spatial exhaustion.** The source obtains the height integral using the native finite block:
\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}^*.
\]
It then splits Fourier space into low and high frequencies to obtain
\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\bigl(\|u\|_{L^2(I;L^2)}^2
+2\|R_m\|_{L^1(I)}\bigr).
\]
Kinetic energy controls the first term, including prescribed source work in the forced branch. The native block controls the second term in this source route. An already integrated complete height graph can instead supply that term directly. [u-relations:315–392; f-relations:442–505]

**Return through the recurrence.** Starting with the complete spatial interval column, products and diffusion give \(u_t\in L^1(I;H^m)\), hence a continuous \(H^m\) representative up to the endpoint. With \(M_{n,m}=\sup_{[0,T_*]}\|V_n\|_{H^m}\), the recurrence gives the finite bound
\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m\sum_{a=0}^{n}\binom naM_{a,m+2}M_{n-a,m+2}
+\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\]
All velocity factors on the right have temporal order at most n. The normalized pressure formula recovers Q_n; every F_n vanishes unforced. Finite interval length converts these continuous rows into the mixed Sobolev intersection. Thus the return is a genuine construction from the whole-I spatial column, with that column retained as its input. [revision:u-setting:afb54c1cdd30:668–758; f-relations:508–570]

The native whole-I blocks feed both readings: direct mixed exhaustion, and completed heights → spatial Sobolev column → recurrence return. The height identities arise by differentiating the original energy rows; their evaluation on the constructed family retains its full interval and defining integrals. Both readings agree on every velocity and pressure coordinate. The displayed Sobolev graphs and projection maps make this assembly explicit.

**The complete positive square retains transport.** In the forced branch its integrated right side contains \(\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt\), with F_n=0 unforced. The source bounds the nonlinear factors using the available velocity rectangle; the prescribed force contribution has its own finite budget. The complete square keeps its boundary values and transport-force source; the stated product bounds evaluate that source on the retained finite graph. [f-relations:189–382]

Once the relevant whole-I rows are available, compatible traces, normalized endpoint recurrences, local restart and overlap uniqueness continue the original history. The original future force remains attached throughout the forced branch.



### Complete binomial cancellation

For divergence-free \(a\), put
\[
T(a,b,c)=\int (a\cdot\nabla)b\cdot c\,dx.
\]
Integration by parts gives \(T(a,b,c)=-T(a,c,b)\). Differentiating the kinetic transport pairing k times retains the complete allocation
\[
\sum_{a+b+c=k}\frac{k!}{a!b!c!}
\int (V_a\cdot\nabla)V_b\cdot V_c\,dx=0.
\]
For each a, exchanging b,c preserves the coefficient and reverses the sign. Every pressure pairing vanishes by the retained divergence identities. Thus the complete row gives
\[
\partial_t^{k+1}\!\left(\tfrac12\|u\|_2^2\right)
+\nu\partial_t^k\|\nabla u\|_2^2
=\partial_t^k\langle u,f\rangle.
\]
All source derivatives remain in the forced branch; set f=0 unforced. The contracted quadratic coordinate is
\[
\partial_t^k\!\left(\tfrac12\|u\|_2^2\right)
=\tfrac12\sum_{a=0}^k\binom ka\langle V_a,V_{k-a}\rangle.
\]
At k=2 it is \(\|V_1\|_2^2+\langle u,V_2\rangle\): the central square comes with its actual crossed pairing. The positive diagonal faces are read through the squared-row identity above, retaining its full transport-force source. This calculation keeps the original fields throughout. [u-relations:14–46,54–147; f-relations:13–60,68–163]



### Integrate the completed ladder with its boundary currents

Write \(c=-2\nu\), \(R_j=E_{0,j+1/2}\), and \(C_j=\mathcal P_{0,j+1/2}+\mathcal W_{0,j+1/2}\), with every \(\mathcal W=0\) unforced. The displayed ladder says
\[
H^{(k)}=c^kR_k+\sum_{j=0}^{k-1}c^jC_j^{(k-1-j)}.
\]
For k at least one define the full endpoint current
\[
A_k=H^{(k-1)}-\sum_{j=0}^{k-2}c^jC_j^{(k-2-j)}
=c^{k-1}R_{k-1}.
\]
The sum is empty at k=1. Integrating the preceding order-k identity on \((0,S)\), \(S<T_*\), gives
\[
c^k\int_0^S R_k\,dt
=[A_k]_0^S-c^{k-1}\int_0^S C_{k-1}\,dt.
\]
Divide by \(c^{k-1}\) and retain both endpoints:
\[
2\nu\int_0^S R_k\,dt
=R_{k-1}(0)-R_{k-1}(S)
+\int_0^S C_{k-1}\,dt.
\]
All differentiated transfer and force currents have telescoped into the adjacent energy and its full accumulated work. This is the integrated native ladder, evaluated on the original history. Its passage to the whole interval retains that coupled budget. On an available native whole-I block the memberships are already carried by the fields; finite selection adds no separate estimate. These identities expand the operation without changing that domain account. [u-relations:90–169; f-relations:103–184]

### The native source theorem and its whole-interval output

The native theorem states that its constructed evolving pressure-complete jet carries the whole-interval Sobolev domains. Finite selection preserves such domains. The dependency walk above follows both the native assertion and the completed-height return, retaining the inputs used at each step. The original proof bodies below expose the source reasoning behind the assertion; the exposition imposes no instruction to accept or reject it.

The datum construction concerns the original pressure-normalized history. Its output is the whole-terminal pressure-complete jet on \(I\): the actual fields \(J_{n,\alpha}=\partial_x^\alpha\partial_t^nu\) and \(\Pi_{n,\alpha}=\partial_x^\alpha\partial_t^np\), their governing identities, their prescribed initial face, and their compatible Sobolev memberships. For every finite \(n,m,\alpha\), these include
\[
J_{n,\alpha}\in L^2(I;H^m),\qquad
\Pi_{n,\alpha}\in L^1(I;H^m).
\]
The branch data determine which constructed jet is carried: \((u_0,\nu)\) unforced, or the entire original \((u_0,\nu,f)\) forced. The equations above explain its field coordinates and the independently originated height relations. The whole-terminal memberships belong to that construction's output and travel with its coordinates. In the following selection, \(N,M\) change which coordinates are retained, while \(I\) remains fixed. [author:u-how:e2c9bf4a1e04:205–347; revision:u-setting:afb54c1cdd30:454–495,563–623; author:f-how:f75f1c7c33b0:69–112,181–248; today:f-setting:487–546,631–708]

For any finite \(N,M\), select the record

\[
\mathcal R_{N,M}
=\bigl((V_n)_{0\le n\le N},(V_{n+1})_{0\le n\le N};
       (Q_n)_{0\le n\le N};(F_n)_{0\le n\le N}\bigr).
\]

The force coordinates are absent in the unforced record. The whole-terminal output of that native entry is the adjacent pair

\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N,
\quad I=(0,T_*),
\tag{11}
\]

with the pressure and mixed-coordinate memberships in the theorem.

The current dependency account distinguishes construction from finite selection. In the unforced source, the datum-generated whole-terminal jet already contains its compatible Sobolev coordinates on \(I\). The finite record is its coordinate projection:
\[
\mathcal R_{N,M}=\pi_{N,M}\mathcal J^{\mathrm{whole}}[u_0,\nu;I].
\]
Selecting \(V_n,V_{n+1},Q_n\) retains their original interval and the identity \(\partial_tV_n=V_{n+1}\). Equation (11) reads memberships already contained in that constructed object. It does not request an additional placement operation from the selected finite graph. [revision:u-setting:afb54c1cdd30:563–578; author:u-how:e2c9bf4a1e04:255–280]

The prescribed-force branch retains its own input \((u_0,\nu,f)\), force jet and pressure potential. Its current source states the native whole-interval outputs inside the forced datum construction after the complete initial face, coupled graph, both projections and source payment. Once this native output, a completed forced mixed intersection, or a completed spatial interval column is available, use its finite coordinates directly. No unforced construction supplies a forced input, and no second placement is imposed after a completed forced object. [today:f-setting:548–641,643–708]

#### The constructed Sobolev graph and its finite readouts

Fix the original branch data b: \((u_0,\nu)\) unforced, or \((u_0,\nu,f)\) forced, with the entire prescribed future force retained. Keep \(I=(0,T_*)\). For finite N and M at least three define the adjacent-row Hilbert graph
\[
D_{N,M}(I)=\{(v_0,\ldots,v_{N+1}):
\partial_tv_n=v_{n+1},\quad 0\le n\le N,\quad
\|v\|_{N,M}<\infty\},
\]
where \(\|v\|_{N,M}^2\) is the adjacent Sobolev norm in (12). Distributional differentiation is closed under convergence in its factors, so D is complete. The adjacent trace supplies \(v_n(0)\) for n at most N. Attach the datum-generated initial face, normalized pressure formula, full binomial products and original force, and impose the displayed momentum rows. This defines the closed coupled graph \(G^b_{N,M}(I)\). Product and pressure continuity follow from the preceding analytic operations. Every mixed coordinate is a derivative of these fields. Larger M covers all lower target orders.

Restriction \(\rho\) deletes outer temporal coordinates and uses the continuous spatial Sobolev inclusions. It preserves I, the derivative identities, normalized pressure, initial face and prescribed force. The native construction's supplied output is the coherent family
\[
\Gamma_b=\mathcal C_b(I)\in
\varprojlim_{N,M}G^b_{N,M}(I),
\qquad \rho\Gamma_{b;N,M}=\Gamma_{b;N',M'}.
\]
The source theorem supplies this element. Its finite readout is exactly
\[
\mathcal R^b_{N,M}=\pi_{N,M}\Gamma_b\in G^b_{N,M}(I).
\]
Thus its Sobolev memberships and finite defining norm are coordinates of the available output. Selection changes indices and has the identity time map on I. It introduces no further whole-interval estimate. [revision:u-setting:afb54c1cdd30:563–600; today:f-setting:631–708]

To assemble the limit explicitly, take the cofinal sequence \((N,M)=(k,k+3)\). Compatible finite coordinates identify one distributional field \(v_0=u\), with \(v_n=\partial_t^nu\). For any finite r,m choose k at least max(r,m). Then
\[
\sum_{n=0}^r\|\partial_t^nu\|_{L^2(I;H^m)}^2
\le\|\pi_{k,k+3}\Gamma_b\|_{k,k+3}^2<\infty.
\]
This produces the mixed intersection as a readout of the constructed family. Each finite norm is available; no bound common to derivative orders is imposed. The complete binomial cancellation and integrated height telescope above retain their full currents and boundary terms. The spatial reconstruction, acceleration estimate, endpoint and restart below consume this available object and its finite projections.

The following operations use those available objects:

| Available object | Operation | Usable output |
| --- | --- | --- |
| Constructed whole-terminal jet or its adjacent rows | Select finite coordinates and sum defining squared norms | The finite whole-terminal rectangle norm (12) |
| That finite norm on \(I\) | Restrict nonnegative integrals and exhaust strict horizons | The cutoff supremum (13) |
| Compatible finite mixed records | Exhaust mixed indices | The mixed intersection (14) |
| An already supplied completed mixed intersection | Select finite derivative coordinates | Adjacent rows and norm directly, by (15) |
| Completed integrated heights with full currents | Fourier split, then use the original equation | The spatial column and actual temporal/pressure rows |

Once these finite memberships are available, their defining squared norms give

\[
\mathfrak R_{N,M}(T_*)
=\sum_{n=0}^N\left(
 \|V_n\|_{L^2(I;H^{M+1})}^2+
 \|V_{n+1}\|_{L^2(I;H^{M-1})}^2\right)<\infty.
\tag{12}
\]

Restriction to \((0,S)\) decreases each nonnegative integral. Monotone convergence identifies

\[
\sup_{S<T_*}\mathfrak R_{N,M}(S)
=\lim_{S\uparrow T_*}\mathfrak R_{N,M}(S)
=\mathfrak R_{N,M}(T_*).
\tag{13}
\]

The constant may depend on \(N,M,u_0,\nu,f,T_*\). No common constant over infinitely many orders is required. Enlarging the rectangle retains identical distributional derivatives, the identical initial recursion and the identical pressure normalization. Deleting outer coordinates recovers the smaller record. [author:u-how:5a06882c5628:265–289; author:f-how:f75f1c7c33b0:182–220; revision:u-setting:006d0d1f43f9:574–615; today:f-setting:643–672]


### Material acceleration is a readout of the native finite block

The native datum entry has no additional material-acceleration premise. Take its already obtained whole-I selection \(N=0,M=1\), and put
\[
r_u=\|u\|_{L^2(I;H^2)}^2,\qquad
r_t=\|u_t\|_{L^2(I;L^2)}^2,\qquad
R=r_u+r_t,\quad I_1=\|u_0\|_{H^1}^2.
\]
The original fields and interval I are retained throughout. The adjacent-row identity gives
\[
\frac d{dt}\|u\|_{H^1}^2
=2\operatorname{Re}\langle J^2u,u_t\rangle,
\qquad J=(1-\Delta)^{1/2},
\]
so integration and \(2ab\le a^2+b^2\) give
\[
\sup_{t\in I}\|u(t)\|_{H^1}^2\le I_1+R.
\]
With the source's fixed embedding constant \(C_E=(8\pi)^{-1/2}\),
\[
\|u\|_{L^2(I;L^\infty)}^2\le C_E^2r_u.
\]
At each time, \(\|(u\cdot\nabla)u\|_2\le\|u\|_\infty\|\nabla u\|_2\). Thus
\[
\|B_0\|_{L^2(I;L^2)}^2
\le C_E^2(I_1+R)r_u,
\]
and the original material acceleration has the finite budget
\[
\begin{aligned}
\mathcal A_*:=\|D_tu\|_{L^2(I;L^2)}^2
&\le 2r_t+2C_E^2(I_1+R)r_u\\
&\le 2R+2C_E^2(I_1+R)R<\infty.
\end{aligned}
\]
This is a composition of the native output, trace, embedding and the identity \(D_tu=u_t+B_0\). It produces an acceleration bound from a finite native block; it does not ask the native constructor to assume that bound. The original force, pressure and governing history remain fixed in either branch. [r-body:453–460,577–590,1569–1585]

The optional **material** entry proves the reverse sufficient implication from an independently supplied finite acceleration budget through the elliptic square, spatial Gronwall bounds, recurrence and endpoint. That implication is available when its input is supplied. It is neither the native constructor's definition nor an extra generating requirement after finite selection.

### Complete the selected interval pressure rows

For a fixed temporal order \(n\), spatial multi-index \(\alpha\) and target spatial order \(m\ge0\), retain both velocity factors in every pressure-product allocation. Put
\[
\Phi_{n,\alpha}=(-\Delta)^{-1}\operatorname{div}F_{n,\alpha}.
\]
At each time, the finite-order multiplication estimate \(H^{m+1}\cdot H^{m+1}\to H^m\) and boundedness of the Riesz transforms give
\[
\begin{aligned}
\|\Pi_{n,\alpha}(t)\|_{H^m}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}(t)\|_{H^{m+1}}
\|J_{n-a,\alpha-\beta}(t)\|_{H^{m+1}}
+\|\Phi_{n,\alpha}(t)\|_{H^m}.
\end{aligned}
\]
Integrate on the retained interval \(I\) and apply Cauchy–Schwarz separately to each product:
\[
\begin{aligned}
\|\Pi_{n,\alpha}\|_{L^1(I;H^m)}
&\le C_m\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
\|J_{a,\beta}\|_{L^2(I;H^{m+1})}
\|J_{n-a,\alpha-\beta}\|_{L^2(I;H^{m+1})}
+\|\Phi_{n,\alpha}\|_{L^1(I;H^m)}<\infty.
\end{aligned}
\]
Choose a finite cut with \(N\ge n\) and \(M\ge m+|\alpha|\). Its available \(V_a\in L^2(I;H^{M+1})\) coordinates supply every velocity norm on this right-hand side after spatial differentiation. The bound for \(\nabla\Pi_{n,\alpha}\) in \(L^1(I;H^{m-1})\) follows by differentiation. At \(\alpha=0\), this is the temporal pressure estimate. In the unforced branch \(\Phi_{n,\alpha}=0\); in the forced branch the prescribed smooth Schwartz source and its potential budget supply the final term. Every pressure coordinate is thus read from its actual selected factors, with \(I\) unchanged. This operation consumes the constructed interval velocity coordinates; it does not generate their memberships. [author:u-how:e2c9bf4a1e04:283–295; revision:u-setting:afb54c1cdd30:602–612; today:f-setting:280–330,613–641]

The direct mixed reading chooses, for each requested finite \(r,m\), a rectangle containing \(V_0,\ldots,V_r\) at spatial order \(m\). Since these are the weak derivatives of \(u\),

\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^r\|V_n\|_{L^2(I;H^m)}^2<\infty.
\tag{14}
\]

Taking every finite pair gives \(u\in\bigcap_{r,m\ge0}H^r(I;H^m)\). The converse finite operation is direct projection: if this complete mixed intersection is the entering object, select its finitely many rows without repeating the datum construction. In particular,

\[
\mathfrak R_{N,M}(T_*)
\le 2\|u\|_{H^{N+1}(I;H^{M+1})}^2.
\tag{15}
\]

This entry needs no completed-height calculation. [revision:u-setting:006d0d1f43f9:621–655; today:f-setting:681–708]

The completed-height reading uses (10) on the native rows. For each finite \(k\),

\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R_{0,k}(T_*).
\tag{16}
\]

For the reverse spatial passage, split Fourier space at \(|\xi|=1\). The weight \((1+|\xi|^2)^m\) is at most \(2^m\) on the inner region and at most \(2^m|\xi|^{2m+1}\) on the outer region. It follows that

\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\left(\|u\|_{L^2(I;L^2)}^2+2\|R_m\|_{L^1(I)}\right).
\tag{17}
\]

The kinetic identity gives the low-frequency floor. Unforced,

\[
\tfrac12\|u(t)\|_2^2+\nu\int_0^t\|\nabla u\|_2^2
=\tfrac12\|u_0\|_2^2.
\]

Forced, put \(K_f(t)=\|u_0\|_2+\int_0^t\|\mathbb Pf(s)\|_2\,ds\). Pairing with \(u\), using incompressibility and then the scalar square-root estimate gives \(\|u(t)\|_2\le K_f(t)\). Thus the floor in (17) is bounded by \(T_*\|u_0\|_2^2\) or \(T_*K_f(T_*)^2\), respectively. The floor controls low frequencies; it is not promoted to an all-orders construction. [u-relations:14–45,315–392; f-relations:13–60]

Equations (16)–(17) show how the complete integrated height graph and the complete spatial \(L^2\) column encode one another. A reader entering with the complete height graph and every \(R_k\in L^1(I)\) can perform (17) directly. A reader entering with the spatial column can omit both (16) and the scalar height construction. Pointwise all-order Sobolev membership and interval all-order Sobolev membership are retained with their distinct domains.

This entry begins with the explicit whole-interval object

\[
u\in\mathscr S_0(I):=\bigcap_{m\ge0}L^2(I;H^m_\sigma),
\qquad T_*<\infty.
\tag{18}
\]

It is independent of how that column was obtained. At each finite target \(m\), the available \(m+2\) order gives

\[
\|\mathbb P\nabla\cdot(u\otimes u)\|_{L^1H^m}
\le C_m\|u\|_{L^2H^{m+2}}^2,
\quad
\|\Delta u\|_{L^1H^m}
\le\sqrt{T_*}\|u\|_{L^2H^{m+2}}.
\]

Substitution into the original projected equation yields

\[
\|u_t\|_{L^1H^m}
\le\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}<\infty.
\tag{19}
\]

Banach integration produces \(u\in W^{1,1}(I;H^m)\subset C([0,T_*];H^m)\) and the explicit bound

\[
M_{0,m}=\|u_0\|_{H^m}
 +\nu\sqrt{T_*}\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2
 +\|\mathbb Pf\|_{L^1H^m}.
\]

Suppose \(V_0,\ldots,V_n\) are continuous in every finite spatial order. In the projected recurrence the available higher spatial orders, multiplication and source jet give the finite next-row bound

\[
M_{n+1,m}=\nu M_{n,m+2}
 +C_m\sum_{a=0}^n\binom naM_{a,m+2}M_{n-a,m+2}
 +\sup_{[0,T_*]}\|\mathbb PF_n\|_{H^m}.
\tag{20}
\]

Every term on the right has temporal order at most \(n\). The pressure formula recovers \(Q_n\) at any requested finite order, including \(-\Phi_n\) in the forced branch. On the interior the continuous vector expression equals \(\partial_tV_n\), and

\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau
\]

extends to \(0\le s\le t\le T_*\). It identifies the actual one-sided endpoint derivatives. Induction gives \(V_n,Q_n\in C([0,T_*];H^m)\) at every finite \(n,m\). Finite interval length then gives

\[
\|u\|_{H^r(I;H^m)}^2
\le T_*\sum_{n=0}^rM_{n,m}^2<\infty,
\]

and (11) follows by selecting adjacent coordinates. This is an actual constructive return from spatial to mixed rows, with no backward appeal to the mixed reading. [revision:u-setting:006d0d1f43f9:661–750; author:f-how:f75f1c7c33b0:222–250; f-relations:508–570]

The force contributes to velocity, normalized pressure and every differentiated current from the initial step onward. At a fixed finite row order its source pairing satisfies

\[
2|\langle F_n,V_n\rangle_{H^M}|
\le\nu\|V_n\|_{H^{M+1}}^2
 +\nu^{-1}\|F_n\|_{H^{M-1}}^2.
\tag{21}
\]

This is Fourier Cauchy–Schwarz followed by Young's inequality. The source norm is finite on \([0,T_*]\) because the original source jet is smooth there with Schwartz spatial values. The pressure potential obeys a finite \(H^M\) bound from its \(L^1\) and Sobolev source norms: at low frequency its multiplier has size \(|\xi|^{-1}\), whose square is locally integrable in three dimensions, while high frequency is controlled by the finite Sobolev source norm. Thus \(\Phi_n\), its mixed derivatives and their time continuity are retained at the requested finite orders. [today:f-setting:613–629]

The pressure product uses the velocity rows at the appropriate finite order. In the temporal case,

\[
\begin{aligned}
\|Q_n\|_{L^1H^M}+\|\nabla Q_n\|_{L^1H^{M-1}}
&\le C_M^{\rm p}\sum_{a=0}^n\binom na
  \|V_a\|_{L^2H^{M+1}}\|V_{n-a}\|_{L^2H^{M+1}}\\
&\quad+\mathfrak F^{\rm p}_{n,0,M}(I).
\end{aligned}
\tag{22}
\]

The mixed version has the full double Leibniz sum and the corresponding force-potential budget. These are row operations of the prescribed forced history, including its normalized pressure. In (1)–(4) the forcing is inside \(F_n-B_n\); in (5)–(10) it is inside every \(\mathcal W\) derivative; in (19)–(20) it is inside each reconstructed temporal row. Setting all source coordinates to zero recovers the unforced calculations. [today:f-setting:280–330,567–641; author:f-how:f75f1c7c33b0:12–21,113–220]

## 8. Common endpoint and the complete incoming jet

Either compatible all-orders description gives the source's full-interval rows. Apply the adjacent trace operation to every \(V_n\) at every finite \(m\). Define
\[
\mathfrak E_{N,m}=(1+T_*^{-1})^{1/2}(\mathfrak R^*_{N,m})^{1/2}.
\]
It bounds \(\sup_{[0,T_*]}\|V_n\|_{H^m}\) for \(n\le N\). Spatial differentiation gives the mixed-row bound at \(m+|\alpha|\). The representatives agree under all Sobolev restriction maps, so their terminal values form one family
\[
V_n^*=\lim_{t\uparrow T_*}V_n(t),\qquad
J_{n,\alpha}^*=\partial_x^\alpha V_n^*.
\]
The zeroth value is one \(u_*\in H^\infty_\sigma\), rather than unrelated endpoints at each order. [u-endpoint:112-158,214-324; f-endpoint:114-161,220-329]

The distributional identity \(\partial_tV_n=V_{n+1}\), with both continuous representatives available, gives
\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau,\qquad 0\le s\le t\le T_*.
\]
It proves genuine one-sided derivatives and the terminal modulus
\[
\|V_n(t)-V_n^*\|_{H^m}\le(T_*-t)\mathfrak E_{n+1,m}.
\]
Inducting through the continuous rows gives the complete incoming temporal jet in every finite spatial order. [u-endpoint:326-349; f-endpoint:331-354]

Pass the normalized pressure product to the limit using higher velocity traces and Sobolev multiplication. Unforced,
\[
Q_n^*=R_iR_j\sum_{b=0}^n\binom nb(V_b^*)_i(V_{n-b}^*)_j.
\]
Forced, subtract \(\Phi_n(T_*)\). A product difference is split into two factors, each controlled by the velocity trace bounds and terminal moduli; the forced difference adds
\((T_*-t)\sup_{[0,T_*]}\|\Phi_{n+1}\|_{H^m}\).
This yields pressure convergence and all mixed pressure traces. [u-endpoint:351-465; f-endpoint:356-462]

The diffusion term converges in \(H^q\) from a velocity trace in \(H^{q+2}\), transport products converge using correspondingly higher orders, and the pressure gradient converges from \(H^{q+1}\). Passing the actual recurrence to \(T_*\) yields
\[
V_{n+1}^*=\nu\Delta V_n^*
-\sum_{b=0}^n\binom nb(V_b^*\cdot\nabla)V_{n-b}^*
-\nabla Q_n^*+F_n(T_*),
\]
where \(F_n=0\) in the unforced branch. Starting with \(V_0^*=u_*\), the pressure formula fixes \(Q_0^*\), then the velocity formula fixes \(V_1^*\), and induction fixes the entire normalized jet. This is uniqueness of the displayed endpoint recurrence family. [u-endpoint:390-465; f-endpoint:464-491]

## 9. Local realization and restart through the endpoint

The local construction begins at an arbitrary time \(s\) with \(a\in H^3_\sigma\). Its mild class is \(C([s,b];H^3)\) with normalized pressure and the Duhamel equation. Splitting the integral at an intermediate time and using the heat semigroup proves restriction to a shifted mild class. Variation of constants places a classical restriction in that class. [u-analysis:597-660; f-analysis:609-679]

For the heat equation with source in \(L^2H^2\), pairing at \(H^3\), keeping the Bessel low-frequency term, and applying Young's inequality gives a linear bound in
\[
X_\delta=C H^3_\sigma\cap L^2H^4_\sigma,\qquad
w_t\in L^2H^2_\sigma.
\]
The quadratic estimate
\(\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}
\le C_{\rm q}\|v\|_{H^3}\|z\|_{H^3}\)
and its difference version make the Duhamel map a contraction on an explicit closed ball for
\[
\delta\le\min\{1,c_\nu(1+\|a\|_{H^3})^{-2}\}.
\]
In the forced branch the linear map includes the original shifted force \(f(s+r)\), and the denominator also includes
\(\Gamma_s=\|\mathbb Pf\|_{L^2(s,s+1;H^2)}\).
The difference of two maps has the force cancel because their prescribed source agrees. A finite partition into sufficiently short intervals proves uniqueness in the full \(C H^3\) mild class. [u-analysis:662-880; f-analysis:680-925]

Fourier truncation, higher-order energy estimates, contraction convergence, and weak compactness give \(C H^m\) persistence for that fixed point. For \(a\in H^\infty\), its full recurrence produces all temporal rows, including \(F_n,\Phi_n\) in the forced case. [u-analysis:881-1018; f-analysis:926-1071]

In the unforced endpoint proof, the uniform trace bound \(\|u(t_0)\|_{H^3},\|u_*\|_{H^3}\le\mathfrak E_{0,3}\) supplies a positive common restart duration \(\delta_0\). Choose \(t_0\) less than \(\delta_0/2\) before \(T_*\). Local restart at \(u(t_0)\) agrees with the incoming history on every strict overlap by mild-class uniqueness. Its trace at \(T_*\) is \(u_*\), and shifted uniqueness identifies its right-hand restriction with the restart from \(u_*\). This supplies an actual common local history across the joining time. [u-endpoint:466-526]

The outgoing smooth solution starts at \(W_0^+=u_*=V_0^*\). Its differentiated equations obey the endpoint recurrence. Induction fixes \(W_n^+=V_n^*\) and the pressure jets as well. Every one-sided derivative consequently matches in every finite Sobolev space. Sobolev embedding glues the incoming and outgoing pairs smoothly, preserves the original history, and extends it beyond \(T_*\). In the forced branch the recurrence includes the original prescribed values \(F_n(T_*)\) and the restart continues with the original future \(f(t)\). [u-endpoint:528-619; f-endpoint:493-552]

If \(T_*<\infty\), this extension contradicts the definition of maximality. The source concludes \(T_*=\infty\), gathers the global mixed regularity and normalized pressure, and obtains uniqueness by the local uniqueness composition. Its energy identity follows by the original \(L^2\) pairing. These are the source's unforced and prescribed-force proof conclusions at their respective data. [u-endpoint:631-733; f-endpoint:570-657]

## 10. Eulerian and material readouts

For this fluid \(D_t=\partial_t+u\cdot\nabla\). Material acceleration is
\[
D_tu=V_1+(u\cdot\nabla)u=-\nabla p+\nu\Delta u+f.
\]
Higher material derivatives are finite polynomials in Eulerian mixed derivatives. Reverse reconstruction uses \(\partial_t=D_t-u\cdot\nabla\) with its commutators. [r-body:52-87,1569-1750]

Time embedding and polynomial reconstruction send the Eulerian intersection to all material rows in \(L^2H^m\). Conversely, for \(w_q=D_t^qu\) in every \(L^2H^m\),
\[
\partial_tw_q=w_{q+1}-(u\cdot\nabla)w_q,
\quad
\|\partial_tw_q\|_{L^1H^m}
\le\sqrt T\|w_{q+1}\|_{L^2H^m}
+C_m\|u\|_{L^2H^{m+2}}\|w_q\|_{L^2H^{m+2}}.
\]
Banach integration gives uniform material bounds; reverse polynomial reconstruction yields the Eulerian intersection. The whole-interval premises remain explicit. [r-body:1752-1819]

## Formal refinement of the supplied material construction

The supplied draft proposes that viscosity couples the velocity-time, critical-height and spatial columns strongly enough to produce whole-interval control. The calculations below distinguish the actual coupled identities from the finiteness assertion to be established. They derive the material rows, test the full finite quadratic form, and prove a complete conditional construction from one acceleration integral. The original native theorem statement remains separately visible; the acceleration premise below is not asserted to follow from the datum. [author:draft:49cee9a4e6c6:9–19]

Small spatial scales correspond to high frequencies. The all-orders Sobolev object is an intersection of finite-order spaces. Forming derivative identities and taking all indices does not, by itself, assert that each defining integral is finite up to the proposed endpoint. The simple binomial temporal recurrence uses Eulerian derivatives; material derivatives retain the additional commutators explicitly displayed below.

### 1. The first material rows, with all coefficients retained

Write
\[
D=\partial_t+u\cdot\nabla,\qquad U_{ij}=\partial_j u_i,
\qquad a=Du,\quad b=Da.
\]
The original equation gives acceleration:
\[
a=\nu\Delta u-\nabla p+f.
\]
Expanding the operators, rather than commuting them, gives
\[
[D,\partial_i]w=-(\partial_i u_j)\partial_jw,
\]
\[
[D,\Delta]w=-(\Delta u_j)\partial_jw
-2(\partial_i u_j)\partial_{ij}w,
\qquad
D\nabla p=\nabla Dp-U^{\mathsf T}\nabla p.
\]
Consequently the jerk row is
\[
b=\nu\Delta a-\nabla Dp+U^{\mathsf T}\nabla p+Df
-\nu\left[(\Delta u)\cdot\nabla u
+2\sum_i(\partial_i u)\cdot\nabla\partial_i u\right].
\]
These formulas reproduce `r-body:1589–1615`. They preserve the viscous geometry while displaying its deformation coefficients.

For the next row, set \(L_0=\Delta\), \(G_0=\nabla\), \(L_{q+1}=[D,L_q]\), and \(G_{q+1}=[D,G_q]\). Direct differentiation gives
\[
Db=\nu\Delta b+2\nu L_1a+\nu L_2u
-\nabla D^2p-2G_1Dp-G_2p+D^2f.
\]
Here \(G_1p=-U^{\mathsf T}\nabla p\), and
\[
G_2p=\left[-(\nabla a)^{\mathsf T}
+2(U^{\mathsf T})^2\right]\nabla p,
\qquad DU=\nabla a-U^2.
\]
At every order the exact recurrence is
\[
D^{n+1}u=\nu\sum_{q=0}^n\binom nq L_qD^{n-q}u
-\sum_{q=0}^n\binom nq G_qD^{n-q}p+D^nf.
\]
This is the commutator binomial of `r-body:1695–1718`. It differs from the Eulerian Leibniz binomial
\[
V_{n+1}=\nu\Delta V_n-\nabla Q_n
-\sum_{j=0}^n\binom nj(V_j\cdot\nabla)V_{n-j}+F_n,
\]
where \(V_n=\partial_t^nu\), \(Q_n=\partial_t^np\), and \(F_n=\partial_t^nf\). Both describe derivatives of this history. Neither advances the physical time by differentiating.

Material force rows contain response factors:
\[
Df=f_t+u\cdot\nabla f,
\qquad
D^2f=f_{tt}+2u\cdot\nabla f_t+a\cdot\nabla f
+u_i u_j\partial_{ij}f.
\]
Smooth prescribed Eulerian force derivatives do not by themselves bound these material rows independently of \(u,a\).

### 2. Pressure and volume remain coupled

Pressure satisfies
\[
-\Delta p=\operatorname{tr}(U^2)-\nabla\cdot f.
\]
Applying \(D\) gives its transported equation
\[
-\Delta Dp
=D\left[\operatorname{tr}(U^2)-\nabla\cdot f\right]+L_1p.
\]
Thus \(Dp\) includes the Laplacian commutator; it is not obtained by differentiating a scalar pressure source while freezing the geometry.

Incompressibility gives
\[
\nabla\cdot a=\operatorname{tr}(U^2),\qquad
\nabla\cdot b=3\operatorname{tr}(U\nabla a)-2\operatorname{tr}(U^3).
\]
More generally, for \(w_q=D^qu\),
\[
\delta_0=0,\qquad
\delta_{q+1}=D\delta_q+\operatorname{tr}(U\nabla w_q),
\qquad\delta_q=\nabla\cdot w_q.
\]
The material rows need not be divergence free. These are exactly the constraints compatible with volume-preserving trajectories (`r-body:1617–1693`). In particular, \(\operatorname{tr}(U^2)\) is signed and differs from \(|U|^2\).

### 3. A genuine coercive identity and a whole-interval criterion

Let \(P\) be Leray projection and \(Q=I-P\). Pressure reconstruction gives
\[
Pa=\nu\Delta u+Pf,\qquad Qa=Q[(u\cdot\nabla)u].
\]
Their Fourier Sobolev orthogonality yields
\[
\|a\|_{\dot H^s}^2
=\|\nu\Delta u+Pf\|_{\dot H^s}^2
+\|Q[(u\cdot\nabla)u]\|_{\dot H^s}^2.
\]
For \(f=0\), this becomes
\[
\|a\|_{\dot H^s}^2
=\nu^2\|u\|_{\dot H^{s+2}}^2
+\|\nabla p\|_{\dot H^s}^2.
\]
Pressure cannot cancel viscosity in this global norm (`r-body:793–828`). This is a real native-domain coercivity statement, with acceleration as its input.

It gives a concrete useful criterion: **if \(a\in L^2(I;L^2)\), then all finite mixed rows and a smooth terminal continuation follow for smooth data and prescribed smooth force.** Indeed,
\[
\nu\|\Delta u\|_{L^2(I;L^2)}
\le\|a\|_{L^2(I;L^2)}+\|Pf\|_{L^2(I;L^2)}.
\]
Kinetic energy controls low frequencies, giving \(u\in L^2(I;H^2)\), hence \(u\in L^2(I;L^\infty)\). For each integer \(m\ge0\), the tame product inequality
\[
\|u\otimes u\|_{H^m}\le C_m\|u\|_\infty\|u\|_{H^m}
\]
and the projected equation give, with \(y_m=\|u\|_{H^m}^2\),
\[
y_m'+\nu\|\nabla u\|_{H^m}^2
\le\left(C_m\nu^{-1}\|u\|_\infty^2+1\right)y_m
+\|f\|_{H^m}^2.
\]
Gronwall controls every spatial height on \(I\). The Eulerian recurrence then controls each temporal derivative at every spatial height. Adjacent temporal rows give terminal traces, and the original equation supplies compatible pressure and restart data. This argument derives the other rows from one material integral; it does not assume all rectangles finite.

### 4. What happens when one tries to generate that integral

The full material acceleration energy is
\[
\begin{aligned}
\frac12\partial_t\|a\|_2^2+\nu\|\nabla a\|_2^2
={}&\int Dp\,\operatorname{tr}(U^2)
+\int a\cdot U^{\mathsf T}\nabla p+\int a\cdot Df\\
&+\nu\int a\cdot L_1u.
\end{aligned}
\]
Its pressure work survives because \(\nabla\cdot a\ne0\). Combining its first two terms yields
\[
\partial_t\int p\,\operatorname{tr}(U^2)-\int p\,\nabla\cdot b.
\]
That rearrangement does not create a positive energy: for \(f=0\), \(\int p\operatorname{tr}(U^2)=\|\nabla p\|_2^2\), so subtracting it from \(\frac12\|a\|_2^2\) produces
\(\frac12\nu^2\|\Delta u\|_2^2-\frac12\|\nabla p\|_2^2\).

A sharper test uses the momentum equation paired with \(a\). For \(f=0\), it gives exactly
\[
\|a\|_2^2+\frac\nu2\partial_t\|\nabla u\|_2^2
=\|\nabla p\|_2^2+\nu\mathcal P_1,
\qquad
\mathcal P_1=-\int U:U^2.
\]
Substitution of the orthogonal identity cancels the pressure squares and returns
\[
\frac12\partial_t\|\nabla u\|_2^2+\nu\|\Delta u\|_2^2
=\mathcal P_1.
\]
This derives the signed current from the full material geometry. No pressure or incompressibility constraint was omitted.

The critical-height version retains precisely the source's signed currents:
\[
H'=-2\nu E_{3/2}+\mathcal P_{1/2}+W_{1/2},
\]
\[
H''=4\nu^2E_{5/2}-2\nu(\mathcal P_{3/2}+W_{3/2})
+\partial_t(\mathcal P_{1/2}+W_{1/2}).
\]
Nonzero viscous coefficients expose the next height, but the differentiated signed currents remain on the right (`r-body:227–288`). This is an identity between unknown response coordinates, not an independent bound on them.

### 5. A realizable countertest to automatic viscous domination

On the \(2\pi\)-periodic cube let
\[
v=(\sin y,-\sin x,\sin y+\sin(x+y)).
\]
It is divergence free. Its pressure is nontrivial:
\(p_v=-\cos x\cos y\), with
\(-\Delta p_v=\nabla\cdot[(v\cdot\nabla)v]\).
Writing \(V=(2\pi)^3\), direct Fourier multiplication gives
\[
\mathcal P_s[v]=\frac V4(2^s-1),\qquad
\|\Lambda^{s+1}v\|_2^2=V\left(\frac32+2^s\right).
\]
At height one these are \(V/4\) and \(7V/2\). For datum \(Av\), production scales as \(A^3\), while viscous dissipation scales as \(\nu A^2\). Enstrophy initially increases for \(A>14\nu\), despite exact pressure coupling and incompressibility.

This has a finite-energy whole-space realization. A bounded periodic vector potential is
\[
\mathcal A=(\cos y,-\cos(x+y),-\cos x-\cos y),
\qquad\nabla\times\mathcal A=v.
\]
Choose a smooth cutoff equal to one on \([-L,L]^3\), vanishing outside \([-L-1,L+1]^3\), with bounded derivatives, and set \(v_L=\nabla\times(\chi_L\mathcal A)\). For \(L=n\pi\),
\[
\mathcal P_1[v_L]=\frac{(2L)^3}{4}+O(L^2),\qquad
\|\Delta v_L\|_2^2=\frac72(2L)^3+O(L^2).
\]
The shell contributes only \(O(L^2)\), because its width and all required derivatives are bounded. Thus smooth compactly supported incompressible data have positive initial enstrophy growth for fixed sufficiently large \(A\). Their whole-space pressure is determined by the original Poisson law.

This countertest rules out an automatic sign cancellation or unconditional viscous domination inferred from complete coupling. It does not assert blowup or refute the supplied theorem. The supported new contribution is the acceleration-integrability criterion; the attempted generation of its hypothesis returns the explicit signed production term above. A further whole-interval argument must control that term or supply another coercive functional, rather than infer integrability from the matrix's geometric relations alone.


## Full finite-matrix and height calculation

### 1. Construct the coupled coordinates before estimating them

Put \(V_n=\partial_t^nu\), \(F_n=\partial_t^nf\), and
\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\qquad
Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j
-(-\Delta)^{-1}\nabla\cdot F_n.
\]
The complete rows are
\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\qquad \nabla\cdot V_n=0.
\tag{1}
\]
Apply every selected spatial derivative, distribute it over every product, and retain the adjacent time coordinate, both extra viscous derivatives, and every pressure factor. A finite matrix is a selection of these coordinates and identities; its outer entries continue to be derivatives of this fluid. It is not a closed finite system obtained by deleting the outer equations.

This gives a compatible jet in the space of distributions on \(I\). To obtain a jet in the stronger target space, one must establish
\[
\sup_{S<T_*}\sum_{n=0}^N\left(
\|V_n\|_{L^2(0,S;H^{M+1})}^2+
\|V_{n+1}\|_{L^2(0,S;H^{M-1})}^2\right)<\infty.
\tag{2}
\]
For this norm-exhaustion realization, (2) is equivalent to the target interval memberships. A direct existence construction into the target spaces could instead establish them without a separate estimating operation. Finite selection adds no second generator.

### 2. Simultaneous coercivity: sum the full viscous matrix

For \(s\ge0\), square (1) in \(\dot H^s\). Solenoidal and gradient fields are orthogonal. The cross term between \(V_{n+1}\) and \(-\nu\Delta V_n\) is a time derivative. The exact result is
\[
\begin{aligned}
D_{n,s}(S):={}&\nu\|\Lambda^{s+1}V_n(S)\|_2^2\\
&+\int_0^S\left(\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2\right)dt\\
={}&\nu\|\Lambda^{s+1}V_n(0)\|_2^2
+\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt.
\end{aligned}\tag{3}
\]
Choose finite positive weights \(w_{n,s}\), and sum (3) over \(0\le n\le N\), \(0\le s\le M-1\), with \(M\ge2\). This is a simultaneous positive quadratic form in the temporal, viscous and pressure faces. It does not bound rows sequentially or discard their interactions. Control of this form, including its \(s=0\) traces, supplies (2) by Sobolev nesting and the fundamental theorem in time.

Its exact outstanding contribution is
\[
\mathcal B_{N,M}(S)=
\sum_{n,s}w_{n,s}\int_0^S
\left(\|\Lambda^sB_n\|_2^2
-2\operatorname{Re}\langle\Lambda^sF_n,\Lambda^sB_n\rangle\right)dt.
\tag{4}
\]
The force squares have finite prescribed budgets. In the unforced case (4) consists of positive nonlinear squares. Pressure completes the left side of (3); its orthogonality does not cancel the solenoidal nonlinear part on the right.

Attempting the manuscript's full product estimate inside this simultaneous form yields, schematically,
\[
D(S)\le A(u_0,\nu,f,N,M)+C_{N,M,\nu}(I_{N,M}+R(S))R(S),
\tag{5}
\]
where \(R(S)\) is the target rectangle norm and \(I_{N,M}\) its known initial-face norm. This is the actual shape of `P/forced/02-compatible-rectangles.tex:309–381`. Because the right side grows quadratically in \(R\), (5) permits arbitrarily large \(R\); it is not an upper bound from data alone. The positive viscous diagonal has survived, but an absorption or cancellation for (4) has not yet been produced.

### 3. Use the height ladder against that remainder

Let \(E_s=\tfrac12\|\Lambda^su\|_2^2\), \(H=E_{1/2}\),
\[
P_s=-\langle\Lambda^su,\Lambda^s(B_0+\nabla p)\rangle,
\qquad W_s=\langle\Lambda^su,\Lambda^sf\rangle.
\]
Direct pairing and repeated substitution give
\[
E_s'=P_s+W_s-2\nu E_{s+1},
\quad
H^{(k)}=(-2\nu)^kE_{k+1/2}
+\sum_{j=0}^{k-1}(-2\nu)^j
\partial_t^{k-1-j}(P_{j+1/2}+W_{j+1/2}).
\tag{6}
\]
Thus the draft correctly identifies the full completed coordinate \(R_k=E_{k+1/2}\). Positivity belongs to this completed expression. It does not separately bound its differentiated nonlinear terms or \(H^{(k)}\).

Try the first gain explicitly. With \(A=\|u\|_{\dot H^{1/2}}\), \(Y=\|u\|_{\dot H^{3/2}}\), Sobolev embedding and duality give
\[
\|B_0\|_{\dot H^{-1/2}}
\le C\|u\|_3\|\nabla u\|_3\le CAY,
\qquad |P_{1/2}|\le CAY^2.
\]
Consequently (6) gives
\[
H(S)+\int_0^S(\nu-CA(t))Y(t)^2dt
\le H(0)+\int_0^S|W_{1/2}|dt.
\tag{7}
\]
Young's inequality pays force work with a fraction of \(\nu Y^2\) and its finite \(\dot H^{-1/2}\) force budget. For small critical amplitude, (7) supplies \(R_1\in L^1(I)\). For arbitrary smooth data, the coefficient \(\nu-CA(t)\) has no established positive lower bound. Going to the next height differentiates \(P_{1/2}\), introducing the full mixed-jet factors; it supplies no sign that reverses this conclusion.

An integer-row check exposes that sign concretely:
\[
\frac12\frac d{dt}\|\nabla u\|_2^2+\nu\|\Delta u\|_2^2
=-\int\partial_k u_i\,\partial_k u_j\,\partial_j u_i\,dx
+\langle f,-\Delta u\rangle.
\tag{8}
\]
The cubic integral changes sign under \(u\mapsto-u\); incompressibility and pressure normalization do not make it dissipative. Bounding it gives
\[
\left|\int\partial_k u_i\partial_k u_j\partial_j u_i\right|
\le C\|\nabla u\|_2^{3/2}\|\Delta u\|_2^{3/2}
\le\frac\nu2\|\Delta u\|_2^2+C\nu^{-3}\|\nabla u\|_2^6.
\tag{9}
\]
Equations (7) and (9) are the explicit failed global absorptions of the coupled height/matrix calculation, not claims that every possible coupled functional must fail.

### 4. Material differentiation retains the unresolved interaction

The manuscript's binomial rows use Eulerian derivatives. For the draft's material interpretation, set \(D=\partial_t+u\cdot\nabla\). Then
\[
Du=\nu\Delta u-\nabla p+f,
\]
but \(D\) does not commute with spatial derivatives:
\[
[D,\partial_i]g=-(\partial_i u_j)\partial_jg,
\quad
[D,\Delta]g=-(\Delta u_j)\partial_jg
-2(\partial_k u_j)\partial_{kj}g.
\]
The next complete material row is
\[
\begin{aligned}
D^2u={}&\nu\Delta Du-\nabla Dp+Df
+(\nabla u)^T\nabla p\\
&-\nu\left[(\Delta u\cdot\nabla)u
+2\sum_k(\partial_k u\cdot\nabla)\partial_k u\right].
\end{aligned}\tag{10}
\]
Also \(\nabla\cdot Du=\partial_i u_j\partial_j u_i\), so material rows cannot inherit the Eulerian pressure orthogonality without correction. For spatial Sobolev energies the transport term becomes
\[
P_s=-\langle\Lambda^su,[\Lambda^s,u\cdot\nabla]u\rangle.
\tag{11}
\]
Material coordinates preserve the physical coupling, but (10)–(11) show exactly where transport reappears. Replacing Eulerian derivatives by material derivatives while omitting these terms would remove the interaction that needs control.

### 5. A full-chain material-acceleration criterion

The viscous geometry gives a stronger usable consequence if one specific whole-interval coordinate is supplied. Retain the explicit premise
\[
a:=Du,\qquad A_*:=\int_I\|a(t)\|_2^2dt<\infty.
\tag{12}
\]
No initial-jet calculation establishes (12). Under this premise the material momentum equation yields the exact elliptic square
\[
\|a-f\|_2^2=\nu^2\|\Delta u\|_2^2+\|\nabla p\|_2^2.
\tag{13}
\]
Indeed, \(\Delta u\) is solenoidal and \(\nabla p\) is a gradient. This orthogonality does apply to their pairing, even though \(a\) itself is not solenoidal.

Let \(F_*:=\int_I\|f\|_2^2dt\), and let \(K_*\) be the finite kinetic-energy bound \(\sup_I\|u\|_2\). Since \((1+r^2)^2\le2(1+r^4)\), (13) gives
\[
\int_I\|u\|_{H^2}^2dt
\le2T_*K_*^2+4\nu^{-2}(A_*+F_*).
\tag{14}
\]
With the fixed three-dimensional embedding constant \(C_E\),
\[
U_*:=\int_I\|u\|_\infty^2dt
\le C_E^2\left(2T_*K_*^2+4\nu^{-2}(A_*+F_*)\right)<\infty.
\tag{15}
\]
This one coordinate now controls every spatial order together. For any nonnegative integer \(m\), use the equivalent derivative-sum \(H^m\) norm. The integer Moser product estimate on \(\mathbb R^3\) is
\[
\|u\otimes u\|_{H^m}\le C_m\|u\|_\infty\|u\|_{H^m}.
\tag{16}
\]
For integer derivatives this follows by Leibniz and Gagliardo–Nirenberg interpolation of each intermediate product between its \(L^\infty\) factor and its order-\(m\), \(L^2\) factor. On strict horizons every factor is smooth and the estimate applies without an endpoint assumption.

Pair the projected divergence-form equation with \(u\) in this derivative-sum norm, moving the divergence onto the testing field. With \(y_m=\|u\|_{H^m}^2\) and \(d_m=\|\nabla u\|_{H^m}\), (16) and Young's inequality give
\[
y_m'+\nu d_m^2
\le\left(\frac{C_m}{\nu}\|u\|_\infty^2+1\right)y_m
+\|f\|_{H^m}^2.
\tag{17}
\]
Pressure remains fixed by its original formula; its pairing with each Eulerian solenoidal derivative vanishes. The constants in (16)–(17) depend on \(m,\nu\), not on the strict horizon \(S\). Integrating (17) for \(t\le S<T_*\) gives
\[
\sup_{t<T_*}y_m(t)
\le\left(y_m(0)+\int_I\|f\|_{H^m}^2dt\right)
\exp\left(T_*+\frac{C_m}{\nu}U_*\right)<\infty.
\tag{18}
\]
Integrating (17) once more also bounds \(\int_Id_m^2\). Every initial norm and force integral in (18) is prescribed. Thus (12) yields all positive spatial orders, with a separate finite constant for each order.

The complete recurrence (1) now gives \(V_1\in L^\infty(I;H^m)\) from the already bounded \(u\) orders \(m+2\). Induction over the full binomial sums gives \(V_n\in L^\infty(I;H^m)\) for every finite \(n,m\). The Riesz formula, including its force potential, gives the pressure rows. Integrating the adjacent rows yields their common smooth endpoint; finite \(T_*\) then gives every required \(H^r(I;H^m)\) norm. Local restart with the prescribed future force contradicts finite maximality. This is a complete conditional chain from (12), not an all-orders premise in disguise.

The source identities do not yet produce (12). Expanding its left side gives
\[
\|a\|_2^2=\|u_t\|_2^2+\|B_0\|_2^2
+2\operatorname{Re}\langle u_t,B_0\rangle.
\tag{19}
\]
Trying to pay (19) by (3) retains \(\|B_0\|_2^2\) on the right. Pairing the material equation with \(a\) instead retains
\[
\langle\nabla p,a\rangle
=-\int p\,\partial_i u_j\partial_j u_i\,dx,
\qquad
\langle\Delta u,B_0\rangle
=-\int\partial_k u_i\partial_k u_j\partial_j u_i\,dx.
\tag{20}
\]
These are actual pressure/strain transfers, not vanishing material-transport terms. Formula (13) supplies the positive conversion once the acceleration budget exists; (19)–(20) identify the operation still needed to derive that budget from the datum.



This is an independent conditional entry. It is not a prerequisite of the native datum construction. When the native finite block is already available, its acceleration integral is supplied by the native finite-block readout.

### Optional material-acceleration entry

Let \(a=D_tu\). The material momentum equation and solenoidal/gradient orthogonality give the exact identity
\[
\|a-f\|_2^2=\nu^2\|\Delta u\|_2^2+\|\nabla p\|_2^2.
\]
If \(A_*:=\int_I\|a\|_2^2dt<\infty\), kinetic energy controls low frequencies and this identity yields \(u\in L^2(I;H^2)\subset L^2(I;L^\infty)\). At each integer spatial order m, the projected equation and tame product bound give
\[
\frac d{dt}\|u\|_{H^m}^2+\nu\|\nabla u\|_{H^m}^2
\le\left(C_m\nu^{-1}\|u\|_\infty^2+1\right)\|u\|_{H^m}^2
+\|f\|_{H^m}^2.
\]
The coefficient is integrable independently of the strict horizon. Gronwall produces every spatial order; the full recurrence then produces temporal and pressure rows and their endpoint. The **material** transition contains the complete constants, proof, commutators and finite-matrix calculation. With tools use `open material --budget 50000`; in the text edition read **Formal refinement of the supplied material construction** below.

The acceleration integral is an explicit premise of this new criterion. It is not substituted for a proved datum output. Trying to derive it by pairing the unforced material equation returns
\[
\|a\|_2^2+\frac\nu2\frac d{dt}\|\nabla u\|_2^2
=\|\nabla p\|_2^2+\nu\mathcal P_1,
\qquad
\mathcal P_1=-\int\partial_k u_i\,\partial_k u_j\,\partial_j u_i\,dx.
\]
Substitution of the orthogonal identity recovers the enstrophy balance with this signed current retained. Thus the material refinement supplies a genuine conditional construction; it does not independently pay its acceleration budget. Failure to generate this integral by the optional material-energy method does not establish a defect or an additional premise in the native construction. Finite selection of an obtained jet remains a readout with no additional generating obligation. [r-body:793–828,1589–1629]



## 11. External candidate: local data and residual admission

The candidate comparison concerns a separately specified local construction and its localization, at viscosity one before the stated rescaling. Its source parameters are \(0<h<1/100\), \(\tau=1-t\), \(A_c=1/2+h\), \(D=1/2-h\), and \(b=2^{A_c}\kappa>0\). The exterior input is
\[
H_c(Z)=\Gamma(1+h)^{-1}\int_0^\infty e^{-v}v^h(1+Zv)^{-h}\,dv,
\]
\[
K(r,t)=br^{-2A_c}H_c(4\tau/r^2),\quad
v=Ke_\theta,\quad
\pi=-\int_r^\infty K(\rho,t)^2\,\frac{d\rho}{\rho}.
\]
The source attributes this exact exterior and the vanishing correction fields to the external construction. It is an open exterior region with a moving inner boundary; it is not a global unforced solution on \(\mathbb R^3\). [r-body:1010-1057,1225-1231]

The localized candidate is specified by
\[
u=cv+w,\quad w=\nabla c\times\mathcal A,\quad
p=c\pi,\quad c=\chi_x\chi_t,
\]
with local \(v=\operatorname{curl}\mathcal A+Be_\theta\) and axisymmetric \(c\). This preserves divergence freedom. Expand the full residual \(f=u_t+(u\cdot\nabla)u-\nu\Delta u+\nabla p\). Besides \(c\mathcal R_\nu(v,\pi)\), it contains
\[
\begin{aligned}
&(c_t-\nu\Delta c)v-2\nu\sum_i(\partial_i c)\partial_i v+\pi\nabla c\\
&+(c^2-c)(v\cdot\nabla)v+c(v\cdot\nabla c)v+w_t-\nu\Delta w\\
&+c(v\cdot\nabla)w+c(w\cdot\nabla)v+(w\cdot\nabla)w.
\end{aligned}
\]
The possible extra term \((w\cdot\nabla c)v\) is zero by the cross-product identity. Every remaining term belongs to the prescribed candidate force. [r-localization:1-56]

Product rules bound each fixed force jet by finitely many jets of \(c,v,\mathcal A,\pi\). Transition geometry gives \(q\ge(z_0/2)^{1/D}\) axially and \(q\ge r_0^2/(8X_{\rm ext})\) for interior radial corrections. The external closed-scale bounds, finite summands, denominator \(1-2h\eta^2>0\), and Cartesian axis representation supply their local jet bounds. Remaining exterior transitions have \(r\ge r_0/2\); time transitions have \(\tau\ge\tau_0/2\), allowing explicit heat-profile bounds. [r-localization:58-152]

Near the proposed singular point the cutoffs are one, so admission consumes the external construction's all-order flat local-residual estimate on its interior, with zero residual in the exact exterior. These are external-source hypotheses of the admission step. Combining them with the cutoff bounds gives uniform bounds for every fixed \(\partial_x^\alpha\partial_t^jf\). One further time derivative makes each preceding jet uniformly Cauchy at \(t=1\); spatial derivative limits give compatible \(F_j\in C_c^\infty\) supported in one fixed compact set. [r-localization:154-188]

To continue the force, take \(\chi_0=1\) near zero and choose increasing \(b_j\) in
\[
\widetilde f(x,1+\sigma)
=\sum_{j\ge0}\chi_0(b_j\sigma)\frac{\sigma^j}{j!}F_j(x),\qquad \sigma\ge0.
\]
The differentiated \(j\)-th summand is bounded by \(C_{j,m}b_j^{m-j}\|F_j\|_{C^{|\alpha|}}\). Choose \(b_j\) to make this at most \(2^{-j}\) for the finite collection \(|\alpha|+m\le\lfloor j/2\rfloor\). Every fixed differentiated tail then converges uniformly. At zero only \(j=m\) contributes to the \(m\)-th temporal jet, giving \(F_m\). The extension is smooth, keeps fixed spatial support, and vanishes for \(\sigma\ge1\). Joining it to the actual residual for \(t<1\) gives the source's prescribed smooth compactly supported force \(\widetilde f\). [r-admission:11-76]

## 12. Exact exterior cancellation and positive norm growth

Differentiate the heat-profile integral and integrate by parts to obtain
\[
Z^2H_c''+[1+2(1+h)Z]H_c'+h(1+h)H_c=0.
\]
Substitution into \(K\) gives
\(K_t=(\partial_{rr}+r^{-1}\partial_r-r^{-2})K\).
The four signed momentum terms are
\[
u_t=K_te_\theta,\quad (u\cdot\nabla)u=-K^2r^{-1}e_r,\quad
\nabla p=K^2r^{-1}e_r,\quad-\Delta u=-K_te_\theta.
\]
Their sum and its fixed mixed derivatives are zero in this exterior. Large individual terms do not make its residual nonzero. [r-body:1059-1085]

Using the external coordinate relations
\(\tau=q(1-\eta^2)\), \(z=q^D\eta\), \(X=r^2/(2q)\),
choose a shrinking annulus
\[
\mathcal E_\tau=\{c\sqrt\tau<r<2c\sqrt\tau,\ |z|<d\tau^D\}
\]
whose \(X\) lies in the exact exterior and where both cutoffs are one. Take Eulerian derivatives at fixed spatial position before substituting \(r=y\sqrt\tau\). Positive profile coefficients then give
\[
|u|\asymp\tau^{-1/2-h},\qquad
|u_t|=|\Delta u|\asymp\tau^{-3/2-h}.
\]
Cylindrical integration over the whole annulus yields
\[
\int_{\mathcal E_\tau}|u_t|^2\,dx
=\int_{\mathcal E_\tau}|\Delta u|^2\,dx
=C_{c,d}\tau^{-3/2-3h},\quad C_{c,d}>0.
\]
The time integral diverges, giving a positive contribution to
\[
R_{0,1}=\int_0^1(\|u\|_{H^2}^2+\|u_t\|_2^2)\,dt.
\]
This lower bound needs agreement with the exterior on that region; it does not use a failure of cancellation in the momentum residual. [r-body:1087-1153]

Material acceleration retains the rotation of \(e_r,e_\theta\):
\[
D_tu=-K^2r^{-1}e_r+K_te_\theta.
\]
Its squared integral has the two positive powers
\(C_{c,d}\tau^{-3/2-3h}+B_{c,d}\tau^{-3/2-5h}\).
The parcel map keeps \(r,z\) fixed and shifts \(\theta\), with volume Jacobian one. Its growing acceleration satisfies differentiated incompressibility. The shrinking annulus samples different parcel labels. [r-body:1155-1231]

## 13. Identification with the prescribed-data solution

The candidate conclusion consumes the native prescribed-force theorem plus admission of the complete localized residual under the external inputs above. For its zero datum and \(\widetilde f\), the source theorem supplies a regular pair \((U,P)\) on \([0,1]\) in the complete mixed intersection. The trace at \(m=2\), followed by the source's Fourier embedding constant \(1/\sqrt{8\pi}\), gives
\[
\sup_{[0,1]}\|U\|_\infty^2
\le\frac{\|u_0\|_{H^2}^2+R_{0,2}[U]}{8\pi}<\infty.
\]
This is a finite rectangle readout of that global forced solution. [r-body:116-143,553-606]

Let \(v,p_v\) be a proposed classical candidate for identical datum, viscosity, prescribed force, and spatial domain, with finite spatial Sobolev norms on each strict interval. Set \(z=v-U\). Subtraction cancels the prescribed force:
\[
z_t+(v\cdot\nabla)z+(z\cdot\nabla)U+\nabla(p_v-P)=\nu\Delta z.
\]
Pairing with \(z\) eliminates pressure and divergence-free transport. The remaining term is bounded by \(\|\nabla U\|_\infty\|z\|_2^2\), whose coefficient is integrable by the intersection for \(U\). Gronwall on every \([0,S]\), \(S<1\), with \(z(0)=0\), gives \(v=U\) on \([0,1)\). No candidate terminal trace is an entering hypothesis of this identification. [r-body:1366-1407]

After this identification, every finite rectangle bound of \(U\) applies to \(v\). The uniform speed bound and finite \(R_{0,1}\) conflict with the source candidate's unbounded speed and the positive exterior divergence above. This is the manuscript's external-candidate exclusion, with native forced theorem, full residual admission, identical prescribed data, strict-interval classical regularity, and exterior-agreement inputs kept explicit. [r-body:1409-1451]

## 14. Conservative-force reduction and its separate exterior test

For \(f=\nabla\phi\), pressure \(p-\phi\) gives an unforced velocity equation. Orthogonal projection gives the residual's distance to all pressure adjustments as \(\|\mathbb Pf\|_{H^m}\). This reduction retains the conservative-force hypothesis. [r-body:1865-1944]

In a fixed cutoff exterior rectangle away from the axis, the source has terminal heat jets \(K_j>0\) and azimuthal force
\[
(F_j)_\theta
=-K_j\left(\chi_{rr}+\chi_{zz}
-\frac{1+4h+4j}{r}\chi_r\right).
\]
If this vanished throughout the connected rectangle, the cutoff would solve a uniformly elliptic equation while attaining its maximum one and also vanishing at interior points. The strong maximum principle excludes that combination. A compactly supported azimuthal divergence-free test field of matching sign gives \(\langle\mathbb PF_j,w\rangle>0\). At \(j=0\) the resulting positive dual bound persists on a final time interval. This obstructs absorbing this prescribed candidate force into pressure; it is separate from the uniqueness comparison and from the sign of total force work. [r-body:1946-2079]




### The four proposed refutation readouts, with their actual inputs

The author's original four-part list has these meanings. In the supplied rehearsal's order, the third and fourth are compatible smoothness through the endpoint and the acceleration/participation comparison.

1. **Individual terms.** A sufficiently high finite norm rectangle bounds each selected velocity, pressure, transport, viscous and source coordinate. Every factor and its source must remain attached. [r-body:740–790]
2. **Combined size.** Summing the individual positive bounds controls the total sizes of the complete equation's terms. This differs from the signed residual being small: large terms can cancel exactly in the residual. [r-body:1010–1085]
3. **Compatible intersection and endpoint.** Whole-interval rows at all finite orders give a compatible smooth endpoint and restart for the original history. Smoothness only on each strict interval does not supply that terminal input. [r-body:390–449]
4. **Acceleration and participation.** The rectangle construction bounds material acceleration quantitatively. Equality with the candidate on each strict interval transfers that bound and conflicts with its divergent acceleration. Nonzero divergence of material acceleration is compatible with an incompressible velocity and a volume-preserving flow; incompressibility alone is not the contradiction. [r-body:933–998,1155–1230,1266–1450,1589–1693]

These are linked consequences of the whole-history control, rather than four independent proofs of that control. The candidate comparison also retains complete residual admission, identical prescribed data and force, and strict-interval uniqueness. The source's exact exterior cancels the full momentum residual while positive derivative integrals diverge. Pressure absorption requires zero projected force and is unavailable for the displayed nonzero projected cutoff force. [r-body:1087–1153,1359–1450,1865–1944,2011–2079]

The rough phrase “single rung” is not used as a mathematical premise here. Differentiating a smooth solution of the complete equation produces its full derivative identities. The issue is the quantitative whole-interval domains, not whether a candidate explicitly presents every derivative row. “Engineered force” describes the construction more accurately than “imaginary force.”


## Complete authorial openings

The following display applies vocabulary substitutions; exact original bytes remain bound to their source hashes in the executable.

### author:u-how:e2c9bf4a1e04

\begingroup
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.0\baselineskip}
\setlength{\abovedisplayskip}{8pt}
\setlength{\belowdisplayskip}{8pt}
\setlength{\abovedisplayshortskip}{8pt}
\setlength{\belowdisplayshortskip}{8pt}
\setlength{\jot}{5pt}
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\makeatletter
\let\NSNativeDisplay\[
\long\def\[#1\]{%
  \par\nobreak\vskip8pt\nointerlineskip
  \begingroup
  \parskip=0pt \predisplaypenalty=10000 \postdisplaypenalty=10000
  \baselineskip=0pt \lineskip=0pt \lineskiplimit=0pt
  \abovedisplayskip=0pt \belowdisplayskip=0pt
  \abovedisplayshortskip=0pt \belowdisplayshortskip=0pt
  \NSNativeDisplay \relax{\normalbaselines #1}\]
  \par
  \endgroup
  \nobreak\vskip8pt\nointerlineskip
  \parskip=0pt
  \AddToHookNext{para/begin}{\ifdefined\NSNativeDisplay\setlength{\parskip}{1.0\baselineskip}\fi}%
  \ignorespaces
}
\makeatother

\part{How the Proof Works}
\label{u:guide:how-proof-works}

The three-dimensional Navier--Stokes regularity problem asks whether a smooth fluid flow can lose its smoothness in finite time. We start with smooth, divergence-free initial velocity \(u_0\), finite energy, and positive viscosity. The fluid evolves according to
\[
\partial_tu+(u\cdot\nabla)u=-\nabla p+\nu\Delta u,
\qquad \nabla\cdot u=0.
\]

The problem starts with a vortex.

As it lengthens, it thins and spins faster and faster as it gets smaller.

The danger is that the narrowing could continue toward zero width, with the
velocity changing more and more sharply across the shrinking core. The
equations describe an idealized continuum, with no minimum radius built into
the model.

To examine how the equations behave at smaller scales, contract lengths by a
factor \(\lambda>1\), increase the velocity by \(\lambda\), and run the motion
\(\lambda^2\) times as fast:
\[
 u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
 \qquad p_\lambda(x,t)=\lambda^2p(\lambda x,\lambda^2t).
\]
All terms in the momentum equation scale by \(\lambda^3\), preserving
the balance between transport and viscosity at fixed \(\nu\). The velocity
gradients scale by \(\lambda^2\), since the increase in speed is compressed
into a smaller distance.

Yet the energy decreases, because the \(\lambda^2\) increase in velocity
squared is outweighed by the \(\lambda^{-3}\) decrease in volume:
\[
 E[u_\lambda](t)=\lambda^{-1}E[u](\lambda^2t),
 \qquad E[u]=\frac12\int_{\mathbb R^3}|u|^2\,dx.
\]

A Sobolev norm includes the growing spatial derivatives in the measurement.
Its order \(s\) contributes \(\lambda^s\), alongside the
\(\lambda^{-1/2}\) from the velocity's \(L^2\) scaling:
\[
 \|u_\lambda(\cdot,t)\|_{\dot H^s}
 =\lambda^{s-1/2}\|u(\cdot,\lambda^2t)\|_{\dot H^s}.
\]
The exponent \(s-\tfrac12\) describes measurement sensitivity. Below
\(s=\tfrac12\), smaller scales are discounted; above it,
they are magnified. At \(s=\tfrac12\), dynamically equivalent rescaled
vortices receive one common reading. That scale-calibrated measurement is
critical because zooming changes the vortex but not its measured size.

If each contraction generated another, the time rescaling would give the
stages progressively shorter durations:
\[
 \tau_j=\lambda^{-2j}\tau_0,
 \qquad \sum_{j=0}^{\infty}\tau_j
 =\frac{\tau_0}{1-\lambda^{-2}}<\infty.
\]
The infinitely many stages would accumulate at a finite time, with the
radius tending to zero and the velocity and its gradients growing without
bound. This is the hypothetical Zeno cascade. The critical norm follows it
without making the cascade cheaper or more expensive solely because each
stage occurs at a smaller scale.

If a singularity were to actually form, the velocity would have to blow up,
which means the acceleration would have to blow up, followed by its jerk,
and so on, and so on.

Differentiate the equation in time at fixed spatial coordinates, once
and then again. Each time derivative of transport can fall on either
velocity factor, giving
\[
 \begin{aligned}
 &\partial_tu=\nu\Delta u-(u\cdot\nabla)u-\nabla p,\\
 &\partial_t^2u=\nu\Delta\partial_tu-(\partial_tu\cdot\nabla)u
   -(u\cdot\nabla)\partial_tu-\nabla\partial_tp,\\
 &\partial_t^3u=\nu\Delta\partial_t^2u-(\partial_t^2u\cdot\nabla)u
   -2(\partial_tu\cdot\nabla)\partial_tu
   -(u\cdot\nabla)\partial_t^2u-\nabla\partial_t^2p.
 \end{aligned}
\]
Continuing gives the temporal derivative tower. Writing the derivatives at
fixed spatial coordinates as \(V_n=\partial_t^nu\) and
\(Q_n=\partial_t^np\), its general row is
\[
 \begin{aligned}
 V_{n+1}&=\nu\Delta V_n
 -\sum_{a=0}^{n}\binom na(V_a\cdot\nabla)V_{n-a}-\nabla Q_n,\\
 -\Delta Q_n&=\partial_i\partial_j
   \sum_{a=0}^{n}\binom na V_{a,i}V_{n-a,j}.
 \end{aligned}
\]
Taking the divergence fixes the pressure equation, and decay at spatial
infinity fixes its normalization. Every temporal row is also a spatial
field. Taking its spatial derivatives gives the mixed jet
\(J_{n,\alpha}=\partial_x^\alpha\partial_t^nu\), with pressure derivatives
\(\Pi_{n,\alpha}=\partial_x^\alpha\partial_t^np\). The product rule now
acts in both directions:
\[
 J_{n+1,\alpha}=\nu\Delta J_{n,\alpha}-\nabla\Pi_{n,\alpha}
 -\sum_{a=0}^{n}\sum_{\beta\le\alpha}
   \binom na\binom\alpha\beta
   (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}.
\]
The mixed jet keeps the velocity and pressure derivatives as fields.
We now take a scalar energy measurement of \(u\):
\[
 E_s=\frac12\|\Lambda^su\|_2^2,
 \qquad \Lambda=(-\Delta)^{1/2}.
\]
The row \(n=0,\alpha=0\) is the Navier--Stokes equation for \(u\).
Differentiating \(E_s\), substituting that row, and integrating by parts gives
\[
 \begin{aligned}
 E_s'
 &=\operatorname{Re}\langle\Lambda^su,\Lambda^s\partial_tu\rangle\\
 &=-\nu\|\Lambda^{s+1}u\|_2^2+\mathcal P_s\\
 &=-2\nu E_{s+1}+\mathcal P_s,
 \end{aligned}
\]
\Needspace{5\baselineskip}
where the transport and pressure contributions are
\[
 \mathcal P_s=-\operatorname{Re}\langle\Lambda^su,
 \Lambda^s((u\cdot\nabla)u+\nabla p)\rangle.
\]
One time derivative of the energy has brought in an energy one spatial
Sobolev level higher. The Laplacian contributes two spatial derivatives;
integration by parts places one additional derivative on each velocity
factor in the squared norm.

At the critical height, set \(H=E_{1/2}\). Repeating the energy identity
at each newly exposed height gives
\[
 \begin{aligned}
 H'&=-2\nu E_{3/2}+\mathcal P_{1/2},\\
 H''&=-2\nu E_{3/2}'+\partial_t\mathcal P_{1/2}\\
    &=4\nu^2E_{5/2}-2\nu\mathcal P_{3/2}
        +\partial_t\mathcal P_{1/2},\\
 H^{(n)}&=(-2\nu)^nE_{n+1/2}
        +\sum_{j=0}^{n-1}(-2\nu)^j
           \partial_t^{\,n-1-j}\mathcal P_{j+1/2}.
 \end{aligned}
\]
The higher mixed-jet rows organize the velocity and pressure derivatives
inside \(\partial_t^k\mathcal P_s\). Here \(H^{(n)}\) differentiates the
critical energy; it is not the energy of \(\partial_t^nu\).

Each step up in the time derivatives of \(H\) brings in one higher spatial
Sobolev order. At temporal order \(n\), the energy identity exposes
\(E_{n+1/2}\), so the sequence \(H,H',H'',\ldots\) takes us through
the spatial levels
\[
 H^{1/2},\qquad H^{3/2},\qquad H^{5/2},\qquad H^{7/2},\qquad\ldots.
\]

\phantomsection\label{u:guide:intersection}
Recall the Sobolev embedding theorem: in three dimensions, enough spatial
Sobolev regularity gives bounded, continuous derivatives through order \(k\):
\[
 H^s(\mathbb R^3)\hookrightarrow C_b^k(\mathbb R^3),
 \qquad s>k+\tfrac32.
\]

As we go up the temporal tower, membership at the corresponding spatial
levels gives more regularity and brings us closer to smoothness. A vortex
approaching blowup would make us expect the opposite: its spatial derivatives
should be growing without bound. Requiring membership at every height gives
the full smoothness condition:
\[
 L^2\cap\bigcap_{n\ge0}\dot H^{n+1/2}(\mathbb R^3)
 =\bigcap_{m\ge0}H^m(\mathbb R^3)
 =H^\infty(\mathbb R^3)\hookrightarrow C_b^\infty(\mathbb R^3).
\]

Fix one \(u_0\in H^\infty_\sigma(\mathbb R^3)\) and one
\(\nu>0\). Write \(I=(0,T_*)\) for the interval leading to a proposed
finite maximal time. The equation relates the evolving velocity to its
prescribed initial value through
\[
 \begin{aligned}
 u(t)&=u_0+\int_0^t
 \bigl[\nu\Delta u(s)-(u(s)\cdot\nabla)u(s)-\nabla p(s)\bigr]\,ds,\\
 p(t)&=R_iR_j\bigl(u_i(t)u_j(t)\bigr),
 \qquad 0\le t<T_*.
 \end{aligned}
\]
The pressure formula completes the evolution equation using the velocity
throughout space. It fixes the normalized pressure at every time, including
its initial value. The first temporal response is
\[
 V_1(t)=\nu\Delta u(t)-(u(t)\cdot\nabla)u(t)-\nabla Q_0(t).
\]
Differentiating the pressure product determines \(Q_1(t)\); substituting
\(V_1(t)\) and \(Q_1(t)\) into the next velocity equation determines
\(V_2(t)\). Continuing the binomial recurrences above gives every temporal
row, with the original \(\nu\), every transport factor, and every pressure
response retained. Spatial differentiation then gives
\[
 J_{n,\alpha}(t,x)=\partial_x^\alpha V_n(t,x),
 \qquad
 \Pi_{n,\alpha}(t,x)=\partial_x^\alpha Q_n(t,x).
\]
These are fields on \(I\times\mathbb R^3\). Evaluating their equations
at \(t=0\) gives the complete initial jet determined by \(u_0\);
leaving \(t,x\) free retains the evolving mixed jet.

A finite cut retains the equations together with their dependent
coordinates. For a row indexed by \((n,\alpha)\), these include
\[
 J_{n+1,\alpha},\qquad
 J_{n,\alpha+2e_\ell},\qquad
 \Pi_{n,\alpha+e_\ell},
 \qquad 1\le\ell\le3,
\]
and every transport factor
\[
 J_{a,\beta,i},\qquad
 J_{n-a,\alpha-\beta+e_i},
 \qquad a\le n,\quad\beta\le\alpha.
\]
The pressure entries retain all factors in their differentiated Riesz
product formula. Every retained coordinate is a derivative of the
original history, including the outer temporal and spatial entries.

The whole-terminal output of
Theorem~\ref{u:thm:datum-finite-blocks} concerns this prescribed history.
Every finite cut of its constructed jet has the adjacent memberships
\[
 \begin{aligned}
 V_n&\in L^2(I;H^{M+1}),\\
 V_{n+1}&\in L^2(I;H^{M-1}),
 \qquad 0\le n\le N,
 \end{aligned}
\]
for each finite \(N,M\). Selecting those entries gives
\(\cR_{N,M}[u_0;T_*]\) by projection of the constructed jet. Increasing
\(N,M\) changes which derivative coordinates are retained; every cut keeps
the full time interval \(I\). Their finite norm measures that
whole-interval output:
\[
 \begin{aligned}
 \mathfrak R_{N,M}(u;T_*)
 &=\sum_{n=0}^{N}\Bigl(
   \|V_n\|_{L^2(I;H^{M+1})}^2\\
 &\hspace{36mm}+\|V_{n+1}\|_{L^2(I;H^{M-1})}^2\Bigr)<\infty.
 \end{aligned}
\]
Each selected membership includes finiteness of its defining integral on
\(I\). Restricting the integration to \((0,T)\), with \(T<T_*\), can
only decrease this sum. Theorem~\ref{u:thm:datum-rectangles} records the
resulting finite-coordinate estimate.

Pressure completion also gives a quantitative readout at each selected
order. The product estimate and Cauchy--Schwarz in time give
\[
 \begin{aligned}
 \|Q_n\|_{L^1(I;H^M)}
 &\le C_M^{\rm p}\sum_{a=0}^{n}\binom na
       \|V_a\|_{L^2(I;H^{M+1})}\\
 &\hspace{35mm}\cdot\|V_{n-a}\|_{L^2(I;H^{M+1})}<\infty.
 \end{aligned}
\]
For a mixed pressure coordinate, distribute the spatial derivatives between
both factors as well. Increasing the selected spatial order includes every
factor needed for any fixed \(\Pi_{n,\alpha}\).

Enlarging a finite cut preserves its existing fields. An entry with indices
\((n,\alpha)\) is always \(\partial_x^\alpha\partial_t^n u\), and its
pressure entry always comes from the differentiated normalized pressure
formula. Deleting the outer indices recovers the smaller cut exactly.
The initial faces agree because the recurrences begin with the original
\(u_0\). This is the restriction compatibility used in
Theorem~\ref{u:thm:compatible-inverse-intersection}.

Now fix any finite temporal order \(r\) and spatial order \(m\).
Choose a cut containing \(V_0,\ldots,V_r\) in \(L^2(I;H^m)\).
Its adjacent equations identify those fields as the weak temporal
derivatives of \(u\), so
\[
 \|u\|_{H^r(I;H^m)}^2
 =\sum_{n=0}^{r}\|V_n\|_{L^2(I;H^m)}^2<\infty.
\]
Every finite pair \((r,m)\) is covered, giving
\[
 u\in\bigcap_{r,m\ge0}H^r(I;H^m(\mathbb R^3)).
\]
The intersection retains all these compatible memberships. Its definition
requires each finite norm to be finite; it introduces no sum over
infinitely many derivative orders and no constant common to the tower.

\phantomsection\label{u:guide:mixed-jet-map}
The critical-height construction begins independently from the governing
energy identity. Differentiating \(H=E_{1/2}\) and substituting the full
velocity--pressure rows gives
\[
 \begin{aligned}
 (-2\nu)^k E_{k+1/2}
 &=H^{(k)}
   -\sum_{j=0}^{k-1}(-2\nu)^j
       \partial_t^{\,k-1-j}\mathcal P_{j+1/2},
 \qquad k\ge1.
 \end{aligned}
\]
Finite selections of these scalar relationships form the critical-height
rectangles. The mixed-coordinate records come from differentiating the
velocity and pressure fields. Each operation uses the governing equations
on the prescribed history and can be performed before taking an
all-orders intersection. Their overlapping velocity and pressure entries agree because
both concern the prescribed history. Evaluating the height relationships
on the constructed whole-interval jet reads its half-integer spatial
energies. The finite-energy row controls low frequencies, and arbitrarily
high half-integer weights control every finite integer Sobolev order.
Corollary~\ref{u:cor:datum-critical-height-completion} makes this spatial
exhaustion explicit; Proposition~\ref{u:prop:spatial-column-reconstruction}
uses the full equation to recover the temporal and pressure rows. The two
constructions thus retain their independent origins while their compatible
outputs can be used together.

\Needspace{8\baselineskip}
Viscosity gives the relationship between these rows. The term
\(\nu\Delta V_n\) connects the next time derivative to two more spatial
derivatives, with transport and pressure retained. Positive \(\nu\) lets us
recover that spatial contribution from each complete row. 

In particular, choose a height large enough to put \(V_{n+1}\) in
\(L^2(0,T_*;H^m)\). Between two late times,
\[
 \|V_n(t)-V_n(s)\|_{H^m}
 \le(t-s)^{1/2}\|V_{n+1}\|_{L^2(s,t;H^m)},
 \qquad s<t<T_*.
\]
The remaining change tends to zero, so the row reaches an \(H^m\) limit.
Limits at different spatial heights agree under restriction. For the
velocity they identify a smooth endpoint
\(u_*\in H^\infty_\sigma(\mathbb R^3)\), with the higher temporal rows
and normalized pressure reaching their compatible endpoints. Local existence
continues from \(u_*\), and uniqueness joins that continuation to the
incoming flow. A finite \(T_*\) cannot be maximal.

\Needspace{6\baselineskip}
\phantomsection\label{u:guide:finite-estimates}
The finite estimates now come from whichever rectangle contains the
orders they require. For temporal order \(r\), spatial derivative order
\(k\), and finite time \(T\), choose \(m>k+\tfrac32\). Continuity in
\(H^m\) and Sobolev embedding give
\[
 \sup_{0\le t\le T}\|\partial_t^ru(t)\|_{W^{k,\infty}}
 \le C_{m,k}\sup_{0\le t\le T}\|\partial_t^ru(t)\|_{H^m}<\infty.
\]
In particular, the accumulated velocity gradient is finite. For two material
trajectories, this gives
\[
 |X(a,t)-X(b,t)|\ge |a-b|
 \exp\!\left(-\int_0^t\|\nabla u(s)\|_\infty\,ds\right)>0.
\]
\Needspace{4\baselineskip}
The vortex can stretch and narrow, but a positive material separation
retains a positive lower bound throughout each finite interval.  The two
compatible exhaustions give the regularity, and each finite rectangle retains
the estimates at the orders where they are used.

So, for example, choose the rectangle with \(N=0\) and \(M=1\).
Write the sizes of its velocity and time-derivative entries as
\[
 \begin{aligned}
 A_T&=\left(\int_0^T\|u(t)\|_{H^2}^2\,dt\right)^{1/2},\\
 B_T&=\left(\int_0^T\|\partial_tu(t)\|_2^2\,dt\right)^{1/2}.
 \end{aligned}
\]
The time-derivative entry controls the change in the \(H^1\) trace.
Pairing \(\partial_tu\) with \((1-\Delta)u\), then applying
Cauchy--Schwarz in time, gives, for \(0\le t\le T\),
\[
 \begin{aligned}
 \|u(t)\|_{H^1}^2
 &=\|u_0\|_{H^1}^2
   +2\operatorname{Re}\int_0^t
       \langle(1-\Delta)u(s),\partial_su(s)\rangle_{L^2}\,ds\\
 &\le\|u_0\|_{H^1}^2+2A_TB_T.
 \end{aligned}
\]
\Needspace{6\baselineskip}
With the unitary Fourier normalization, the quantitative spatial
\(H^1\hookrightarrow L^3\) estimate is
\[
 \|f\|_{L^3}\le\frac{\|f\|_{H^1}}{2^{5/6}\pi^{1/6}}.
\]
Applying it to the trace just obtained gives the
Escauriaza--Seregin--\v{S}ver\'ak endpoint estimate:
\[
 \sup_{0\le t\le T}\|u(t)\|_{L^3}
 \le \frac{\bigl(\|u_0\|_{H^1}^2+2A_TB_T\bigr)^{1/2}}
              {2^{5/6}\pi^{1/6}}.
\]

The \(H^2\) entry also controls peak speed at each time. The spatial
estimate is
\[
 \|u(t)\|_{L^\infty}\le\frac{\|u(t)\|_{H^2}}{\sqrt{8\pi}}.
\]
Squaring and integrating gives the Serrin estimate:
\[
 \left(\int_0^T\|u(t)\|_{L^\infty}^2\,dt\right)^{1/2}
 \le\frac1{\sqrt{8\pi}}
       \left(\int_0^T\|u(t)\|_{H^2}^2\,dt\right)^{1/2}
 =\frac{A_T}{\sqrt{8\pi}}.
\]

For the gradient, the spatial \(H^2\hookrightarrow W^{1,3}\) estimate gives
\[
 \|\nabla u(t)\|_{L^3}
 \le\frac{\sqrt3\,7^{1/6}}{2^{5/3}\pi^{1/6}}\|u(t)\|_{H^2}.
\]
Integrating its square gives the Beir\~ao da Veiga estimate~\cite{BeiraoDaVeiga1995}:
\[
 \left(\int_0^T\|\nabla u(t)\|_{L^3}^2\,dt\right)^{1/2}
 \le\frac{\sqrt3\,7^{1/6}}{2^{5/3}\pi^{1/6}}
       \left(\int_0^T\|u(t)\|_{H^2}^2\,dt\right)^{1/2}
 =\frac{\sqrt3\,7^{1/6}}{2^{5/3}\pi^{1/6}}A_T.
\]
\phantomsection\label{u:guide:how-proof-ends}
The memberships measured by \(\mathfrak R_{0,1}\) give all three estimates.
Choosing higher rectangles extends the calculation to higher derivatives.

\endgroup

### author:f-how:f75f1c7c33b0

\section{From a Prescribed Force to Terminal Continuation}
\label{f:sec:forced-argument-overview}
\label{f:guide:how-proof-works}

Fix one divergence-free datum \(u_0\), one viscosity \(\nu>0\), and one
prescribed smooth force \(f\).  Let \((u,p)\) be the corresponding maximal
classical solution on \([0,T_*)\).  The proof never changes this history.
Every derivative, finite rectangle, endpoint value, and restarted solution
below belongs to the trajectory generated by the original triple
\((u_0,\nu,f)\).

The force enters the proof in two linked forms.  Its solenoidal part
\(g=\Pp f\) acts in the projected velocity equation, while its gradient part
is fixed by the normalized pressure:
\[
 \partial_tu+\Pp\nabla\!\cdot(u\otimes u)-\nu\Delta u=g,
 \qquad
 p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\!\cdot f.
\]
The source enters the velocity and pressure at the initial
construction and remains present in every differentiated row.

The Navier--Stokes scaling acts on the complete forced equation.  If
\((u,p,f)\) is a solution, then
\[
 u_\lambda(t,x)=\lambda u(\lambda^2t,\lambda x),\qquad
 p_\lambda(t,x)=\lambda^2p(\lambda^2t,\lambda x),\qquad
 f_\lambda(t,x)=\lambda^3f(\lambda^2t,\lambda x)
\]
solves the equation with transformed datum
\(u_{0,\lambda}(x)=\lambda u_0(\lambda x)\).  For every real \(s\),
\[
 \|\Lambda^su_\lambda(t)\|_2^2
 =\lambda^{2s-1}\|\Lambda^su(\lambda^2t)\|_2^2.
\]
The invariant spatial height is \(s=\tfrac12\).  This identifies
the critical row of one common forced differential structure; it does not
replace the prescribed history by its rescaling.

Write
\[
 V_n=\partial_t^nu,\qquad Q_n=\partial_t^np,
 \qquad F_n=\partial_t^nf,
\]
and let
\[
 B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]
Repeated differentiation of the original forced equation gives the complete
temporal row
\begin{align}
 V_{n+1}+B_n+\nabla Q_n&=\nu\Delta V_n+F_n,
 \label{f:eq:guide-forced-row}\\
 -\Delta Q_n
 &=\partial_i\partial_j\sum_{a=0}^n\binom na
      (V_a)_i(V_{n-a})_j-\nabla\!\cdot F_n.
 \label{f:eq:guide-forced-pressure}
\end{align}
Spatial differentiation distributes through both velocity factors and through
the prescribed source.  The fields
\[
 \partial_x^\alpha V_n,\qquad
 \partial_x^\alpha Q_n,\qquad
 \partial_x^\alpha F_n
\]
form the pressure-complete forced mixed jet.  They are coordinates of one
solution, rather than a collection of independently chosen functions.

\phantomsection\label{f:guide:intersection}
At a proposed finite maximal time \(T_*\), the finite object through temporal
depth \(N\) and spatial height \(M\) is the record
\[
 \cR_{N,M}[u_0,\nu,f;T_*]
 :=\bigl((V_n)_{n=0}^{N},(V_{n+1})_{n=0}^{N};
         (Q_n)_{n=0}^{N};(F_n)_{n=0}^{N}\bigr).
\]
Its scalar velocity norm on a strict horizon is
\[
 \mathfrak R_{N,M}(T)
 :=\sum_{n=0}^{N}\left(
 \|V_n\|_{L^2(0,T;H^{M+1})}^2
 +\|V_{n+1}\|_{L^2(0,T;H^{M-1})}^2\right).
\]
The datum construction places the record on \((0,T_*)\) and gives
\[
 \sup_{0<T<T_*}\mathfrak R_{N,M}(T)<\infty
 \qquad(N,M<\infty).
 \tag{A}
\]
Deleting outer temporal or spatial coordinates recovers the corresponding
smaller record.  As \(N\) and \(M\) range over all finite values, these blocks
exhaust every mixed derivative of the one forced history.  Restriction in time
gives the strict-horizon blocks, while monotone exhaustion identifies each
finite norm on \((0,T_*)\).

Letting the temporal and spatial indices range over all finite values gives
\[
 u\in\bigcap_{r,m\ge0}H^r(I;H^m_\sigma(\R^3)),
 \qquad I=(0,T_*).
 \tag{A$'$}
\]
Independently, the completed critical heights and the viscous diagonal relation
are derived from one common mixed jet.  They retain transport, pressure,
viscosity, and force work while exposing every finite spatial height.
Evaluating those identities on the datum-generated blocks and intersecting the
heights gives the complete spatial Sobolev column; the forced recurrence then
recovers one common intersection (A$'$).
There is no second family of fields: both constructions use one common
datum-generated block \(\cR_{N,M}[u_0,\nu,f;T_*]\) at every finite pair
\((N,M)\).  The independently derived critical-height relationship rectangle
is the finite system of coupled identities evaluated on those same
coordinates.

The viscous relation is visible already in one row.  Project
\eqref{f:eq:guide-forced-row}, apply \(\Lambda^s\), and use
\(\Delta=-\Lambda^2\):
\[
 \Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n
 =\Lambda^s\Pp(F_n-B_n).
 \tag{B}
\]
Squaring this equality does not separate the nonlinearity from the fluid.
The cross term is the derivative of the adjacent spatial norm, so
\begin{align}
 &\|\Lambda^sV_{n+1}\|_2^2
 +\nu^2\|\Lambda^{s+2}V_n\|_2^2
 +\nu\frac{d}{dt}\|\Lambda^{s+1}V_n\|_2^2
 \notag\\
 &\hspace{4cm}
 =\|\Lambda^s\Pp(F_n-B_n)\|_2^2.
 \tag{C}
\end{align}
The complementary projection gives the pressure allocation
\[
 \nabla Q_n=(I-\Pp)(F_n-B_n),
\]
and orthogonality recombines the complete source:
\[
 \|\Lambda^s\Pp(F_n-B_n)\|_2^2
 +\|\Lambda^s\nabla Q_n\|_2^2
 =\|\Lambda^s(F_n-B_n)\|_2^2.
 \tag{D}
\]
Thus the rectangle keeps viscosity, transport, pressure, and forcing in the
same estimate.

The critical-height tower is another reading of this viscous tether.  For
\[
 E_{r,s}=\frac12\|\Lambda^sV_r\|_2^2,
\]
the complete row is
\[
 \partial_tE_{r,s}+2\nu E_{r,s+1}
 =\mathcal P_{r,s}+\mathcal W_{r,s},
 \qquad
 \mathcal W_{r,s}
 =\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
 \tag{E}
\]
At \(r=0\) and \(s=\tfrac12\), differentiating (E) repeatedly exposes
\(E_{3/2},E_{5/2},\ldots\), while the differentiated transport, pressure,
and force work remains in one common completed row.  The tower then
describes the geometry among mixed-jet coordinates; it does not replace the
velocity field by a scalar height.
The first two spatial heights are, explicitly,
\begin{align*}
 H'+\nu\norm{\Lambda^{3/2}u}_2^2
 &=\mathcal P_{1/2}+\mathcal W_{1/2},\\
 E_{3/2}'+\nu\norm{\Lambda^{5/2}u}_2^2
 &=\mathcal P_{3/2}+\mathcal W_{3/2},
\end{align*}
and hence
\[
 H''=4\nu^2E_{5/2}
 -2\nu(\mathcal P_{3/2}+\mathcal W_{3/2})
 +\partial_t(\mathcal P_{1/2}+\mathcal W_{1/2}).
\]
These are the actual \(s=\tfrac12\) and \(s=\tfrac32\) rows.  Their
transport, pressure, viscosity, and force coordinates remain joined.

\phantomsection\label{f:guide:mixed-jet-map}
For finite \(N,M\), use the corresponding datum-generated block
\(\cR_{N,M}[u_0,\nu,f;T_*]\).
At the spatial orders required by (B)--(E), its restriction to a strict
horizon satisfies
\[
 \mathfrak R_{N,M}(T)
 \le \mathfrak R_{N,M}^*
 :=\sup_{0<S<T_*}\mathfrak R_{N,M}(S)<\infty.
 \tag{F}
\]
Restriction compatibility identifies every common row in two such
rectangles, while monotone exhaustion gives
\[
 \lim_{T\uparrow T_*}\mathfrak R_{N,M}(T)
 =\mathfrak R_{N,M}^*<\infty.
 \tag{G}
\]
The bound may depend on the selected rectangle.  No estimate uniform in the
infinitely many indices is used.  The bounds in (G) are scalar norms of the
finite blocks whose mixed-index exhaustion gives (A$'$).  The
independently derived identities in (E), evaluated on those same coordinates,
give the completed heights.  Exhausting their spatial heights and applying the
Fourier Sobolev split gives the spatial column, from which
\eqref{f:eq:guide-forced-row}--\eqref{f:eq:guide-forced-pressure} recover
(A$'$) again.  The positive-sign square (C), together with (D), relates the
adjacent temporal, viscous, and pressure faces.  Sobolev
multiplication is applied within that same finite rectangle to its binomial
transport face \(B_n\); it does not replace the nonlinear term or introduce a
second premise.

The mixed-index exhaustion and the critical-height relationships use one common
finite blocks.  The former records every mixed derivative; the
latter recover every spatial row and return through the forced recurrence.
Pairing, squaring, and integrating (B)--(E) inside any selected rectangle gives
its complete-equation estimates, with the nonlinearity retained as one face of
that forced rectangle.

\phantomsection\label{f:guide:finite-estimates}
The datum rectangles now carry one common complete equation to the terminal
step.  Their zeroth temporal faces give, for every finite \(m\),
\[
 u\in L^2(0,T_*;H^{m+2}).
\]
Sobolev multiplication and the prescribed force then give
\begin{align*}
 \|u_t\|_{L^1(0,T_*;H^m)}
 &\le \nu\sqrt{T_*}\,\|u\|_{L^2(0,T_*;H^{m+2})}\\
 &\quad+C_m\|u\|_{L^2(0,T_*;H^{m+2})}^2
 +\|g\|_{L^1(0,T_*;H^m)}<\infty.
\end{align*}
Hence
\[
 u\in W^{1,1}(0,T_*;H^m)
 \hookrightarrow C([0,T_*];H^m)
 \qquad(m\ge0).
\]
All these traces come from one common velocity and determine one
terminal state
\[
 u_*=u(T_*)\in\bigcap_{m\ge0}H^m_\sigma(\R^3).
\]

Passing \eqref{f:eq:guide-forced-row}--\eqref{f:eq:guide-forced-pressure} to
\(T_*\) determines every temporal and pressure coordinate from \(u_*\) and
the values \(F_n(T_*)\).  Local theory from \(u_*\), driven by one common
prescribed force \(f(t)\), continues one common history past \(T_*\).
This contradicts maximality, so \(T_*=\infty\).

\phantomsection\label{f:guide:how-proof-ends}

## Source bodies at the native construction calls

These are the original mathematical source passages, including their theorem statements and proof bodies. Reading vocabulary is applied to this text edition; exact bytes and hashes remain in the executable.

### Unforced native theorem and complete proof body

Source: revision:u-setting:afb54c1cdd30:454-623

```latex
\begin{theorem}[Datum-generated whole-terminal finite rectangles]
\label{u:thm:datum-finite-blocks}
Let \(\nu>0\), \(u_0\in\HsSigma(\R^3)\), and let
\((T_*,u,p)\) be the maximal pressure-complete classical history generated
by \((u_0,\nu)\).  Assume, toward contradiction, that \(T_*<\infty\), and put
\(I=(0,T_*)\).  For finite \(N,M\), the selected pressure-complete record is
\begin{equation}
 \cR_{N,M}[u_0;T_*]
 :=\left((V_n)_{n=0}^{N},(V_{n+1})_{n=0}^{N};(Q_n)_{n=0}^{N}\right),
 \label{u:eq:independent-datum-rectangle-record}
\end{equation}
and the datum-generated construction produces, for \(0\le n\le N\),
\begin{equation}
 V_n\in L^2(I;H^{M+1}),\qquad
 V_{n+1}\in L^2(I;H^{M-1}).
 \label{u:eq:independent-adjacent-finite-rows}
\end{equation}
Define its velocity norm on \(I\) by
\begin{equation}
 \mathfrak R_{N,M}(u;T_*)
 :=\sum_{n=0}^{N}\left(
 \norm{V_n}_{L^2(I;H^{M+1})}^2
 +\norm{V_{n+1}}_{L^2(I;H^{M-1})}^2
 \right).
 \label{u:eq:independent-datum-block-output}
\end{equation}
The theorem's whole-terminal output is
\begin{equation}
 \mathfrak R_{N,M}(u;T_*)<\infty
 \qquad(N,M<\infty).
 \label{u:eq:datum-whole-terminal-producer}
\end{equation}
Taking \(N\ge n\) and \(M=m\) gives the corresponding statement for every
finite pair \((n,m)\).
Every row is the corresponding distributional derivative of the single
maximal history.  For every finite \(n,m,\alpha\),
\[
 J_{n,\alpha}\in L^2(I;H^m),
 \qquad \Pi_{n,\alpha}\in L^1(I;H^m),
\]
and enlargement of a finite rectangle preserves every common velocity and
pressure coordinate.
\end{theorem}

\begin{proof}[Datum construction and finite-coordinate realization]
Put \(I=(0,T_*)\), and fix finite \(N,M\).  The datum first generates the
complete initial jet
\[
 A_0=u_0,
 \qquad
 P_n=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j,
\]
\[
 A_{n+1}=\nu\Delta A_n
 -\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}-\nabla P_n.
\]
At step \(n\), the right-hand side uses only the already determined rows
\(A_0,\ldots,A_n\).  Lemma~\ref{u:lem:formal-initial-jet} thus places
every required \(A_n\) and \(P_n\) in every finite spatial Sobolev order.
Spatial differentiation supplies
\[
 J_{n,\alpha}(0)=\partial_x^\alpha A_n,
 \qquad
 \Pi_{n,\alpha}(0)=\partial_x^\alpha P_n.
\]

The selected equations retain their complete finite dependency cover.  For
an equation indexed by \((n,\alpha)\), retain the adjacent temporal coordinate
\(J_{n+1,\alpha}\), the viscous coordinates
\(J_{n,\alpha+2e_\ell}\), and the pressure coordinates
\(\Pi_{n,\alpha+e_\ell}\), for \(1\le\ell\le3\).  For every \(a\le n\),
\(\beta\le\alpha\), and velocity component \(i\), retain both transport
factors
\[
 J_{a,\beta,i},
 \qquad
 J_{n-a,\alpha-\beta+e_i}.
\]
Here \(e_i\) is the \(i\)-th spatial unit multi-index.  Set
\(\Gamma_\alpha:=\{\alpha\}\cup\{\alpha+e_\ell:1\le\ell\le3\}\).
For every \(\gamma\in\Gamma_\alpha\), every \(a\le n\), and every
\(\beta\le\gamma\), also retain the two pressure-product factors
\(J_{a,\beta,i}\) and \(J_{n-a,\gamma-\beta,j}\).  Each retained normalized
pressure coordinate then carries its full product formula
\[
 \Pi_{n,\gamma}
 =R_iR_j\sum_{a=0}^n\sum_{\beta\le\gamma}
 \binom na\binom{\gamma}{\beta}
 J_{a,\beta,i}J_{n-a,\gamma-\beta,j}
 \qquad(\gamma\in\Gamma_\alpha).
\]
Thus the retained equation is
\begin{equation}
 \begin{aligned}
 \mathscr E_{n,\alpha}(J,\Pi):={}&J_{n+1,\alpha}
 +\sum_{a=0}^{n}\sum_{\beta\le\alpha}
 \binom na\binom{\alpha}{\beta}
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}\\
 &+\nabla\Pi_{n,\alpha}-\nu\Delta J_{n,\alpha}=0.
 \end{aligned}
 \label{u:eq:finite-equation-graph}
\end{equation}
There are finitely many retained coordinates for the fixed selected equations.
The dependency cover is not an autonomous truncated fluid: every entry is the
corresponding derivative of the original maximal history.  Applying \(\Pp\)
reads the solenoidal evolution, and applying \(I-\Pp\) reads the normalized
pressure equation.  The initial face, every nonlinear factor, the viscous
coordinates, and the pressure coordinates are thus present together.

The datum-generated whole-terminal jet already contains its compatible
Sobolev coordinates on \(I\). Selecting this finite record projects that
constructed jet onto the rows \(V_n,V_{n+1},Q_n\), while retaining the
original time interval. Its adjacent velocity coordinates read
\[
 V_n\in L^2(I;H^{M+1}),
 \qquad
 V_{n+1}\in L^2(I;H^{M-1}).
\]
For every \(n=0,\ldots,N\), these are components of the constructed
whole-terminal jet, as recorded in
\eqref{u:eq:independent-adjacent-finite-rows}. The finite selection preserves
their memberships and the identity \(\partial_tV_n=V_{n+1}\).
Equation~\eqref{u:eq:finite-equation-graph} retains their complete
transport, pressure, and viscous coupling.

For this fixed finite pair, form the sum of the defining squared norms:
\begin{equation}
 C_{N,M}[u_0,\nu;I]
 :=\sum_{n=0}^{N}\left(
  \norm{V_n}_{L^2(I;H^{M+1})}^2
  +\norm{V_{n+1}}_{L^2(I;H^{M-1})}^2
 \right)<\infty.
 \label{u:eq:finite-graph-output}
\end{equation}
Each displayed membership asserts finiteness of its defining squared norm,
and the sum has only finitely many terms.
The whole-terminal norm is
\begin{equation}
 \mathfrak R_{N,M}(u;T_*)
 =C_{N,M}[u_0,\nu;I]<\infty.
 \label{u:eq:finite-graph-uniform-cutoff-output}
\end{equation}
The constant belongs to the selected finite pair; no constant common to the
infinite tower is asserted. This calculation writes the constructed jet's
whole-terminal memberships as the finite norm in
\eqref{u:eq:datum-whole-terminal-producer}. Its finiteness is retained under
the coordinate projection on \(I\).

Taking \(N\ge n\) and \(M=m\) gives the two memberships in
\eqref{u:eq:independent-adjacent-finite-rows}.  Taking
\(M\ge m+|\alpha|\) and differentiating spatially gives
\(J_{n,\alpha}\in L^2(I;H^m)\).  The pressure formula and
Theorem~\ref{u:thm:formal-finite-row-pressure} give
\[
 \norm{\Pi_{n,\alpha}}_{L^1(I;H^m)}
 \le C_{n,m,\alpha}
 \sum_{a=0}^{n}
 \norm{V_a}_{L^2(I;H^{m+|\alpha|+1})}
 \norm{V_{n-a}}_{L^2(I;H^{m+|\alpha|+1})}<\infty.
\]

When \(N'\ge N\) and \(M'\ge M\), both rectangles begin with one common initial
jet.  The temporal recurrence, spatial Leibniz rule, and normalized pressure
formula give one common expressions on every common coordinate; uniqueness
identifies their realizations.  Deleting the outer coordinates thus
recovers the smaller rectangle.  Time restriction preserves those same
coordinates, while \eqref{u:eq:finite-graph-output} and
\eqref{u:eq:finite-graph-uniform-cutoff-output} identify their
whole-terminal norms.
\end{proof}
```

### Forced native theorem and complete proof body

Source: today:f-setting:487-673

```latex
\begin{theorem}[Datum-generated compatible forced finite rectangles]
\label{f:thm:datum-finite-blocks}
Let \(\nu>0\), \(u_0\in\HsSigma(\R^3)\), and
\(f\in C^\infty([0,\infty);\mathcal S(\R^3;\R^3))\). Let
\((T_*,u,p)\) be the maximal pressure-complete classical history generated
by the single forced datum \((u_0,\nu,f)\). Assume, toward contradiction, that
\(T_*<\infty\), and put \(I=(0,T_*)\).  For finite \(N,M\), the corresponding
pressure-complete record is
\begin{equation}
 \cR_{N,M}[u_0,\nu,f;T_*]
 :=\left((V_n)_{n=0}^{N},(V_{n+1})_{n=0}^{N};
 (Q_n)_{n=0}^{N};(F_n)_{n=0}^{N}\right).
 \label{f:eq:forced-datum-rectangle-record}
\end{equation}
The forced construction produces, for \(0\le n\le N\),
\begin{equation}
 V_n\in L^2(I;H^{M+1}),\qquad
 V_{n+1}\in L^2(I;H^{M-1}).
 \label{f:eq:independent-adjacent-finite-rows}
\end{equation}
Define its velocity norm on \(I\) by
\begin{equation}
 \mathfrak R_{N,M}(u;T_*)
 :=\sum_{n=0}^{N}\left(
 \norm{V_n}_{L^2(I;H^{M+1})}^2
 +\norm{V_{n+1}}_{L^2(I;H^{M-1})}^2
 \right).
 \label{f:eq:forced-restricted-block-norm}
\end{equation}
The forced whole-terminal output is
\begin{equation}
 \mathfrak R_{N,M}(u;T_*)<\infty
 \qquad(N,M<\infty).
 \label{f:eq:forced-datum-block-output}
\end{equation}
Taking \(N\ge n\) and \(M=m\) gives the corresponding statement for every
finite pair \((n,m)\).
For \(N'\le N\) and \(M'\le M\), the larger block restricts to one common
velocity, pressure, and force coordinates as the smaller block:
\begin{equation}
 \left.\cR_{N,M}[u_0,\nu,f;T_*]\right|_{(N',M')}
 =\cR_{N',M'}[u_0,\nu,f;T_*].
 \label{f:eq:independent-intersection-record}
\end{equation}
Here restriction deletes the outer temporal rows and reads every retained
distribution in the lower Sobolev order.  The mixed coordinates are
\[
 J_{n,\alpha}=\partial_x^\alpha\partial_t^nu,
 \qquad
 \Pi_{n,\alpha}=\partial_x^\alpha\partial_t^np,
 \qquad
 F_{n,\alpha}=\partial_x^\alpha\partial_t^nf.
\]
For every finite \((n,m,\alpha)\),
\[
 J_{n,\alpha}\in L^2(I;H^m),\qquad
 \Pi_{n,\alpha}\in L^1(I;H^m),\qquad
 F_{n,\alpha}\in C([0,T_*];H^m).
\]
\end{theorem}

\begin{proof}[Datum construction on the complete forced graph]
Put \(I=(0,T_*)\), and fix finite \(N,M\).  The prescribed data first generate
the complete initial jet:
\[
 \begin{aligned}
 A_0&=u_0,\\
 P_n&=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j
      -(-\Delta)^{-1}\nabla\cdot F_n(0),\\
 A_{n+1}&=\nu\Delta A_n
 -\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}
 -\nabla P_n+F_n(0).
 \end{aligned}
\]
At step \(n\), this recurrence determines \(A_{n+1}\) from the preceding
velocity rows and the prescribed force row \(F_n(0)\).
Lemma~\ref{f:lem:formal-initial-jet} places every required initial row in every
finite spatial Sobolev order, and spatial differentiation supplies the initial
mixed coordinates.

For an equation indexed by \((n,\alpha)\), retain the adjacent temporal
coordinate \(J_{n+1,\alpha}\), the viscous coordinates
\(J_{n,\alpha+2e_\ell}\), and the pressure coordinates
\(\Pi_{n,\alpha+e_\ell}\), for \(1\le\ell\le3\), together with the direct
source coordinate \(F_{n,\alpha}\).  For every \(a\le n\),
\(\beta\le\alpha\), and velocity component \(i\), retain both transport
factors
\[
 J_{a,\beta,i},
 \qquad
 J_{n-a,\alpha-\beta+e_i}.
\]
Here \(e_i\) is the \(i\)-th spatial unit multi-index.  Set
\(\Gamma_\alpha:=\{\alpha\}\cup\{\alpha+e_\ell:1\le\ell\le3\}\).
For every \(\gamma\in\Gamma_\alpha\), every \(a\le n\), and every
\(\beta\le\gamma\), also retain the pressure-product factors
\(J_{a,\beta,i}\), \(J_{n-a,\gamma-\beta,j}\), and the pressure-source
coordinate \(F_{n,\gamma}\).  Each retained normalized pressure coordinate
then carries both its full velocity product and its prescribed source
potential:
\[
 \Pi_{n,\gamma}
 =R_iR_j\sum_{a=0}^n\sum_{\beta\le\gamma}
 \binom na\binom{\gamma}{\beta}
 J_{a,\beta,i}J_{n-a,\gamma-\beta,j}
 -(-\Delta)^{-1}\nabla\cdot F_{n,\gamma}
 \qquad(\gamma\in\Gamma_\alpha).
\]
The retained equation is thus
\begin{equation}
 \mathscr E_{n,\alpha}(J,\Pi;F)
 :=J_{n+1,\alpha}
 +\sum_{a=0}^{n}\sum_{\beta\le\alpha}
  \binom na\binom{\alpha}{\beta}
  (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha}
 -\nu\Delta J_{n,\alpha}-F_{n,\alpha}=0.
 \label{f:eq:forced-finite-equation-graph}
\end{equation}
There are finitely many retained coordinates for the fixed selected equations.
This dependency cover is not a second or truncated flow: every velocity and
pressure entry is a derivative of the one prescribed forced history, and
every force entry is a derivative of the one prescribed source.  Applying
\(\Pp\) reads the solenoidal evolution; applying \(I-\Pp\) reads the
normalized pressure equation.

The prescribed source adds one known affine coordinate to each coupled row.
At the block's velocity-row order, for every \(0\le n\le N\), Fourier
Cauchy--Schwarz and Young's inequality give the source payment
\begin{equation}
 2\left|\langle F_n,V_n\rangle_{H^M}\right|
 \le \nu\norm{V_n}_{H^{M+1}}^2
     +\nu^{-1}\norm{F_n}_{H^{M-1}}^2.
 \label{f:eq:forced-finite-row-source-payment}
\end{equation}
The first right-hand term is absorbed by the viscous
\(H^{M+1}\)-dissipation in one common row.  The second is finite on
\([0,T_*]\) because \(F_n\) is smooth in time with Schwartz spatial values.
For each retained mixed pressure index \(\gamma\in\Gamma_\alpha\), the
gradient component has the finite budget
\(\mathfrak F^{\rm p}_{n,\gamma,M}(I)\) from
\eqref{f:eq:force-pressure-budget}.  Thus the affine force and every
force-induced pressure coordinate are paid inside this finite forced record.

The initial face, complete dependency cover, two projections, and prescribed
affine source now form the input to the forced datum construction.
Applied to this one graph and this one history, it supplies, for every
\(n=0,\ldots,N\),
\[
 V_n\in L^2(I;H^{M+1}),
 \qquad
 V_{n+1}\in L^2(I;H^{M-1}).
\]
These are the memberships in
\eqref{f:eq:independent-adjacent-finite-rows}.

For this fixed finite pair, form the sum of their defining squared norms:
\[
 C^f_{N,M}[u_0,\nu,f;I]
 :=\sum_{n=0}^{N}\left(
  \norm{V_n}_{L^2(I;H^{M+1})}^2
  +\norm{V_{n+1}}_{L^2(I;H^{M-1})}^2
 \right)<\infty.
\]
These norms give
\begin{equation}
 \mathfrak R_{N,M}(u;T_*)
 =C^f_{N,M}[u_0,\nu,f;I]<\infty.
 \label{f:eq:forced-uniform-cutoff-output}
\end{equation}
This proves \eqref{f:eq:forced-datum-block-output}. The record also retains the pressure and
prescribed-force coordinates constrained by
\eqref{f:eq:forced-finite-equation-graph}.

Fix \(n,m,\alpha\).  Choosing \(N\ge n\) and
\(M\ge m+|\alpha|\) gives the stated
velocity and mixed-velocity memberships.  The normalized Riesz formula and
Theorem~\ref{f:thm:formal-finite-row-pressure} give the pressure membership,
including its prescribed source potential, while the prescribed force class
gives \(F_{n,\alpha}\in C([0,T_*];H^m)\).  The temporal recurrence, spatial
Leibniz rule, pressure normalization, and force jet commute with deletion of
the outer indices.  Overlap uniqueness identifies every retained coordinate
with the corresponding derivative of the original maximal history.  Hence
each enlarged rectangle restricts to the smaller one, so the finite records
satisfy the literal restriction identity
\eqref{f:eq:independent-intersection-record} on \(I\).
\end{proof}
```

### Unforced finite-block invocation, height exhaustion and spatial recovery

Source: u-relations:207-392

```latex
\begin{theorem}[Compatible finite rectangle norms]
\label{u:thm:datum-rectangles}

Let \(\nu>0\), \(u_0\in\HsSigma(\R^3)\), and let
\((T_*,u,p)\) be the maximal pressure-complete classical history generated
by \((u_0,\nu)\).  If \(T_*<\infty\), then, for every
\(N,M\in\Nzero\),
\begin{equation}
 \mathfrak R_{N,M}^*[u_0,\nu,T_*]
 :=\sup_{0<T<T_*}\mathfrak R_{N,M}(u;T)
 <\infty.
 \label{u:eq:datum-rectangle-bound}
\end{equation}
This assertion is coordinatewise in \((N,M)\); no bound uniform in all
derivative orders is asserted.  The quantity \(\mathfrak R_{N,M}^*\) is the
exact supremum for this history; for general data the theorem does not replace
it by a formula involving only finitely many norms of \(u_0\).
Equivalently, for every \(n,m\in\Nzero\),
\begin{equation}
 V_n\in L^2(0,T_*;H^{m+1}),
 \qquad
 V_{n+1}\in L^2(0,T_*;H^{m-1}).
 \label{u:eq:datum-adjacent-rows}
\end{equation}
Every coordinate in \eqref{u:eq:datum-adjacent-rows} is the corresponding
distributional derivative of the single maximal history.
\end{theorem}


\begin{proof}
Apply the compatible finite-rectangle statement of
Theorem~\ref{u:thm:datum-finite-blocks} on \(I=(0,T_*)\).  For fixed
\(N,M\), \eqref{u:eq:independent-adjacent-finite-rows} gives
\[
 V_n\in L^2(I;H^{M+1}),\qquad
 V_{n+1}\in L^2(I;H^{M+1})\hookrightarrow L^2(I;H^{M-1}),
 \qquad 0\le n\le N.
\]
Thus the finitely many selected coordinates have the finite total
\[
 C_{N,M}:=\sum_{n=0}^N
 \left(\norm{V_n}_{L^2(I;H^{M+1})}^2
       +\norm{V_{n+1}}_{L^2(I;H^{M-1})}^2\right)<\infty.
\]
Restriction decreases each norm, so
\[
 \mathfrak R_{N,M}(u;T)\le C_{N,M}
 \qquad(0<T<T_*).
\]
Taking the supremum proves \eqref{u:eq:datum-rectangle-bound}.
The number \(C_{N,M}\) is fixed before the cutoff \(T\) is chosen.
Its finiteness is coordinatewise and does not require a bound common to all
derivative orders.
\end{proof}

The displayed sum is the velocity norm of \(\cR_{N,M}\).  The next proposition
proves its equivalence with the adjacent-row memberships and identifies its
whole-interval value by monotone convergence.

\Needspace{14\baselineskip}
\begin{proposition}[Norm equivalence and full-interval realization]
\label{u:prop:datum-terminal-realization}

For the fixed maximal history, the family of bounds
\eqref{u:eq:datum-rectangle-bound} is equivalent to the adjacent-row statement
\eqref{u:eq:datum-adjacent-rows}.  Whenever either formulation holds, for every
\(N,M\in\Nzero\),
\begin{equation}
 \sum_{n=0}^{N}\left(
 \norm{V_n}_{L^2(0,T_*;H^{M+1})}^2
 +\norm{V_{n+1}}_{L^2(0,T_*;H^{M-1})}^2
 \right)
 =\lim_{T\uparrow T_*}\mathfrak R_{N,M}(u;T)
 =\mathfrak R_{N,M}^*[u_0,\nu,T_*].
 \label{u:eq:datum-terminal-monotone-realization}
\end{equation}
Every row is the corresponding distributional derivative of the single
pressure-normalized maximal history.
\end{proposition}

\begin{proof}
Assume first \eqref{u:eq:datum-adjacent-rows}.  For fixed \(N,M\), set
\[
 C_{N,M}:=
 \sum_{n=0}^{N}\left(
  \norm{V_n}_{L^2(0,T_*;H^{M+1})}^2
  +\norm{V_{n+1}}_{L^2(0,T_*;H^{M-1})}^2
 \right).
\]
The sum is finite because it contains finitely many instances of
\eqref{u:eq:datum-adjacent-rows}.  Restriction from \((0,T_*)\) to \((0,T)\)
gives
\[
 \mathfrak R_{N,M}(u;T)\le C_{N,M}
 \qquad(0<T<T_*),
\]
and hence \eqref{u:eq:datum-rectangle-bound}.

Conversely, assume \eqref{u:eq:datum-rectangle-bound}.  Every term in
\(\mathfrak R_{N,M}(u;T)\) is the integral of a nonnegative function.
Monotone exhaustion of \((0,T_*)\) gives
\eqref{u:eq:datum-terminal-monotone-realization}.  Taking \(N=n\) and \(M=m\)
yields \eqref{u:eq:datum-adjacent-rows} for each finite \((n,m)\).
Proposition~\ref{u:prop:formal-mixed-recurrences} identifies every entry with
the corresponding distributional derivative of the fixed pressure-normalized
history.
\end{proof}

\begin{corollary}[Critical-height exhaustion and Sobolev recovery]
\label{u:cor:datum-critical-height-completion}
For the datum-generated compatible finite rectangles of
Theorem~\ref{u:thm:datum-finite-blocks}, every completed critical coordinate
belongs to \(L^1(0,T_*)\), and
\begin{equation}
 \mathscr H_k[u_0,\nu,T_*]
 :=\norm{R_k}_{L^1(0,T_*)}
 =\frac12\norm{\Lambda^{k+1/2}u}_{L^2(0,T_*;L^2)}^2
 \le\frac12\mathfrak R_{0,k}^*[u_0,\nu,T_*]
 \qquad(k\in\Nzero).
 \label{u:eq:datum-completed-height-bound}
\end{equation}
For every \(m\in\Nzero\), the completed heights recover the spatial Sobolev
row through
\begin{equation}
 \norm u_{L^2(0,T_*;H^m)}^2
 \le
 2^m\left(
  T_*\norm{u_0}_2^2+2\norm{R_m}_{L^1(0,T_*)}
 \right)
 \le
 2^m\left(
  T_*\norm{u_0}_2^2+\mathfrak R_{0,m}^*[u_0,\nu,T_*]
 \right).
 \label{u:eq:datum-height-to-spatial-column}
\end{equation}
Thus the compatible critical-height exhaustion gives
\begin{equation}
 (R_k)_{k\in\Nzero}\in\prod_{k\in\Nzero}L^1(0,T_*),
 \qquad
 u\in\bigcap_{m\in\Nzero}L^2(0,T_*;H^m(\R^3)).
 \label{u:eq:datum-complete-height-and-spatial-columns}
\end{equation}
\end{corollary}

\begin{samepage}
\begin{proof}
Take the \(n=0,m=k\) finite rectangle in
\eqref{u:eq:independent-adjacent-finite-rows}; equivalently, take \(N=0\) and
\(M=k\) in \eqref{u:eq:datum-terminal-monotone-realization}.  Since
\(\abs\xi^{2k+1}\le\langle\xi\rangle^{2k+2}\),
\begin{align*}
 2\norm{R_k}_{L^1(0,T_*)}
 &=\norm{\Lambda^{k+1/2}u}_{L^2(0,T_*;L^2)}^2\\
 &\le\norm u_{L^2(0,T_*;H^{k+1})}^2
 \le\mathfrak R_{0,k}^*[u_0,\nu,T_*],
\end{align*}
which proves \eqref{u:eq:datum-completed-height-bound}.  For
\(\abs\xi\le1\),
\(\langle\xi\rangle^{2m}\le2^m\); for \(\abs\xi>1\),
\(\langle\xi\rangle^{2m}\le2^m\abs\xi^{2m+1}\).  Hence
\[
 \norm f_{H^m}^2
 \le2^m\left(\norm f_2^2+
 \norm{\Lambda^{m+1/2}f}_2^2\right).
\]
Integrating this inequality, using
\eqref{u:eq:energy-Linf} and
\eqref{u:eq:datum-completed-height-bound}, proves
\eqref{u:eq:datum-height-to-spatial-column}.  Since \(k\) and \(m\) are
arbitrary finite indices, \eqref{u:eq:datum-complete-height-and-spatial-columns}
follows.
\end{proof}
\end{samepage}

The preceding calculation recovers one common all-orders membership through the
completed heights.  For each finite \(k\), the quantity
\(R_k=E_{k+1/2}\) is computed from the velocity row of a sufficiently high
rectangle.  Compatibility under enlargement identifies all such evaluations
with one common history.  Taking every finite \(k\) gives
\eqref{u:eq:datum-complete-height-and-spatial-columns}.  Applying
Proposition~\ref{u:prop:spatial-column-reconstruction} to that complete spatial
row produces all temporal and pressure rows and hence
\eqref{u:eq:independent-mixed-intersection}.  Conversely, the
mixed-index exhaustion contains the velocity rows from which every finite
\(R_k\) is computed.  Both descriptions thus use one common
datum-generated rectangle \(\cR_{N,M}\) at every finite pair \((N,M)\).
```

### Unforced return from the complete spatial interval column

Source: revision:u-setting:afb54c1cdd30:668-758

```latex
\begin{proposition}[Spatial-column reconstruction of the mixed intersection]
\label{u:prop:spatial-column-reconstruction}
Let \((T_*,u,p)\) be the pressure-normalized maximal history with
\(T_*<\infty\), put \(I=(0,T_*)\), and assume
\begin{equation}
 u\in\mathscr S_0(I):=\bigcap_{m\in\Nzero}L^2(I;H^m_\sigma(\R^3)).
 \label{u:eq:complete-spatial-row}
\end{equation}
Then \(V_n,Q_n\in C([0,T_*];H^m)\) for every finite \(n,m\), the adjacent
rows satisfy \eqref{u:eq:independent-adjacent-finite-rows}, and
\eqref{u:eq:independent-mixed-intersection} follows for this same history.
\end{proposition}

\begin{proof}
Fix \(m\). Lemmas~\ref{u:lem:sobolev-product} and \ref{u:lem:riesz-leray}
give
\[
 \begin{aligned}
 \norm{\Pp\nabla\!\cdot(u\otimes u)}_{L^1(I;H^m)}
 &\le C_m\norm u_{L^2(I;H^{m+2})}^2<\infty,\\
 \norm{\Delta u}_{L^1(I;H^m)}
 &\le\sqrt{T_*}\norm u_{L^2(I;H^{m+2})}<\infty.
 \end{aligned}
\]
Substitution into the unforced equation
\[
 u_t=\nu\Delta u-\Pp\nabla\!\cdot(u\otimes u)
\]
gives \(u_t\in L^1(I;H^m)\). Also \(u\in L^1(I;H^m)\), since
\(T_*<\infty\). The Banach-valued fundamental theorem gives
\[
 u\in W^{1,1}(I;H^m)\hookrightarrow C([0,T_*];H^m)
 \qquad(m\in\Nzero).
\]
Integrating the equation from the initial datum makes the trace bound explicit:
\[
 \sup_{0\le t\le T_*}\norm{u(t)}_{H^m}
 \le\norm{u_0}_{H^m}
 +\nu\sqrt{T_*}\norm u_{L^2(I;H^{m+2})}
 +C_m\norm u_{L^2(I;H^{m+2})}^2<\infty.
\]
These continuous representatives agree under Sobolev embedding because
they extend the original velocity. Their endpoint values define one
\(u_*\in H^\infty_\sigma\).

Now assume the temporal rows \(V_0,\ldots,V_n\) are continuous on
\([0,T_*]\) in every finite Sobolev space. This has just been proved
for \(V_0=u\). The pressure and velocity recurrences are
\[
 \begin{aligned}
 Q_n&=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j,\\
 V_{n+1}&=\nu\Delta V_n
 -\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}-\nabla Q_n.
 \end{aligned}
\]
Products, spatial differentiation, and the Riesz operators are continuous
between the required finite Sobolev spaces. Choosing sufficiently high
spatial orders in the available rows makes both right-hand sides continuous
in any prescribed \(H^m\). On \(I\), they equal the actual derivatives
\(Q_n=\partial_t^np\) and \(V_{n+1}=\partial_tV_n\) by
Proposition~\ref{u:prop:formal-mixed-recurrences}. The identity
\[
 V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau
 \qquad\text{in }H^m
\]
extends from interior times to \(0\le s\le t\le T_*\) by continuity.
It identifies the continuous extension with the temporal derivative,
including the one-sided derivatives at the endpoints. Induction gives
\(V_n,Q_n\in C([0,T_*];H^m)\) for every finite \(n,m\).
Finite \(T_*\) now gives the corresponding \(L^2(I;H^m)\) memberships.
In particular, selecting adjacent temporal coordinates gives
\[
 V_n\in L^2(I;H^{m+1}),\qquad
 V_{n+1}\in L^2(I;H^{m-1})
 \qquad(n,m\in\Nzero).
\]
For fixed finite \(r,m\), these actual weak derivatives give
\[
 \norm u_{H^r(I;H^m)}^2
 =\sum_{n=0}^r\norm{V_n}_{L^2(I;H^m)}^2<\infty.
\]
Thus the full-interval spatial component propagates through
the original equation to every finite mixed Sobolev membership. The argument
uses finitely many temporal orders at each step, with no bound required to
be uniform over \(r,m\). The identities in
Proposition~\ref{u:prop:formal-mixed-recurrences} give compatibility:
restricting the indices retains the corresponding derivatives of \(u,p\).
These are the finite coordinates used in
Theorem~\ref{u:thm:datum-rectangles} and the derivative-sum calculation of
Theorem~\ref{u:thm:compatible-inverse-intersection}.
\end{proof}
```

### Forced complete positive square and its nonlinear norm inputs

Source: f-relations:189-382

```latex
\begin{proposition}[Complete forced rectangle cell]
\label{f:prop:complete-forced-rectangle-cell}
For every temporal row \(n\in\Nzero\), every \(s\ge0\), and every strict
classical interval, the projected differentiated equation is
\begin{equation}
 \Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n
 =\Lambda^s\Pp(F_n-B_n),
 \qquad
 B_n:=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
 \label{f:eq:complete-forced-rectangle-cell}
\end{equation}
Its square is the viscous diagonal identity
\begin{equation}
 \norm{\Lambda^sV_{n+1}}_2^2
 +\nu^2\norm{\Lambda^{s+2}V_n}_2^2
 +\nu\frac{\dd}{\dd t}\norm{\Lambda^{s+1}V_n}_2^2
 =\norm{\Lambda^s\Pp(F_n-B_n)}_2^2.
 \label{f:eq:complete-forced-rectangle-square}
\end{equation}
Before projection, the gradient face is orthogonal to both divergence-free
faces.  Consequently,
\begin{align}
 &\norm{V_{n+1}}_{\dot H^s}^2
 +\nu^2\norm{\Delta V_n}_{\dot H^s}^2
 +\norm{\nabla Q_n}_{\dot H^s}^2
 +\nu\frac{\dd}{\dd t}\norm{\nabla V_n}_{\dot H^s}^2
 \notag\\
 &\hspace{4cm}=\norm{F_n-B_n}_{\dot H^s}^2.
 \label{f:eq:complete-forced-pressure-square}
\end{align}
Thus, for \(0<S<T_*\),
\begin{align}
 &\nu\norm{\Lambda^{s+1}V_n(S)}_2^2
 +\int_0^S\!\left(
   \norm{\Lambda^sV_{n+1}}_2^2
   +\nu^2\norm{\Lambda^{s+2}V_n}_2^2
   +\norm{\Lambda^s\nabla Q_n}_2^2\right)\dd t
 \notag\\
 &\qquad=
 \nu\norm{\Lambda^{s+1}V_n^0}_2^2
 +\int_0^S\norm{\Lambda^s(F_n-B_n)}_2^2\dd t.
 \label{f:eq:complete-forced-rectangle-integrated}
\end{align}
These identities retain the temporal, viscous, pressure, transport, and force
faces of the differentiated momentum row.
\end{proposition}

\begin{proof}
Apply \(\Pp\Lambda^s\) to the temporal row in
Proposition~\ref{f:prop:formal-mixed-recurrences}. Since
\(-\Delta=\Lambda^2\), moving the viscous term to the left gives
\eqref{f:eq:complete-forced-rectangle-cell} with a positive sign.
On squaring, the cross term is
\[
 2\nu\operatorname{Re}
 \ip{\Lambda^sV_{n+1}}{\Lambda^{s+2}V_n}_{L^2}
 =\nu\frac{\dd}{\dd t}\norm{\Lambda^{s+1}V_n}_2^2,
\]
which proves \eqref{f:eq:complete-forced-rectangle-square}.  The complementary
projection gives
\(\nabla Q_n=(I-\Pp)(F_n-B_n)\).  Orthogonality of \(\Pp\) and
\(I-\Pp\) proves \eqref{f:eq:complete-forced-pressure-square}; integration in
time gives \eqref{f:eq:complete-forced-rectangle-integrated}.
\end{proof}

\Needspace{14\baselineskip}
\begin{proposition}[Complete-equation estimates on finite rectangles]
\label{f:prop:datum-complete-rectangle-estimates}
Assume the hypotheses of Theorem~\ref{f:thm:datum-rectangles}.  The rectangle
identities estimate the complete equation inside each selected finite rectangle.
For every \(n\in\Nzero\) and \(s\ge0\), put
\begin{align}
 \mathfrak D_{n,s}(S):={}&
 \nu\norm{\Lambda^{s+1}V_n(S)}_2^2
 +\int_0^S\!\left(
   \norm{\Lambda^sV_{n+1}}_2^2
   +\nu^2\norm{\Lambda^{s+2}V_n}_2^2
   +\norm{\Lambda^s\nabla Q_n}_2^2\right)\dd t.
 \label{f:eq:datum-complete-row-record}
\end{align}
Then
\begin{equation}
 \sup_{0<S<T_*}\mathfrak D_{n,s}(S)
 \le
 \nu\norm{\Lambda^{s+1}V_n^0}_2^2
 +\norm{\Lambda^s(F_n-B_n)}_{L^2(0,T_*;L^2)}^2
 <\infty.
 \label{f:eq:datum-complete-row-projection-bound}
\end{equation}
Thus the selected rectangle bounds, on one common terminal interval, its
adjacent temporal face, viscous face, full binomial nonlinear row, normalized
pressure-gradient face, and prescribed-force face.
\end{proposition}

\begin{proof}
Let \(I=(0,T_*)\).  Fix \((n,s)\).  Choose a datum-generated finite rectangle high enough to
contain every velocity factor in \(B_n\) at spatial order \(s+2\).
The adjacent trace lemma gives the required \(L^\infty_tH^{s+2}_x\) factor,
while the higher spatial face gives the other factor in
\(L^2_tH^{s+2}_x\).  Sobolev multiplication, summed over the finite binomial
row, gives the explicit same-history estimate
\begin{equation}
 \norm{B_n}_{L^2(I;\dot H^s)}
 \le C_s\sum_{a=0}^{n}\binom na
 \norm{V_a}_{L^\infty(I;H^{s+2})}
 \norm{V_{n-a}}_{L^2(I;H^{s+2})}
 <\infty.
 \label{f:eq:datum-complete-binomial-projection-bound}
\end{equation}
The prescribed Schwartz force gives
\(F_n\in L^2(I;\dot H^s)\).  Now evaluate the independently derived
positive-sign identity \eqref{f:eq:complete-forced-rectangle-integrated} on
these selected coordinates.  Its right-hand side is finite, and taking the
supremum over \(S<T_*\) proves
\eqref{f:eq:datum-complete-row-projection-bound}.  The pressure term is present
because \eqref{f:eq:complete-forced-pressure-square} is the unprojected
orthogonal completion of one common row.  Every quantity in the resulting
estimate is a coordinate of that forced equation row.
\end{proof}

\begin{proposition}[Complete momentum rows inside one finite rectangle]
\label{f:prop:rectangle-bounds-complete-rows}
Assume the hypotheses of Theorem~\ref{f:thm:datum-rectangles}.  Fix
\(N\in\Nzero\), \(M\ge2\), and \(0<T\le T_*\), and put
\begin{align*}
 R_v&:=\sum_{n=0}^N\left(
 \norm{V_n}_{L^2(0,T;H^{M+1})}^2
 +\norm{V_{n+1}}_{L^2(0,T;H^{M-1})}^2\right),\\
 I_{N,M}&:=\sum_{n=0}^N\norm{V_n^0}_{H^M}^2.
\end{align*}
Then the adjacent faces of this same rectangle give
\begin{equation}
 \sum_{n=0}^N\sup_{0\le t\le T}\norm{V_n(t)}_{H^M}^2
 \le I_{N,M}+R_v,
 \label{f:eq:rectangle-adjacent-trace-bound}
\end{equation}
and the complete binomial nonlinear rows obey
\begin{equation}
 \sum_{n=0}^N\norm{B_n}_{L^2(0,T;H^{M-1})}^2
 \le C_{N,M}(I_{N,M}+R_v)R_v.
 \label{f:eq:rectangle-complete-binomial-bound}
\end{equation}
For \(0<S\le T\), define the pressure-complete dissipation record
\begin{align*}
 \mathcal D_{N,M}(S):=\sum_{n=0}^N\bigg[&
 \nu\norm{V_n(S)}_{\dot H^M}^2
 +\norm{V_{n+1}}_{L^2(0,S;\dot H^{M-1})}^2\\
 &+\nu^2\norm{V_n}_{L^2(0,S;\dot H^{M+1})}^2
 +\norm{\nabla Q_n}_{L^2(0,S;\dot H^{M-1})}^2\bigg].
\end{align*}
The integrated complete rows satisfy
\begin{align}
 \mathcal D_{N,M}(S)
 \le{}&\nu I_{N,M}
 +2\sum_{n=0}^N\norm{F_n}_{L^2(0,T;H^{M-1})}^2
 \notag\\
 &+2C_{N,M}(I_{N,M}+R_v)R_v.
 \label{f:eq:rectangle-complete-row-bound}
\end{align}
Thus one finite velocity rectangle, together with the displayed prescribed
force coordinates, bounds on one common interval and in one common equations its
adjacent temporal rows, viscous Laplacians, complete nonlinear rows, and
normalized pressure gradients.  Lower spatial orders follow by Sobolev nesting
from a rectangle with \(M\ge2\).
\end{proposition}

\begin{proof}
For \(0\le n\le N\), the Hilbert triple
\(H^{M+1}\subset H^M\subset H^{M-1}\) and
\(\partial_tV_n=V_{n+1}\) give
\[
 \norm{V_n(t)}_{H^M}^2-\norm{V_n^0}_{H^M}^2
 =2\operatorname{Re}\int_0^t
 \ip{(1-\Delta)^{(M+1)/2}V_n}
 {(1-\Delta)^{(M-1)/2}V_{n+1}}_{L^2}\dd s.
\]
Cauchy--Schwarz in time and \(2ab\le a^2+b^2\), followed by summation in
\(n\), prove \eqref{f:eq:rectangle-adjacent-trace-bound}.  Sobolev
multiplication applied to every allocation in \(B_n\), using one factor in
\(L^\infty(0,T;H^M)\) and the other in
\(L^2(0,T;H^{M+1})\), proves
\eqref{f:eq:rectangle-complete-binomial-bound}.  Finally, sum
\eqref{f:eq:complete-forced-rectangle-integrated} over \(0\le n\le N\) at
\(s=M-1\), use
\(\norm{F_n-B_n}^2\le2\norm{F_n}^2+2\norm{B_n}^2\), and substitute
\eqref{f:eq:rectangle-complete-binomial-bound}.  This gives
\eqref{f:eq:rectangle-complete-row-bound}.  The identities
\[
 \nabla Q_n=(I-\Pp)(F_n-B_n),
 \qquad
 V_{n+1}=\nu\Delta V_n-\Pp B_n+\Pp F_n
\]
show directly that these are the terms of one common pressure-complete row.
\end{proof}
```

### Forced interval realization, completed-height exhaustion and recurrence return

Source: f-relations:392-570

```latex
\begin{proposition}[Norm equivalence and full-interval realization]
\label{f:prop:datum-terminal-realization}

For the fixed maximal history, the family of bounds
\eqref{f:eq:datum-rectangle-bound} is equivalent to the adjacent-row statement
\eqref{f:eq:datum-adjacent-rows}.  Whenever either formulation holds, for every
\(N,M\in\Nzero\),
\begin{equation}
 \sum_{n=0}^{N}\left(
 \norm{V_n}_{L^2(0,T_*;H^{M+1})}^2
 +\norm{V_{n+1}}_{L^2(0,T_*;H^{M-1})}^2
 \right)
 =\lim_{T\uparrow T_*}\mathfrak R_{N,M}(u;T)
 =\mathfrak R_{N,M}^*[u_0,\nu,f,T_*].
 \label{f:eq:datum-terminal-monotone-realization}
\end{equation}
Every row is the corresponding distributional derivative of the single
pressure-normalized maximal history.
\end{proposition}

\begin{proof}
Assume first \eqref{f:eq:datum-adjacent-rows}.  For fixed \(N,M\), set
\[
 C_{N,M}:=
 \sum_{n=0}^{N}\left(
  \norm{V_n}_{L^2(0,T_*;H^{M+1})}^2
  +\norm{V_{n+1}}_{L^2(0,T_*;H^{M-1})}^2
 \right).
\]
The sum is finite because it contains finitely many instances of
\eqref{f:eq:datum-adjacent-rows}.  Restriction from \((0,T_*)\) to \((0,T)\)
gives
\[
 \mathfrak R_{N,M}(u;T)\le C_{N,M}
 \qquad(0<T<T_*),
\]
and hence \eqref{f:eq:datum-rectangle-bound}.
Every term in \(\mathfrak R_{N,M}(u;T)\) is the integral of a nonnegative
function, so monotone exhaustion of \((0,T_*)\) gives
\eqref{f:eq:datum-terminal-monotone-realization}.

Conversely, assume \eqref{f:eq:datum-rectangle-bound}.  one common monotone
exhaustion gives the finite full-interval sum in
\eqref{f:eq:datum-terminal-monotone-realization}.  Taking \(N=n\) and \(M=m\)
yields \eqref{f:eq:datum-adjacent-rows} for each finite \((n,m)\).
Proposition~\ref{f:prop:formal-mixed-recurrences} identifies every entry with
the corresponding distributional derivative of the fixed pressure-normalized
history.
\end{proof}

\begin{corollary}[Critical-height exhaustion and Sobolev recovery]
\label{f:cor:datum-critical-height-completion}
For the datum-generated compatible finite rectangles of
Theorem~\ref{f:thm:datum-finite-blocks}, every completed critical coordinate
belongs to \(L^1(0,T_*)\), and
\begin{equation}
 \mathscr H_k[u_0,\nu,f,T_*]
 :=\norm{R_k}_{L^1(0,T_*)}
 =\frac12\norm{\Lambda^{k+1/2}u}_{L^2(0,T_*;L^2)}^2
 \le\frac12\mathfrak R_{0,k}^*[u_0,\nu,f,T_*]
 \qquad(k\in\Nzero).
 \label{f:eq:datum-completed-height-bound}
\end{equation}
For every \(m\in\Nzero\), the completed heights recover the spatial Sobolev
row through
\begin{equation}
 \norm u_{L^2(0,T_*;H^m)}^2
 \le
 2^m\left(
  T_*K_f(T_*)^2+2\norm{R_m}_{L^1(0,T_*)}
 \right)
 \le
 2^m\left(
  T_*K_f(T_*)^2+\mathfrak R_{0,m}^*[u_0,\nu,f,T_*]
 \right).
 \label{f:eq:datum-height-to-spatial-column}
\end{equation}
Thus the compatible critical-height exhaustion gives
\begin{equation}
 (R_k)_{k\in\Nzero}\in\prod_{k\in\Nzero}L^1(0,T_*),
 \qquad
 u\in\bigcap_{m\in\Nzero}L^2(0,T_*;H^m(\R^3)).
 \label{f:eq:datum-complete-height-and-spatial-columns}
\end{equation}
\end{corollary}

\begin{samepage}
\begin{proof}
Take the \(n=0,m=k\) finite rectangle in
\eqref{f:eq:independent-adjacent-finite-rows}; equivalently, take \(N=0\) and
\(M=k\) in \eqref{f:eq:datum-terminal-monotone-realization}.  Since
\(\abs\xi^{2k+1}\le\langle\xi\rangle^{2k+2}\),
\begin{align*}
 2\norm{R_k}_{L^1(0,T_*)}
 &=\norm{\Lambda^{k+1/2}u}_{L^2(0,T_*;L^2)}^2\\
 &\le\norm u_{L^2(0,T_*;H^{k+1})}^2
 \le\mathfrak R_{0,k}^*[u_0,\nu,f,T_*],
\end{align*}
which proves \eqref{f:eq:datum-completed-height-bound}.  For
\(\abs\xi\le1\),
\(\langle\xi\rangle^{2m}\le2^m\); for \(\abs\xi>1\),
\(\langle\xi\rangle^{2m}\le2^m\abs\xi^{2m+1}\).  Hence
\[
 \norm v_{H^m}^2
 \le2^m\left(\norm v_2^2+
 \norm{\Lambda^{m+1/2}v}_2^2\right).
\]
Integrating this inequality, using
\eqref{f:eq:energy-Linf} and
\eqref{f:eq:datum-completed-height-bound}, proves
\eqref{f:eq:datum-height-to-spatial-column}.  Since \(k\) and \(m\) are
arbitrary finite indices, \eqref{f:eq:datum-complete-height-and-spatial-columns}
follows.
\end{proof}
\end{samepage}

\begin{proposition}[Forced spatial-column reconstruction of the mixed intersection]
\label{f:prop:forced-spatial-column-reconstruction}
Let \((T_*,u,p)\) be the pressure-normalized forced history generated by
\((u_0,\nu,f)\), with \(T_*<\infty\), and put \(I=(0,T_*)\).  If
\begin{equation}
 u\in\bigcap_{m\in\Nzero}L^2(I;H^m_\sigma(\R^3)),
 \label{f:eq:forced-complete-spatial-row}
\end{equation}
then \(V_n,Q_n\in C([0,T_*];H^m)\) for every finite \(n,m\), and
\eqref{f:eq:independent-mixed-intersection} follows for this same forced
history.
\end{proposition}

\begin{proof}
Set \(S_m:=\norm u_{L^2(I;H^m)}\).  Sobolev multiplication and the forced
velocity equation give
\begin{equation}
 \norm{u_t}_{L^1(I;H^m)}
 \le \nu\sqrt{T_*}\,S_{m+2}+C_mS_{m+2}^2
     +\norm{\Pp f}_{L^1(I;H^m)}<\infty.
 \label{f:eq:forced-spatial-to-first-temporal-row}
\end{equation}
Thus \(u\in W^{1,1}(I;H^m)\hookrightarrow C([0,T_*];H^m)\), with
\begin{equation}
 \sup_{0\le t\le T_*}\norm{u(t)}_{H^m}
 \le M_{0,m}:=\norm{u_0}_{H^m}
 +\nu\sqrt{T_*}\,S_{m+2}+C_mS_{m+2}^2
 +\norm{\Pp f}_{L^1(I;H^m)}.
 \label{f:eq:forced-spatial-column-base-trace}
\end{equation}

Suppose \(V_0,\ldots,V_n\) are continuous on \([0,T_*]\) in every finite
Sobolev order.  The complete velocity row gives the finite recursive bound
\begin{equation}
 M_{n+1,m}:=\nu M_{n,m+2}
 +C_m\sum_{a=0}^n\binom na M_{a,m+2}M_{n-a,m+2}
 +\sup_{[0,T_*]}\norm{\Pp F_n}_{H^m}<\infty.
 \label{f:eq:forced-spatial-column-temporal-recursion}
\end{equation}
On the interior this continuous expression is \(\partial_tV_n\); integration
identifies its one-sided endpoint derivatives.  Induction gives
\begin{equation}
 V_n\in C([0,T_*];H^m),
 \qquad \sup_{[0,T_*]}\norm{V_n}_{H^m}\le M_{n,m}
 \quad(n,m<\infty).
 \label{f:eq:forced-spatial-column-continuous-rows}
\end{equation}
Simultaneously, the normalized pressure formula
\[
 Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j
 -(-\Delta)^{-1}\nabla\!\cdot F_n
\]
and \eqref{f:eq:force-pressure-potential-bound} give
\(Q_n\in C([0,T_*];H^m)\) at every finite order.  Since the rows are the
actual temporal derivatives of \(u\),
\begin{equation}
 \norm u_{H^r(I;H^m)}^2
 \le T_*\sum_{n=0}^{r}M_{n,m}^2<\infty.
 \label{f:eq:forced-spatial-column-to-mixed-intersection}
\end{equation}
Taking all finite \((r,m)\) proves
\eqref{f:eq:independent-mixed-intersection}.
\end{proof}
```

### Supplied rough construction and candidate-comparison reasoning

Source: author:draft:49cee9a4e6c6:9-19

```latex
me: ok let's start with open AI's scenario and work our way through it. firstly, their scenario deals with an imaginary force created from a very specific, well known problem called the "critical height problem". basically if you start with a fluid in motion, without any force, there is concern that a singularity can occur within a stretching vortex, due to the increase in speed of the fluid as the core of the vortex shrinks, and that occurs naturally without anything forcing it, it's just the natural strain within the fluid that causes this vortex to stretch out and increase its rotation as it does so. you know in real life, what you see is that the vortex stretches, thins, speeds up, and dissipates into the surrounding fluid, so the natural assumption is that the viscosity of the fluid is doing something to cause that dissipation instead of having this chase down into the infinitesimal scales, while the rotation of the vortex speeds up to infinity. while it is true that viscosity DOES unilaterally play a role at that scales to prevent this from happening, in order to properly construct the fluid dynamics and continue within the confines of the maths, you need to actively couple all of the parameters of the fluid together so that it remains within the class of objets the problem defines. when you do that, like pressure, viscosity, incompressibility stay actively coupled and you chase the vortex through the critical height problem down to the smallest scales, you can prove that the unforced equations remain smooth for a finite time. 
basically, the orginal NS equation contains it's own velocity and acceleration right? well that's a unique kind of PDE (where the existence of the next time derivative is both given up front, and it affects the next time-step in the velocity) right? so it begs the question: what if you substituted for acceleration? well that would means taking the derivaitve of the whole equation w.r.t. to time and substituting that in right? ok well if you continuously do this kind of substition, you get a binomial form of the NS equation which holds all of it's derivatives (and you know, there's a difference here between the time derviative and material derivative of the equation so the proper construction is actually the material derivative) this kind of object is called a mixed-jet. if you use that same construction within the critical height problem, and analyze its time derivatives, you get this very interested relationship between different height problems within the sobolev space. basically, the higher in time-derivatives you go, the higher up in sobolev space you go. the reason you'd want to do this is to try to measure the smaller and smaller frequencies within the critical height problem itself right? like this vortex is getting smaller, spinning faster, and that concerns higher and higher time derivaitves right? now the finale comes from the fact that if you do this to infinity, you reach the full sobolev space. the critical heights along the way are laddered and related through this viscous relationship and that entire laddered system creates the whole-space sobolev terminal membership. and what i mean by that is simple: wihin either the mixed jet itself, or by analyzing the imte derivatives of the critical height problem: you get this strict viscous relationship between the rows of a N by M matrix (which the paper calls a rectangle,.... im not going to figh that wording but it's a matrix), that matrix carries the geometric viscous relatiship for hte whole fluid, and it proves the intersection between higher-time derivaitves, and higher sobolev embeddings exists, and that relationship the visocity tethers between the "rows" of this matrix gives the estimates for any scenario: proving that the fluids properties always stay finite within a finite time. 
This is where open ai's paper goes wrong: 
it takes that unforced critical height / vortex stretching problem and uses it to create the imaginary force that pushes on / doubles up on the critical height problem.
so instead of saying "the fluid's strain is stretching a vortex" it's like saying "let's put a propeller in the water, and tune its motion to precisely match and worsen this critical height problem"
so they do that, but they only do that for a single rung of the full material mixed jet, and the end results (supposedly) is that the force remains finite, decaying, and the fluid remains incompressible, but the pressure and velocity rip off into infinity.
to me, that violates the entire concept of one-whole-fluid-object, and actively coupling the parameters to ensure class membership within the problem.
i found 4 ways to disprove their point using my geometric, whole-fluid-object argument, but it all comes down to basically one common point: the estimates they claim don't exist, actually do exist and are given by this relationship.
1. each individual parameter is bounded by one common viscous geometric relationship, the estimates stay locally  bounded to each one
2. the entire group in bounded by estimates
   (what are 3, and 4? i mentioned them a long time ago but i can't remember now .. can you recall them for me using thread history?)
```
