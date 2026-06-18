# PCTP.hard Averaged-Route Reduction And AACT.KX Handoff

## Status

Conditional theorem-note attempt for `PCTP.hard`.

This note records the strongest noncircular solve route I can currently extract from the MCP surfaces. It reduces the terminal-tail theorem to the same-tail field-admission input, an averaged ACT budget theorem on SCF-good moving cylinders, and the terminal finite-cover globalization.

## Target

`PCTP.hard` is

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout}.
```

Equivalently, at a first finite classical endpoint, the endpoint faces must be excluded:

```math
Dead,\qquad response\text{-}margin\text{-}collapse,\qquad packing\text{-}detached,\qquad tower\text{-}blown,\qquad Jump,
\qquad response\text{-}margin\text{-}collapse.
```

## Strategy

Use the averaged branch as the primary production branch and invoke old pointwise readout only after averaged endpoint closure.

The intended order is

```math
OriginalSmoothData
\Longrightarrow
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\ +\ SCFBaseLocalModulus_N
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}
\Longrightarrow
End_{NS,avg}
\Longrightarrow
READ.COVER+READ.END
\Longrightarrow
End_{NS}.
```

This order keeps `READ.COVER` terminal. It enters only after `End_NS_avg`.
The same-tail `SCFBaseLocalModulus_N` input is upstream of `SCF_avg^m`; it is
not supplied by `READ.COVER` or by the later pointwise readout layer.

## Lemma 1: endpoint-free branch split

Let `(u,p)` be the maximal smooth periodic solution on `[0,T_*)`. On any same-fluid terminal approach tail, one of the endpoint faces is realized or the branch has the finite class-membership data, including the retained strict-response margins or closed Part predicate encoding, required to run the averaged route.

Proof. `EndpointFace.Type`, `PackGauge.Dichotomy`, and the repaired Part closedness row classify failure of `Pack`, `Part`, `Field`, tower amplitude, and strict Part response margins into the displayed endpoint faces. Therefore the proof of `PCTP.hard` can be run by contradiction on the face-free branch. On that branch, pack distortion stays finite, participation and its response margins stay active, averaged field failure is routed to `Jump_avg`, and tower escape is routed to the averaged tower face. This gives the admissible domain for the averaged production route.

## Lemma 2: averaged good-cylinder production below the endpoint layer

On the face-free branch, finite energy and local suitability give material-a.e. `SCF_base` good cylinders on bounded-distortion same-fluid charts.

Proof. The surface `SGC.A_a.e` supplies the a.e. good-cylinder theorem from

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc},
```

after pullback by a bounded-distortion same-fluid chart. The complement is the bad material set `\mathcal B_{\varepsilon_m}^{\Phi}`. The same surface routes this complement through `CAVG.J`. Hence on the non-Jump branch, compact subsets of the terminal material window admit finite `SCF_base` good subcovers.

## Lemma 3: good cylinders produce averaged tower seeds

On every `SCF_base` good same-fluid cylinder with admissible distortion, `ATD_m^\varepsilon` gives a finite-depth averaged affine tower packet on a smaller cylinder.

Proof. The moving-cylinder gain theorem gives CKN epsilon regularity in the moving frame, derivative bounds through depth `m+2`, pressure/viscous readout for the `K_q` rungs, and the averaged affine seed

```math
X_{\theta r}(s_a)\le\eta_X.
```

It also gives the local integrability inputs

```math
X_{\theta r}\in L^\infty,
\qquad
N_{\theta r}\in L^1,
\qquad
\mathcal K_{\le m}^{avg,\theta r}\in L^1.
```

Thus each good cylinder supplies the local input for `AACT.KX`.

## Lemma 4: AACT.KX handoff

Assume the averaged ACT theorem:

```math
SCF_{avg}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{avg}.
```

Then the averaged receiver and endpoint chain closes.

Proof. `AVG.RCV.A` gives

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg}.
```

The existing averaged consumer chain gives

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

`AVG.END.A` then gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

Finally the downstream readout layer gives

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow End_{NS}.
```

This closes the old pointwise endpoint matrix in the valid terminal order.

## Conditional theorem

If the same-tail `SCFBaseLocalModulus_N` input, the averaged ACT theorem, and
the terminal finite-cover globalization hold on the face-free branch, then
`PCTP.hard` follows.

Proof. Suppose `T_*<\infty` and take a first finite endpoint. If one of `Dead`, `packing-detached`, `tower-blown`, `Jump`, or `response-margin-collapse` occurs, it is an endpoint face. On the face-free branch, Lemmas 2 and 3 supply finite `SCF_base` good moving cylinders and local averaged tower seeds, while the Part closedness row may be spent only with the retained response-margin or closed-predicate input. The same-tail modulus admits the retained Field row into the averaged Field row on this terminal tail. By the assumed `AACT.KX` globalization, these local packets produce `DTC.A_avg` across the required finite terminal cover. Lemma 4 gives `End_NS_avg`, and the terminal readout layer gives `End_NS`. Only after that point does the pointwise endpoint matrix exclude every first finite endpoint face. This contradicts the first finite class exit supplied by `ECQ.A`. The terminal-tail retained `H^s`, `s>5/2`, readout is supplied by `End_NS` and the continuation bridge; `PCTP.cond` then gives a common preterminal restart lifespan and continues the same smooth solution past `T_*`.

## Attempted discharge of AACT.KX

The natural averaged budget is

```math
\frac{d}{dt}X_{avg}+cN_{avg}
\le (L_0+C A_{core}^{avg})X_{avg}
+C_X X_{avg}^{1/2}N_{avg}+F_0,
```

```math
\frac{d}{dt}A_{core}^{avg}
\le \mathcal K_{\le m}^{avg}+\mathcal T_{tri}(A_{core}^{avg}),
```

```math
\mathcal K_{\le m}^{avg}
\le C(X_{avg}^{1/2}N_{avg}^{1/2}+X_{avg})+F_K.
```

The local `ATD_m^\varepsilon` theorem supplies the small seed and the finite local coefficient ledgers on each shrunken good cylinder. The single-cylinder coefficient margin is retained if the scheduler interval satisfies

```math
\left(\eta_X+\int_I(F_0+F_K)\right)
\exp\left(\int_I(L_0+C A_{core}^{avg}+1)\right)
\le 2\eta_X.
```

The proof therefore reduces to a finite-cover scheduler theorem: the terminal same-fluid cover must be selected so that the averaged budget can be summed across the required finite parameter set with a common overlap bound and common scheduler partition.

This is the first unresolved analytic item in this attempt.

## Resulting exact work item

Prove the following theorem.

```math
\textbf{AACT.Global:}
\quad
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
```

on every face-free terminal same-fluid approach tail, with no use of `READ.COVER`, `End_NS`, pointwise retained native forcing, or pointwise `DTC.A` upstream.

Once `AACT.Global` is installed, the route above gives `PCTP.hard`.

## Verdict

The PCTP.hard solve route should be the averaged branch, not the retained pointwise branch. The remaining mathematical burden is now sharply localized: prove `AACT.Global`, the finite-cover averaged ACT budget theorem from `SCF_base` good cylinders to `DTC.A_avg` on the face-free terminal branch.
