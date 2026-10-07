# Exact mathematical excerpts for the native unforced witnesses

**Reviewed scope and currentness.** Current/archive source excerpts have version distinctions and primary correct pressure sign. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Only the listed mathematical source ranges are reproduced.  Physical LF numbers are printed for direct comparison.

## Current TIR, original mixed equation graph

Source: `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md [S160]`, LF130–181.

```text
0130  ## 3. Original pressure-explicit binomial tower
0131  
0132  Put
0133  
0134  \[
0135  J_{N,\alpha}:=\partial_t^N\partial_x^\alpha u,
0136  \qquad
0137  \Pi_{N,\alpha}:=\partial_t^N\partial_x^\alpha p.
0138  \tag{TIR.3}
0139  \]
0140  
0141  Direct differentiation of the original equation gives
0142  
0143  \[
0144  \begin{aligned}
0145  J_{N+1,\alpha}
0146  &+
0147  \sum_{a=0}^{N}\sum_{\beta\le\alpha}
0148  \binom Na\binom\alpha\beta
0149  (J_{a,\beta}\cdot\nabla)
0150  J_{N-a,\alpha-\beta}
0151  +\nabla\Pi_{N,\alpha}
0152  \\
0153  &=\nu\Delta J_{N,\alpha},
0154  \qquad \nabla\cdot J_{N,\alpha}=0.
0155  \end{aligned}
0156  \tag{TIR.4}
0157  \]
0158  
0159  Pressure remains explicit and is fixed by incompressibility:
0160  
0161  \[
0162  -\Delta\Pi_{N,\alpha}
0163  =
0164  \partial_i\partial_j\partial_t^N\partial_x^\alpha(u_i u_j).
0165  \tag{TIR.5}
0166  \]
0167  
0168  For \(V_N:=\partial_t^Nu\) and \(P_N:=\partial_t^Np\), the pure-time slice is
0169  
0170  \[
0171  V_{N+1}
0172  +\sum_{a=0}^{N}\binom Na(V_a\cdot\nabla)V_{N-a}
0173  +\nabla P_N
0174  =\nu\Delta V_N.
0175  \tag{TIR.6}
0176  \]
0177  
0178  This recurrence constructively unfolds the same velocity history. Leray
0179  projection, generating fields, heat normalization, VPI coordinates, and
0180  spectral operators are later readouts. None replaces (TIR.4)--(TIR.6).
0181  
```

## Current TIR, full completed height

Source: `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md [S160]`, LF203–266.

```text
0203  ## 4. Critical height exposes the spatial column
0204  
0205  Define
0206  
0207  \[
0208  E_s(t):=\frac12\|\Lambda^su(t)\|_2^2,
0209  \qquad H(t):=E_{1/2}(t).
0210  \tag{TIR.7}
0211  \]
0212  
0213  The pressure-completed Sobolev balance is
0214  
0215  \[
0216  E_s'=-2\nu E_{s+1}+\mathcal P_s,
0217  \tag{TIR.8}
0218  \]
0219  
0220  where
0221  
0222  \[
0223  \mathcal P_s
0224  :=-\left\langle
0225  \Lambda^su,
0226  \Lambda^s\bigl((u\cdot\nabla)u+\nabla p\bigr)
0227  \right\rangle
0228  =-\left\langle
0229  \Lambda^su,
0230  \Lambda^s\mathbb P((u\cdot\nabla)u)
0231  \right\rangle,
0232  \tag{TIR.9}
0233  \]
0234  
0235  where the equality uses incompressibility and the pressure equation (TIR.5).
0236  Thus \(\mathcal P_s\) is the complete signed nonlinear and pressure-explicit
0237  transfer of the same field; the projected expression is only its equivalent
0238  global pairing. Repeated differentiation and substitution give
0239  
0240  \[
0241  H^{(n)}
0242  =(-2\nu)^nE_{n+1/2}
0243  +\sum_{j=0}^{n-1}
0244  (-2\nu)^j
0245  \partial_t^{\,n-1-j}\mathcal P_{j+1/2}.
0246  \tag{TIR.10}
0247  \]
0248  
0249  Equivalently,
0250  
0251  \[
0252  R_n
0253  :=
0254  \frac{
0255  H^{(n)}-
0256  \displaystyle\sum_{j=0}^{n-1}
0257  (-2\nu)^j\partial_t^{\,n-1-j}\mathcal P_{j+1/2}
0258  }{(-2\nu)^n}
0259  =E_{n+1/2}.
0260  \tag{TIR.11}
0261  \]
0262  
0263  A height row is not identified with a spatial energy after deleting its VPI
0264  currents. The complete row contains the spatial readout together with all the
0265  currents required by the original equation. Temporal depth and spatial Sobolev
0266  depth are distinct coordinates of one coupled tower.
```

## Current TIR, mathematical Section5 whole-I input and finite derivations

Source: `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md [S160]`, LF275–523.

```text
0275  Fix an alleged finite maximal endpoint \(0<T_*<\infty\) and put
0276  \(I=(0,T_*)\). The datum class here is the smooth Sobolev class used in
0277  (TIR.37): \(u_0\in H^\infty:=\bigcap_{m\geq0}H^m(\mathbb R^3)\), with
0278  \(\nabla\cdot u_0=0\) and \(\nu>0\). Spatial smoothness and finite energy
0279  alone do not assert all of these Sobolev memberships.
0280  
0281  The established unforced input is datum-generated membership in every finite
0282  compatible Sobolev rectangle. For \(V_N:=\partial_t^Nu\) and each pair of
0283  nonnegative integers \(N,m\), it supplies
0284  
0285  \[
0286  (MR)_{N,m}:\qquad
0287  V_N\in L^2(I;H^{m+1}),\qquad
0288  V_{N+1}\in L^2(I;H^{m-1}).
0289  \]
0290  
0291  These memberships already assert finiteness of the defining Sobolev time
0292  integrals on \(I\). The finite rectangle bound expresses those memberships
0293  in norm notation. For \(0<T\leq T_*\), define its squared norm by
0294  
0295  \[
0296  \mathcal R_{N,m}(u;T)
0297  :=\sum_{j=0}^{N}\left(
0298   \|V_j\|_{L^2(0,T;H^{m+1})}^2
0299   +\|V_{j+1}\|_{L^2(0,T;H^{m-1})}^2\right).
0300  \]
0301  
0302  Every term at \(T=T_*\) is finite by the supplied memberships. Restricting
0303  the time integrals and then increasing \(T\) to \(T_*\) gives
0304  
0305  \[
0306  \sup_{0<T<T_*}\mathcal R_{N,m}(u;T)
0307  =\mathcal R_{N,m}(u;T_*)
0308  =:C_{N,m}[u_0,\nu;I]<\infty
0309  \qquad\text{for every finite }N,m.
0310  \tag{TIR.11a-pre}
0311  \]
0312  
0313  The equality follows from monotone convergence. The finite value
0314  \(C_{N,m}\) is the sum of the defining squared norms already supplied by
0315  \((MR)_{j,m}\), \(0\leq j\leq N\). Its finiteness is contained in
0316  those memberships. Constants may depend on the finite indices; no bound
0317  common to every order is required.
0318  
0319  For any fixed nonnegative integers \(r,M\), the rectangles contain
0320  \(V_j\in L^2(I;H^M)\) for \(0\leq j\leq r\). The pressure-explicit
0321  recurrence identifies these entries as the weak temporal derivatives of
0322  \(u\), so
0323  
0324  \[
0325  \|u\|_{H_t^r(I;H_x^M)}^2
0326  =\sum_{j=0}^{r}\|V_j\|_{L^2(I;H^M)}^2<\infty,
0327  \]
0328  
0329  using the derivative-sum Sobolev norm. The finite jet restrictions agree on
0330  overlapping entries because they are derivatives of this velocity history.
0331  Writing \(\mathbf R_{N,m}[u_0]\) for those finite restrictions, their
0332  compatible intersection gives
0333  
0334  \[
0335  u_0
0336  \longrightarrow
0337  \{\mathbf R_{N,m}[u_0]\}_{N,m<\infty}
0338  \longrightarrow
0339  \mathcal I[u_0]:\quad
0340  u[u_0]\in\mathcal X_\infty(I)
0341  :=\bigcap_{r,M\geq0}H_t^r(I;H_x^M).
0342  \tag{TIR.11a}
0343  \]
0344  
0345  Here \(\mathcal X_\infty(I)\) is the ambient function space;
0346  \(\mathcal I[u_0]\) records the datum-generated membership together with
0347  its compatible mixed derivatives. Taking the intersection retains every
0348  finite membership. It introduces no sum over infinitely many orders.
0349  
0350  Each fixed row also belongs to \(H_t^1(I;H_x^m)\). Its temporal trace obeys
0351  
0352  \[
0353  \|V_j\|_{L^\infty(I;H^m)}
0354  \leq T_*^{-1/2}\|V_j\|_{L^2(I;H^m)}
0355   +T_*^{1/2}\|V_{j+1}\|_{L^2(I;H^m)}<\infty.
0356  \tag{TIR.11b}
0357  \]
0358  
0359  To obtain this estimate, choose a time at which the first norm is no greater
0360  than its quadratic mean and integrate \(\partial_tV_j=V_{j+1}\).
0361  Cauchy--Schwarz bounds the integral. Thus the interval memberships supply
0362  bounded continuous representatives at each fixed spatial order.
0363  
0364  The first embedding is the half-integer spatial column carried by the
0365  critical-height tower. With the finite-energy row retained,
0366  
0367  \[
0368  \mathcal S_\infty^{1/2}
0369  :=L_x^2\cap\bigcap_{n=0}^{\infty}\dot H_x^{n+1/2}
0370  =\bigcap_{m=0}^{\infty}H_x^m,
0371  \qquad
0372  \mathcal S_\infty^{1/2}\hookrightarrow C_x^\infty.
0373  \tag{TIR.12}
0374  \]
0375  
0376  The \(L^2\) term controls low frequencies; arbitrarily high half-integer
0377  weights control each finite integer weight. For any derivative order \(k\),
0378  choose \(n+1/2>k+3/2\) and use
0379  \(H^{n+1/2}(\mathbb R^3)\hookrightarrow C^k\). This is the spatial
0380  intersection's own smoothness theorem; no single row is being called
0381  all-orders smooth.
0382  
0383  The second theorem is the temporal height column. Differentiating the
0384  quadratic height retains all of its mixed-row factors:
0385  
0386  \[
0387  H^{(r)}(t)
0388  =\frac12\sum_{a=0}^{r}\binom ra
0389  \left\langle\Lambda^{1/2}V_a(t),
0390                   \Lambda^{1/2}V_{r-a}(t)\right\rangle.
0391  \]
0392  
0393  By (TIR.11b), each factor is bounded in \(L_x^2\), using the corresponding
0394  \(H_x^1\) row. Every derivative \(H^{(r)}\) is bounded on the finite
0395  interval and hence belongs to \(L^2(I)\). This proves the membership used
0396  by the temporal embedding:
0397  
0398  \[
0399  H\in\mathcal H_\infty(I)
0400  :=\bigcap_{r=0}^{\infty}H_t^r(I),
0401  \qquad
0402  \mathcal H_\infty(I)\hookrightarrow C_t^\infty(I).
0403  \tag{TIR.13}
0404  \]
0405  
0406  The height column retains its pressure/VPI graph through (TIR.10)--(TIR.11),
0407  with \(R_0:=H\) under the empty-sum convention.
0408  For the admitted velocity-pressure history, with its \(L^2(I;L_x^2)\)
0409  membership retained, the quadratic readout identity gives
0410  
0411  \[
0412  \left[R_n=E_{n+1/2}\in L^1(I)\quad\text{for every }n\geq0\right]
0413  \quad\Longleftrightarrow\quad
0414  u\in L_t^2(I;L_x^2)\cap
0415   \bigcap_{n\geq0}L_t^2(I;\dot H_x^{n+1/2}).
0416  \tag{TIR.13a}
0417  \]
0418  
0419  Indeed, \(\int_I R_n=\tfrac12\|\Lambda^{n+1/2}u\|_{L^2(I;L^2)}^2\).
0420  This equivalence concerns the admitted history and its compatible readouts;
0421  it does not identify all Sobolev functions with Navier--Stokes solutions.
0422  Temporal regularity of the scalar \(H\) alone does not supply its VPI graph.
0423  The established height membership also gives
0424  
0425  \[
0426  \sup_{0\leq t<T_*}H(t)
0427  \leq H(0)+\sqrt{T_*}\,\|H'\|_{L^2(I)}<\infty.
0428  \tag{TIR.13b}
0429  \]
0430  
0431  The third theorem is the velocity-time column and its mixed spatial
0432  intersection:
0433  
0434  \[
0435  u\in\mathcal V_{\infty,m}(I)
0436  :=\bigcap_{r=0}^{\infty}H_t^r(I;H_x^m),
0437  \qquad
0438  \mathcal V_{\infty,m}(I)
0439  \hookrightarrow C_t^\infty(I;H_x^m),
0440  \tag{TIR.14}
0441  \]
0442  
0443  and
0444  
0445  \[
0446  \mathcal V_{\infty,\infty}(I)
0447  :=\bigcap_{r,m=0}^{\infty}H_t^r(I;H_x^m)
0448  =\mathcal X_\infty(I),
0449  \qquad
0450  \mathcal V_{\infty,\infty}(I)
0451  \hookrightarrow C_{t,x}^\infty(I\times\mathbb R^3).
0452  \tag{TIR.15}
0453  \]
0454  
0455  For each temporal derivative order, choose one additional temporal Sobolev
0456  order. For each spatial derivative order, choose a spatial Sobolev exponent
0457  above that order plus \(3/2\). The successive embeddings give joint
0458  continuity of each finite mixed derivative.
0459  
0460  The fourth theorem includes the pressure-explicit NS jet. Normalize pressure
0461  by its \(L^2\) Riesz-transform representative and write
0462  \(\mathfrak R_i=\partial_i(-\Delta)^{-1/2}\). Equation (TIR.5) gives
0463  
0464  \[
0465  P_r=\partial_t^rp
0466  =\sum_{a=0}^{r}\binom ra\sum_{i,j=1}^{3}
0467  \mathfrak R_i\mathfrak R_j
0468  \bigl((V_a)_i(V_{r-a})_j\bigr).
0469  \]
0470  
0471  Sobolev multiplication and boundedness of the Riesz transforms on \(H^m\)
0472  give, for each finite \(r,m\),
0473  
0474  \[
0475  \|P_r\|_{L^2(I;H^m)}
0476  \leq C_m\sum_{a=0}^{r}\binom ra
0477  \|V_a\|_{L^\infty(I;H^{m+2})}
0478  \|V_{r-a}\|_{L^2(I;H^{m+2})}<\infty.
0479  \]
0480  
0481  Both velocity factors are supplied by (TIR.11a)--(TIR.11b). Thus
0482  \(p\in\mathcal X_\infty(I)\), with all pressure rows determined by the
0483  velocity products. The notation \(\mathfrak R_i,P_r\) here corresponds
0484  to \(R_i,Q_r\) in Section 6. Define the complete compatible solution class by
0485  
0486  \[
0487  \begin{aligned}
0488  \mathcal N_\infty(I):=\{(v,q):{}&
0489   v,q\in\mathcal X_\infty(I),\quad\nabla\cdot v=0,\\
0490   &q=\sum_{i,j}\mathfrak R_i\mathfrak R_j(v_i v_j),\\
0491   &\text{all mixed jet entries are derivatives of }(v,q),\\
0492   &\text{every pressure-explicit row (TIR.4)--(TIR.5) holds}\}.
0493  \end{aligned}
0494  \tag{TIR.15a}
0495  \]
0496  
0497  The constructed history belongs to this class. Successive temporal and spatial
0498  Sobolev embedding gives
0499  
0500  \[
0501  (u,p)\in\mathcal N_\infty(I)
0502  \hookrightarrow C_{t,x}^\infty(I\times\mathbb R^3;\mathbb R^3\times\mathbb R).
0503  \tag{TIR.15b}
0504  \]
0505  
0506  Every complete compatible representation has its own all-orders smoothness
0507  implication. For the whole-terminal composition developed here,
0508  
0509  \[
0510  \text{datum-generated compatible rectangles on }I
0511  \Longrightarrow
0512  \text{their compatible intersection}
0513  \Longrightarrow
0514  \text{the four intersection-to-smoothness results}
0515  \Longrightarrow
0516  \text{endpoint and restart}.
0517  \tag{TIR.15c}
0518  \]
0519  
0520  This composition preserves the independent constructions of the direct
0521  intersection and the critical-height rectangle relationships. Section 6 uses
0522  the whole-interval memberships to obtain the common endpoint, its jet, and
0523  the restart contradiction.
```

## Archived TIR, mathematical Section5 whole-I input and finite derivations

Source: `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md [S085]`, LF275–435.

```text
0275  This is the historically owned intersection operation. Its finite-coordinate
0276  mixed-row form is the established whole-terminal theorem. For
0277  \(V_N:=\partial_t^Nu\), every finite \(N,m\) satisfies
0278  
0279  \[
0280  (MR)_{N,m}:\qquad
0281  V_N\in L^2(0,T_*;H^{m+1}),\qquad
0282  V_{N+1}\in L^2(0,T_*;H^{m-1}).
0283  \]
0284  
0285  The constants may depend on \(N\) and \(m\). No common tower constant is part of
0286  the theorem. In whole-terminal norm form its datum-generated estimate is
0287  
0288  \[
0289  \boxed{
0290  \sup_{0<T<T_*}\mathcal R_{N,m}(u;T)<\infty
0291  \qquad\text{for every finite }N,m.
0292  }
0293  \tag{TIR.11a-pre}
0294  \]
0295  
0296  Compatibility gives the endpoint-spanning all-orders intersection
0297  
0298  \[
0299  \boxed{
0300  u_0
0301  \longrightarrow
0302  \{\mathcal R_{N,M}[u_0]\}_{N,M<\infty}
0303  \longrightarrow
0304  \mathcal I[u_0]
0305  :=
0306  \bigcap_{N,M<\infty}H_t^N(0,T_*;H_x^M).
0307  }
0308  \tag{TIR.11a}
0309  \]
0310  
0311  All coordinates belong to the same \(u_0\)-generated velocity history.
0312  The established datum theorem supplies (TIR.11a-pre); the pressure-explicit
0313  recurrence constructs its finite coordinates and proves overlap compatibility.
0314  The later signed-prefix labels, including BPF.24, are alternate readouts and
0315  cannot be promoted into prerequisites that reopen this first theorem.
0316  
0317  Given the whole-terminal intersection, the first embedding is the half-integer
0318  spatial column carried by the critical-height tower. With the finite-energy row
0319  retained,
0320  
0321  \[
0322  \mathcal S_\infty^{1/2}
0323  :=L_x^2\cap\bigcap_{n=0}^{\infty}\dot H_x^{n+1/2}
0324  =\bigcap_{m=0}^{\infty}H_x^m,
0325  \qquad
0326  \mathcal S_\infty^{1/2}\hookrightarrow C_x^\infty.
0327  \tag{TIR.12}
0328  \]
0329  
0330  For any derivative order \(k\), choose \(n+1/2>k+3/2\) and use
0331  \(H^{n+1/2}(\mathbb R^3)\hookrightarrow C^k\).  This is the spatial
0332  intersection's own smoothness theorem; no single row is being called
0333  all-orders smooth.
0334  
0335  The second theorem is the temporal height column:
0336  
0337  \[
0338  \mathcal H_\infty(I)
0339  :=\bigcap_{r=0}^{\infty}H_t^r(I),
0340  \qquad
0341  \mathcal H_\infty(I)\hookrightarrow C_t^\infty(I).
0342  \tag{TIR.13}
0343  \]
0344  
0345  Here the height column must remain on its compatible pressure/VPI graph.  For
0346  each \(n\), let \(\operatorname{Dom}_{\rm comp}(R_n;I)\) mean that the same
0347  history satisfies (TIR.10)--(TIR.11) and that its quadratic-form readout
0348  \(R_n=E_{n+1/2}\) belongs to \(L^1(I)\).  Then projection of
0349  the complete graph intersection onto its velocity coordinate gives the
0350  spatial column:
0351  
0352  \[
0353  \operatorname{pr}_u
0354  \bigcap_{n\geq0}\operatorname{Dom}_{\rm comp}(R_n;I)
0355  =L_t^2(I;L_x^2)\cap
0356   \bigcap_{n\geq0}L_t^2(I;\dot H_x^{n+1/2}).
0357  \tag{TIR.13a}
0358  \]
0359  
0360  This is a compatible-domain identity, not a claim that temporal regularity of
0361  the scalar \(H\) alone creates the differentiated VPI currents. Within a
0362  whole-terminal height intersection, its first temporal row already
0363  has the finite-roof consequence
0364  
0365  \[
0366  \sup_{t<T_*}H(t)
0367  \leq H(0)+\sqrt{T_*}\,\|H'\|_{L^2(0,T_*)}<\infty.
0368  \tag{TIR.13b}
0369  \]
0370  
0371  The third theorem is the velocity-time column and its mixed spatial
0372  intersection:
0373  
0374  \[
0375  \mathcal V_{\infty,m}(I)
0376  :=\bigcap_{r=0}^{\infty}H_t^r(I;H_x^m),
0377  \qquad
0378  \mathcal V_{\infty,m}(I)
0379  \hookrightarrow C_t^\infty(I;H_x^m),
0380  \tag{TIR.14}
0381  \]
0382  
0383  and
0384  
0385  \[
0386  \mathcal V_{\infty,\infty}(I)
0387  :=\bigcap_{r,m=0}^{\infty}H_t^r(I;H_x^m),
0388  \qquad
0389  \mathcal V_{\infty,\infty}(I)
0390  \hookrightarrow C_{t,x}^\infty(I\times\mathbb R^3).
0391  \tag{TIR.15}
0392  \]
0393  
0394  The fourth theorem is the original pressure-explicit NS jet itself.  With the
0395  decaying pressure normalization, define its whole-interval intersection by
0396  
0397  \[
0398  \begin{aligned}
0399  \mathcal N_\infty(I):=\{(u,p):{}&
0400  u,p\in\bigcap_{r,m<\infty}H_t^r(I;H_x^m),\\
0401  &\text{every }J_{N,\alpha},\Pi_{N,\alpha}
0402  \text{ is the derivative of this same history, and}\\
0403  &\text{every pressure-explicit row (TIR.4)--(TIR.5) holds}\}.
0404  \end{aligned}
0405  \tag{TIR.15a}
0406  \]
0407  
0408  Successive temporal and spatial Sobolev embedding gives
0409  
0410  \[
0411  \boxed{\mathcal N_\infty(I)\hookrightarrow C_{t,x}^\infty(I\times\mathbb R^3).}
0412  \tag{TIR.15b}
0413  \]
0414  
0415  These are four formulations of one intersection principle. Every complete
0416  compatible representation has its own all-orders smoothness implication, and
0417  compatibility identifies all of them as derivatives and readouts of the same
0418  \(u\).  Their exact proof order is
0419  
0420  \[
0421  \boxed{
0422  \text{datum-generated endpoint-spanning compatible rectangles}
0423  \Longrightarrow
0424  \text{their all-orders intersection}
0425  \Longrightarrow
0426  \text{the four intersection-to-smoothness theorems}
0427  \Longrightarrow
0428  \text{endpoint and restart}.}
0429  \tag{TIR.15c}
0430  \]
0431  
0432  The four embeddings consume the rectangle family supplied by the first theorem;
0433  they do not replace it with a selected row. Section 6 supplies the common
0434  endpoint, endpoint jet, restart, and contradiction. No independent producer
0435  boundary sits between these parts of the same proof.
```

## Current TIR, intersection-to-endpoint composition

Source: `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md [S160]`, LF525–670.

```text
0525  ## 6. What follows once the whole-interval intersection is present
0526  
0527  Let \(I=(0,T_*)\) with \(T_*<\infty\), and invoke the datum-generated
0528  whole-terminal rectangle theorem (TIR.11a-pre). Then (TIR.11a) gives
0529  
0530  \[
0531  u\in L^2(I;H_x^s)
0532  \qquad\text{for every finite }s,
0533  \tag{TIR.16}
0534  \]
0535  
0536  so every critical spatial energy is already integrable:
0537  
0538  \[
0539  \int_0^{T_*}E_s(t)\,dt
0540  =\frac12\int_0^{T_*}\|\Lambda^su(t)\|_2^2\,dt
0541  <\infty.
0542  \tag{TIR.17}
0543  \]
0544  
0545  In particular,
0546  
0547  \[
0548  E_{n+1/2}\in L^1(0,T_*)
0549  \qquad(n=0,1,2,\ldots).
0550  \tag{TIR.18}
0551  \]
0552  
0553  Equation (TIR.18) is a coordinate readout of the intersection. It is not an
0554  additional upstream payment after (TIR.16).
0555  
0556  Already the first complete spatial row closes the endpoint. For every finite
0557  \(m\), Sobolev multiplication and the Leray projection give
0558  
0559  \[
0560  \|\mathbb P\nabla\!\cdot(u\otimes u)\|_{H^m}
0561  \leq C_m\|u\|_{H^{m+2}}^2,
0562  \qquad
0563  \|\Delta u\|_{L_t^1H_x^m}
0564  \leq \sqrt{T_*}\|u\|_{L_t^2H_x^{m+2}}.
0565  \tag{TIR.18a}
0566  \]
0567  
0568  Thus both the complete pressure-projected interaction and viscosity belong to
0569  \(L^1(0,T_*;H^m)\). The original equation gives
0570  
0571  \[
0572  u_t\in L^1(0,T_*;H^m),
0573  \qquad
0574  u\in W^{1,1}(0,T_*;H^m)
0575  \hookrightarrow C([0,T_*];H^m)
0576  \quad\text{for every }m.
0577  \tag{TIR.18b}
0578  \]
0579  
0580  The full mixed intersection also supplies the stronger Hilbert-pair trace
0581  coordinates: for every finite \(m\),
0582  
0583  \[
0584  u\in L^2(I;H^{m+1}),
0585  \qquad
0586  u_t\in L^2(I;H^{m-1}).
0587  \tag{TIR.19}
0588  \]
0589  
0590  In the Hilbert triple
0591  
0592  \[
0593  H^{m+1}\subset H^m\subset H^{m-1},
0594  \]
0595  
0596  the standard Lions--Magenes trace theorem applied to (TIR.19) gives
0597  (u\in C([0,T_*];H^m)). Its energy estimate is
0598  
0599  \[
0600  \left|
0601  \|u(t)\|_{H^m}^2-\|u(r)\|_{H^m}^2
0602  \right|
0603  \le
0604  2\|u_t\|_{L^2(r,t;H^{m-1})}
0605   \|u\|_{L^2(r,t;H^{m+1})}
0606  \tag{TIR.20}
0607  \]
0608  
0609  The trace theorem supplies strong \(H^m\) continuity, while (TIR.20) supplies
0610  the displayed norm control. This agrees with (TIR.18b). Because every trace is
0611  the trace of the same field, the finite-order endpoints are compatible and give
0612  
0613  \[
0614  u_*:=u(T_*)\in\bigcap_mH^m=H^\infty.
0615  \tag{TIR.21}
0616  \]
0617  
0618  The original equation closes the spatial intersection under every temporal
0619  response. Since \(H^\infty\) is closed under differentiation and multiplication
0620  and Riesz transforms preserve it,
0621  
0622  \[
0623  p=R_iR_j(u_i u_j)\in H^\infty,
0624  \qquad
0625  u_t=\nu\Delta u-(u\cdot\nabla)u-\nabla p\in H^\infty.
0626  \tag{TIR.22}
0627  \]
0628  
0629  Writing \(V_N=\partial_t^Nu\) and \(Q_N=\partial_t^Np\), the original
0630  recurrences are
0631  
0632  \[
0633  Q_N
0634  =
0635  R_iR_j\sum_{a=0}^{N}\binom NaV_{a,i}V_{N-a,j},
0636  \qquad
0637  V_{N+1}
0638  =
0639  \nu\Delta V_N
0640  -
0641  \sum_{a=0}^{N}\binom Na(V_a\cdot\nabla)V_{N-a}
0642  -
0643  \nabla Q_N.
0644  \tag{TIR.22a}
0645  \]
0646  
0647  Induction gives \((V_N,Q_N)\in C([0,T_*];H^\infty)\) for every \(N\).
0648  Smooth local existence from \(u_*\) and same-datum uniqueness restart and glue
0649  the same velocity history beyond \(T_*\), contradicting finite maximality.
0650  Therefore
0651  
0652  \[
0653  \boxed{
0654  \begin{aligned}
0655  \text{(TIR.11a-pre)}\longrightarrow\mathcal I[u_0]
0656  &\Longrightarrow E_{n+1/2}\in L_t^1\quad\forall n
0657  \\
0658  &\Longrightarrow u_*\in H^\infty
0659  \\
0660  &\Longrightarrow \text{pressure-explicit smooth endpoint jet}
0661  \\
0662  &\Longrightarrow \text{smooth restart of the same history}
0663  \\
0664  &\Longrightarrow T_*=\infty,\qquad
0665  u,p\in C^\infty([0,\infty)\times\mathbb R^3).
0666  \end{aligned}}
0667  \tag{TIR.23}
0668  \]
0669  
0670  ## 7. Downstream higher-response identities and support interfaces
```

## Current TIR, exact direct-composition formula

Source: `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md [S160]`, LF915–947.

```text
0915  ## 8. Complete datum-to-restart composition
0916  
0917  The established direct implication is:
0918  
0919  \[
0920  \boxed{
0921  u_0\in H^\infty,\quad \nabla\cdot u_0=0,\quad \|u_0\|_2<\infty
0922  \Longrightarrow
0923  u\in\bigcap_{r,m<\infty}H_t^r(0,T_*;H_x^m)
0924  \quad\text{with every column and backward level compatible.}
0925  }
0926  \]
0927  
0928  The note-local \((MR)_{N,m}\) formulas are its finite coordinates. The later
0929  first-prefix formulation \(A_*(T_*)<\infty\) is an equivalent readout inside
0930  the same history, not the source of the datum theorem. Composing the established
0931  datum-generated intersection with (TIR.23) gives
0932  
0933  \[
0934  \boxed{
0935  u_0
0936  \longrightarrow
0937  \mathcal I[u_0]
0938  \longrightarrow
0939  u_*\in H^\infty
0940  \longrightarrow
0941  \text{pressure-explicit endpoint jet and same-history restart}
0942  \longrightarrow
0943  T_*=\infty.
0944  }
0945  \tag{TIR.37}
0946  \]
0947  
```

## Combined unforced, complete finite dependency cover and membership handoff

Source: `01-setting-mixed-jet.tex [S139]`, LF457–555.

```text
0457  Put \(I=(0,T_*)\), and fix finite \(N,M\).  The datum first generates the
0458  complete initial jet
0459  \[
0460   A_0=u_0,
0461   \qquad
0462   P_n=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j,
0463  \]
0464  \[
0465   A_{n+1}=\nu\Delta A_n
0466   -\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}-\nabla P_n.
0467  \]
0468  At step \(n\), the right-hand side uses only the already determined rows
0469  \(A_0,\ldots,A_n\).  Lemma~\ref{u:lem:formal-initial-jet} therefore places
0470  every required \(A_n\) and \(P_n\) in every finite spatial Sobolev order.
0471  Spatial differentiation supplies
0472  \[
0473   J_{n,\alpha}(0)=\partial_x^\alpha A_n,
0474   \qquad
0475   \Pi_{n,\alpha}(0)=\partial_x^\alpha P_n.
0476  \]
0477  
0478  The selected equations retain their complete finite dependency cover.  For
0479  an equation indexed by \((n,\alpha)\), retain the adjacent temporal coordinate
0480  \(J_{n+1,\alpha}\), the viscous coordinates
0481  \(J_{n,\alpha+2e_\ell}\), and the pressure coordinates
0482  \(\Pi_{n,\alpha+e_\ell}\), for \(1\le\ell\le3\).  For every \(a\le n\),
0483  \(\beta\le\alpha\), and velocity component \(i\), retain both transport
0484  factors
0485  \[
0486   J_{a,\beta,i},
0487   \qquad
0488   J_{n-a,\alpha-\beta+e_i}.
0489  \]
0490  Here \(e_i\) is the \(i\)-th spatial unit multi-index.  Set
0491  \(\Gamma_\alpha:=\{\alpha\}\cup\{\alpha+e_\ell:1\le\ell\le3\}\).
0492  For every \(\gamma\in\Gamma_\alpha\), every \(a\le n\), and every
0493  \(\beta\le\gamma\), also retain the two pressure-product factors
0494  \(J_{a,\beta,i}\) and \(J_{n-a,\gamma-\beta,j}\).  Each retained normalized
0495  pressure coordinate then carries its full product formula
0496  \[
0497   \Pi_{n,\gamma}
0498   =R_iR_j\sum_{a=0}^n\sum_{\beta\le\gamma}
0499   \binom na\binom{\gamma}{\beta}
0500   J_{a,\beta,i}J_{n-a,\gamma-\beta,j}
0501   \qquad(\gamma\in\Gamma_\alpha).
0502  \]
0503  Thus the retained equation is
0504  \begin{equation}
0505   \begin{aligned}
0506   \mathscr E_{n,\alpha}(J,\Pi):={}&J_{n+1,\alpha}
0507   +\sum_{a=0}^{n}\sum_{\beta\le\alpha}
0508   \binom na\binom{\alpha}{\beta}
0509   (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}\\
0510   &+\nabla\Pi_{n,\alpha}-\nu\Delta J_{n,\alpha}=0.
0511   \end{aligned}
0512   \label{u:eq:finite-equation-graph}
0513  \end{equation}
0514  There are finitely many retained coordinates for the fixed selected equations.
0515  The dependency cover is not an autonomous truncated fluid: every entry is the
0516  corresponding derivative of the original maximal history.  Applying \(\Pp\)
0517  reads the solenoidal evolution, and applying \(I-\Pp\) reads the normalized
0518  pressure equation.  The initial face, every nonlinear factor, the viscous
0519  coordinates, and the pressure coordinates are therefore present together.
0520  
0521  The datum-generated columnwise construction now acts on this one complete
0522  finite record.  For each \(n=0,\ldots,N\), it supplies
0523  \[
0524   V_n\in L^2(I;H^{M+1}),
0525   \qquad
0526   V_{n+1}\in L^2(I;H^{M-1}).
0527  \]
0528  These are the whole-terminal memberships in
0529  \eqref{u:eq:independent-adjacent-finite-rows}; they precede every cutoff norm
0530  and every terminal trace.  The adjacent entry is the weak temporal derivative
0531  of the preceding entry by \eqref{u:eq:finite-equation-graph}.
0532  
0533  For this fixed finite pair, form the sum of the defining squared norms:
0534  \begin{equation}
0535   C_{N,M}[u_0,\nu;I]
0536   :=\sum_{n=0}^{N}\left(
0537    \norm{V_n}_{L^2(I;H^{M+1})}^2
0538    +\norm{V_{n+1}}_{L^2(I;H^{M-1})}^2
0539   \right)<\infty.
0540   \label{u:eq:finite-graph-output}
0541  \end{equation}
0542  Each displayed membership asserts finiteness of its defining squared norm,
0543  and the sum has only finitely many terms.
0544  Restriction to \((0,S)\) decreases each nonnegative integral.  Increasing
0545  \(S\) to \(T_*\) and applying monotone convergence to the finite sum gives
0546  \begin{equation}
0547   \sup_{0<S<T_*}\mathfrak R_{N,M}(u;S)
0548   =\mathfrak R_{N,M}(u;T_*)
0549   =C_{N,M}[u_0,\nu;I]<\infty.
0550   \label{u:eq:finite-graph-uniform-cutoff-output}
0551  \end{equation}
0552  The constant belongs to the selected finite pair; no constant common to the
0553  infinite tower is asserted.  This proves
0554  \eqref{u:eq:datum-whole-terminal-producer} in the same order as the
0555  construction: memberships, finite norm, restriction, monotone terminal
```

## RC unforced local linear/nonlinear fixedpoint

Source: `00-analytic-framework.tex [S101]`, LF704–860.

```text
0704   a\in H^3_\sigma,\quad
0705   F\in L^2(0,\delta;H^2_\sigma),
0706  \]
0707  and set
0708  \[
0709   A_0:=\norm a_{H^3},
0710   \qquad
0711   G:=\norm F_{L^2(0,\delta;H^2)}.
0712  \]
0713  The \(H^3\) energy identity is
0714  \[
0715   \frac12\frac{\dd}{\dd t}\norm z_{H^3}^2
0716   +\nu\norm{\nabla z}_{H^3}^2
0717   =\operatorname{Re}\ip{A^2F}{A^4z}_{L^2}.
0718  \]
0719  Since
0720  \(\norm z_{H^4}^2=\norm z_{H^3}^2+\norm{\nabla z}_{H^3}^2\),
0721  Young's inequality gives
0722  \[
0723   \frac{\dd}{\dd t}\norm z_{H^3}^2
0724   +\nu\norm{\nabla z}_{H^3}^2
0725   \le \nu\norm z_{H^3}^2+\nu^{-1}\norm F_{H^2}^2.
0726  \]
0727  Consequently,
0728  \begin{equation}
0729   \norm z_{C([0,\delta];H^3)}
0730   \le e^{\nu/2}\bigl(A_0+\nu^{-1/2}G\bigr).
0731   \label{eq:restart-linear-CH3}
0732  \end{equation}
0733  Pairing \(A^2z_t-\nu\Delta A^2z=A^2F\) with
0734  \(-\Delta A^2z\) gives
0735  \[
0736   \frac12\frac{\dd}{\dd t}\norm{\nabla A^2z}_2^2
0737   +\nu\norm{\Delta A^2z}_2^2
0738   =\operatorname{Re}\ip{A^2F}{-\Delta A^2z}_{L^2}.
0739  \]
0740  Integration and Young's inequality yield
0741  \begin{equation}
0742   \norm{\Delta z}_{L^2(0,\delta;H^2)}
0743   \le \nu^{-1/2}A_0+\nu^{-1}G.
0744   \label{eq:restart-linear-Laplacian}
0745  \end{equation}
0746  The pointwise multiplier inequality
0747  \[
0748   \langle\xi\rangle^8
0749   \le2\bigl(\langle\xi\rangle^6
0750         +\abs\xi^4\langle\xi\rangle^4\bigr)
0751  \]
0752  and \(\delta\le1\) imply
0753  \begin{equation}
0754   \norm z_{L^2(0,\delta;H^4)}
0755   \le\sqrt2\left(
0756   \norm z_{C([0,\delta];H^3)}
0757   +\norm{\Delta z}_{L^2(0,\delta;H^2)}
0758   \right).
0759   \label{eq:restart-linear-H4}
0760  \end{equation}
0761  The equation and \eqref{eq:restart-linear-Laplacian} give
0762  \begin{equation}
0763   \norm{z_t}_{L^2(0,\delta;H^2)}
0764   \le\nu^{1/2}A_0+2G.
0765   \label{eq:restart-linear-time}
0766  \end{equation}
0767  Equations \eqref{eq:restart-linear-CH3}--\eqref{eq:restart-linear-time}
0768  give
0769  \begin{align*}
0770   &\norm z_{C H^3}+\norm z_{L^2H^4}+\norm{z_t}_{L^2H^2}\\
0771   &\quad\le
0772   e^{\nu/2}(A_0+\nu^{-1/2}G)
0773   +\sqrt2\left(
0774   e^{\nu/2}(A_0+\nu^{-1/2}G)
0775   +\nu^{-1/2}A_0+\nu^{-1}G\right)
0776   +\nu^{1/2}A_0+2G\\
0777   &\quad\le L_\nu(A_0+G).
0778  \end{align*}
0779  The last inequality follows from
0780  \[
0781   \nu^{1/2}\le\frac{1+\nu}{2},
0782   \qquad
0783   \nu^{-1/2}\le\frac{1+\nu^{-1}}2,
0784   \qquad
0785   e^{\nu/2}\le e^{(\nu+\nu^{-1})/2}.
0786  \]
0787  Fourier truncation and passage to the limit justify the preceding linear
0788  estimates for the stated data class.
0789  
0790  For \(v,z\in H^3_\sigma\), Lemmas~\ref{lem:sobolev-product} and
0791  \ref{lem:riesz-leray} give
0792  \begin{align}
0793   \norm{\Pp\nabla\cdot(v\otimes z)}_{H^2}
0794   &\le C_{\rm q}\norm v_{H^3}\norm z_{H^3},
0795   \label{eq:restart-quadratic-bilinear}\\
0796   \norm{\Pp\nabla\cdot(v\otimes v-z\otimes z)}_{H^2}
0797   &\le C_{\rm q}(\norm v_{H^3}+\norm z_{H^3})
0798   \norm{v-z}_{H^3}.
0799   \label{eq:restart-quadratic-difference}
0800  \end{align}
0801  Indeed,
0802  \[
0803   \norm{\nabla\cdot(v\otimes z)}_{H^2}^2
0804   \le3\sum_{i,j=1}^3\norm{v_i z_j}_{H^3}^2
0805   \le3(C_3^{\rm alg})^2\norm v_{H^3}^2\norm z_{H^3}^2.
0806  \]
0807  
0808  Define
0809  \[
0810   X_\delta:=
0811   \left\{v\in C([0,\delta];H^3_\sigma)\cap L^2(0,\delta;H^4_\sigma):
0812   v_t\in L^2(0,\delta;H^2_\sigma)\right\},
0813  \]
0814  \[
0815   \norm v_{X_\delta}:=\norm v_{C H^3}
0816   +\norm v_{L^2H^4}+\norm{v_t}_{L^2H^2},
0817   \qquad
0818   X_\delta(a):=\{v\in X_\delta:v(0)=a\}.
0819  \]
0820  \(X_\delta\) is a Banach space with this norm, and \(X_\delta(a)\) is closed.
0821  For \(A_0>0\), set \(R:=2L_\nu A_0\) and
0822  \[
0823   \mathbb B_R:=\{v\in X_\delta(a):\norm v_{X_\delta}\le R\}.
0824  \]
0825  The set \(\mathbb B_R\) is nonempty: the zero-forcing heat trajectory
0826  \(v^{\rm lin}(t)=e^{\nu t\Delta}a\) belongs to \(X_\delta(a)\), and the
0827  linear estimate with \(F=0\) gives
0828  \(\norm{v^{\rm lin}}_{X_\delta}\le L_\nu A_0<R\).
0829  For \(v\in\mathbb B_R\), define
0830  \[
0831   \Phi(v)(t):=e^{\nu t\Delta}a
0832   -\int_0^te^{\nu(t-s)\Delta}
0833   \Pp\nabla\cdot(v\otimes v)(s)\dd s.
0834  \]
0835  If \(\delta\le\delta_\nu(a)\), then
0836  \[
0837   \delta^{1/2}\le
0838   \frac{1}{8C_{\rm q}L_\nu^2(1+A_0)}.
0839  \]
0840  \begin{samepage}
0841  The linear estimate and \eqref{eq:restart-quadratic-bilinear} imply
0842  \begin{align*}
0843   \norm{\Phi(v)}_{X_\delta}
0844   &\le L_\nu\bigl(A_0+C_{\rm q}\delta^{1/2}R^2\bigr)\\
0845   &\le L_\nu A_0+\frac{L_\nu A_0^2}{2(1+A_0)}
0846   <R.
0847  \end{align*}
0848  \end{samepage}
0849  \begin{samepage}
0850  For \(v,z\in\mathbb B_R\),
0851  \begin{align*}
0852   \norm{\Phi(v)-\Phi(z)}_{X_\delta}
0853   &\le L_\nu C_{\rm q}\delta^{1/2}
0854   (\norm v_{C H^3}+\norm z_{C H^3})
0855   \norm{v-z}_{C H^3}\\
0856   &\le\frac{A_0}{2(1+A_0)}\norm{v-z}_{X_\delta}
0857   \le\frac12\norm{v-z}_{X_\delta}.
0858  \end{align*}
0859  \end{samepage}
0860  Thus \(\Phi\) has a unique fixed point in \(\mathbb B_R\).  If \(A_0=0\),
```

## RC unforced common-interval higher persistence

Source: `00-analytic-framework.tex [S101]`, LF889–1018.

```text
0889  \(q=R_iR_j(w_iw_j)\).
0890  
0891  Fix \(m\ge3\) and assume \(a\in H^m_\sigma\).  Let \(S_k\) be Fourier
0892  restriction to \(\{\abs\xi\le k\}\), set \(a_k=S_ka\), and replace the
0893  fixed-point map above by
0894  \[
0895   \Phi_k(v)(t):=e^{\nu t\Delta}a_k
0896   -\int_0^te^{\nu(t-s)\Delta}S_k\Pp\nabla\!\cdot
0897     (v\otimes v)(s)\dd s.
0898  \]
0899  The projection \(S_k\) is self-adjoint, contractive on every Sobolev space,
0900  and commutes with the heat flow, \(\Pp\), and spatial derivatives.  The estimates that gave \(\Phi\) its contraction factor at most \(1/2\) apply to
0901  \(\Phi_k\) on the closed radius-\(R\) ball in \(X_\delta(a_k)\).  Its fixed point
0902  \(w^{(k)}=S_kw^{(k)}\) consequently exists on \([0,\delta]\) and satisfies
0903  \begin{equation}
0904   \sup_k\norm{w^{(k)}}_{X_\delta}\le R.
0905   \label{eq:restart-cutoff-uniform-H3}
0906  \end{equation}
0907  Because its Fourier support is bounded, \(w^{(k)}\) belongs to every spatial
0908  Sobolev space.  Self-adjointness of \(S_k\) removes the cutoff from the energy
0909  pairing, so Lemma~\ref{lem:transport-commutator} gives
0910  \[
0911   \frac12\frac{\dd}{\dd t}\norm{w^{(k)}}_{H^m}^2
0912   +\nu\norm{\nabla w^{(k)}}_{H^m}^2
0913   \le K_m\norm{\nabla w^{(k)}}_{L^\infty}
0914         \norm{w^{(k)}}_{H^m}^2.
0915  \]
0916  Set
0917  \[
0918   C_{\nabla,3}:=(2\pi)^{-3/2}
0919   \left(\int_{\R^3}\abs\xi^2\langle\xi\rangle^{-6}\dd\xi\right)^{1/2}.
0920  \]
0921  Fourier inversion and Cauchy--Schwarz give
0922  \(\norm{\nabla v}_\infty\le C_{\nabla,3}\norm v_{H^3}\).  From
0923  \eqref{eq:restart-cutoff-uniform-H3},
0924  \[
0925   \int_0^\delta\norm{\nabla w^{(k)}(s)}_\infty\dd s
0926   \le C_{\nabla,3}\delta R.
0927  \]
0928  Put
0929  \[
0930   F_k(t):=\norm{w^{(k)}(t)}_{H^m}^2
0931   {}+2\nu\int_0^t\norm{\nabla w^{(k)}(s)}_{H^m}^2\dd s.
0932  \]
0933  The differential inequality above gives
0934  \[
0935   F_k(t)\le\norm a_{H^m}^2
0936   {}+2K_m\int_0^t\norm{\nabla w^{(k)}(s)}_\infty F_k(s)\dd s.
0937  \]
0938  Gronwall's inequality now gives the uniform bound
0939  \begin{equation}
0940   \sup_{0\le t\le\delta}\left(
0941   \norm{w^{(k)}(t)}_{H^m}^2
0942  {}+2\nu\int_0^t\norm{\nabla w^{(k)}(s)}_{H^m}^2\dd s
0943   \right)
0944   \le e^{2K_mC_{\nabla,3}\delta R}\norm a_{H^m}^2.
0945   \label{eq:restart-cutoff-uniform-Hm}
0946  \end{equation}
0947  Since
0948  \(
0949   \norm f_{H^{m+1}}^2=\norm f_{H^m}^2+\norm{\nabla f}_{H^m}^2
0950  \), this also bounds \(w^{(k)}\) in \(L^2H^{m+1}\).  The cutoff equations
0951  and Lemma~\ref{lem:sobolev-product} give, with a constant depending only on
0952  \(m\),
0953  \[
0954   \norm{\partial_tw^{(k)}}_{L^2H^{m-1}}
0955   \le \nu\norm{w^{(k)}}_{L^2H^{m+1}}
0956   +\sqrt3\,C_m^{\rm alg}\delta^{1/2}
0957     \norm{w^{(k)}}_{L^\infty H^m}^2,
0958  \]
0959  so the time derivatives are uniformly bounded in \(L^2H^{m-1}\).
0960  
0961  It remains to identify the higher-order weak limit with the fixed point already
0962  constructed in \(X_\delta(a)\).  The contraction estimate gives
0963  \[
0964   \norm{w^{(k)}-w}_{X_\delta}
0965   \le2\norm{\Phi_k(w)-\Phi(w)}_{X_\delta}.
0966  \]
0967  The linear bound proved above controls the right-hand side by a constant times
0968  \[
0969   \norm{(S_k-I)a}_{H^3}
0970   +\norm{(S_k-I)\Pp\nabla\!\cdot(w\otimes w)}_{L^2H^2},
0971  \]
0972  which tends to zero.  Hence \(w^{(k)}\to w\) in \(X_\delta\).  Weak
0973  compactness in the three uniformly bounded higher-order spaces and uniqueness
0974  of the distributional limit place
0975  \[
0976   w\in L^\infty(0,\delta;H^m_\sigma)\cap L^2(0,\delta;H^{m+1}_\sigma),
0977   \qquad w_t\in L^2(0,\delta;H^{m-1}_\sigma).
0978  \]
0979  Lemma~\ref{lem:adjacent-trace} supplies the representative
0980  \(w\in C([0,\delta];H^m_\sigma)\); its trace at zero is \(a\), since it is
0981  the distributional trace of the already constructed \(C H^3\) solution.
0982  Assume now that \(a\in H^\infty_\sigma\).  Set \(W_0=w\) and define
0983  recursively
0984  \[
0985   Q_n=R_iR_j\sum_{a=0}^n\binom naW_{a,i}W_{n-a,j},
0986  \]
0987  \[
0988   W_{n+1}=\nu\Delta W_n
0989   -\sum_{a=0}^n\binom na(W_a\cdot\nabla)W_{n-a}-\nabla Q_n.
0990  \]
0991  If \(W_0,\ldots,W_n\in C H^{m+2}\), then
0992  Lemmas~\ref{lem:sobolev-product} and \ref{lem:riesz-leray} give
0993  \[
0994   Q_n\in C H^{m+1},
0995   \qquad
0996   W_{n+1}\in C H^m.
0997  \]
0998  Since \(m\) is arbitrary, induction gives \(W_n,Q_n\in C H^m\) for every
0999  \(n,m\in\Nzero\).  The equation first gives
1000  \(W_0\in C^1H^m\) and \(\partial_tW_0=W_1\).  If
1001  \(W_a=\partial_t^aw\) for \(0\le a\le n\), distributional differentiation
1002  of \(q=R_iR_j(w_iw_j)\) and Lemma~\ref{lem:mixed-leibniz} give
1003  \(\partial_t^nq=Q_n\).  Differentiation of the momentum equation then gives
1004  \(\partial_tW_n=W_{n+1}\).  Induction gives
1005  \[
1006   W_n\in C^1H^m,
1007   \qquad
1008   \partial_tW_n=W_{n+1},
1009   \qquad
1010   W_n=\partial_t^nw,
1011   \qquad
1012   Q_n=\partial_t^nq.
1013  \]
1014  Time translation proves the result for every \(s\ge0\).  Lemma
1015  \ref{lem:shifted-mild-restriction} and the at-most-one assertion make all
1016  nonempty classes below \(\tau_{\nu,3}^{\max}(s,a)\) compatible; their union
1017  is the maximal shifted pressure-normalized \(H^3\) mild history.
1018  \end{proof}
```
