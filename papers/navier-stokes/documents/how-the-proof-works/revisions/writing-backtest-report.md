# Writing diagnosis and Navier--Stokes backtest

## Diagnosis

Computer History shows one recurring first error: Codex leaves Thomas's developing causal thought and replaces it with a coverage structure, then writes transitions around that structure. Four visible failures follow from that choice:

- accepted language gets regenerated instead of preserved;
- a private beat map leaks onto the page as a topical tour;
- names such as criticality, Zeno, and Sobolev ascent arrive before their causes are shown;
- mathematical inclusion, compilation, and clean rendering are treated as evidence that the writing works.

The repair is upstream. Preserve the accepted sentence sequence as the writing surface. Add a sentence or display only when the consequence already on the page requires it. Keep the beat map private, and let build checks judge only the artifact.

Computer History contains no complete approved short version. The latest explicit approval stops after velocity, acceleration, and jerk, and the prose around that boundary began in a Codex draft. The backtest below preserves Thomas's controlling sentences, with obvious spelling corrected, and follows his later ordering instructions without presenting the result as approved prose.

## How the Proof Works

A vortex stretches and thins. As its core narrows, velocity changes across less space, so its gradients become steeper even while its kinetic energy can remain finite.

Navier--Stokes scales this concentration by

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
\]

and its Sobolev norm scales by

\[
\|u_\lambda(\cdot,t)\|_{\dot H^s}
=
\lambda^{s-\frac12}
\|u(\cdot,\lambda^2t)\|_{\dot H^s}.
\]

Below \(s=\tfrac12\), concentration makes the norm smaller. Above \(s=\tfrac12\), it makes the norm larger. At \(s=\tfrac12\), the norm does not change. That is the critical height: concentration can move into smaller regions without increasing the critical norm.

The scaling also shortens time. If each stage contracts space by \(\lambda^{-1}\), its time interval contracts by \(\lambda^{-2}\). Repeating the contraction gives

\[
\tau_0+\tau_0\lambda^{-2}+\tau_0\lambda^{-4}+\cdots
=
\frac{\tau_0}{1-\lambda^{-2}}
<\infty.
\]

So progressively smaller stages can fit inside one finite interval. That is the Zeno possibility.

In order for a singularity to happen, velocity has to blow up.

In order for that to happen, its acceleration would also have to blow up, which means its jerk has to blow up, and so on and so on:

\[
u,\qquad
\partial_tu,\qquad
\partial_t^2u,\qquad
\ldots
\]

What you would expect to see in this pattern, if a singularity were to form, as you go up the time derivatives, you would expect to see less spatial regularity, not more.

Yet the differentiated equations run in the other direction:

\[
\begin{aligned}
\partial_tu
&=
\nu\Delta u-(u\cdot\nabla)u-\nabla p,
\\[4pt]
\partial_t^2u
&=
\nu\Delta\partial_tu
-(\partial_tu\cdot\nabla)u
-(u\cdot\nabla)\partial_tu
-\nabla\partial_tp,
\\[4pt]
\partial_t^3u
&=
\nu\Delta\partial_t^2u
-(\partial_t^2u\cdot\nabla)u
-2(\partial_tu\cdot\nabla)\partial_tu
-(u\cdot\nabla)\partial_t^2u
-\nabla\partial_t^2p.
\end{aligned}
\]

At order \(n\),

\[
\partial_t^{n+1}u
=
\nu\Delta\partial_t^nu
-
\sum_{a=0}^{n}
\binom{n}{a}
(\partial_t^au\cdot\nabla)
\partial_t^{n-a}u
-
\nabla\partial_t^np.
\]

Each increase in temporal order carries a viscous Laplacian acting on the preceding temporal response. Write

\[
E_s(t)=\frac12\|\Lambda^su(t)\|_2^2.
\]

Pairing the viscous term at height \(s\) gives

\[
E_s'=\mathcal P_s-2\nu E_{s+1},
\]

where \(\mathcal P_s\) contains the transport and pressure contribution. Starting from the critical energy \(H=E_{1/2}\), repeated differentiation gives

\[
H^{(n)}
=
(-2\nu)^nE_{n+\frac12}
+
\sum_{j=0}^{n-1}
(-2\nu)^j
\partial_t^{n-1-j}\mathcal P_{j+\frac12}.
\]

The \(n\)-th temporal derivative reaches spatial energy at height \(n+\tfrac12\). As you do that, you get higher-order Sobolev embeddings. For every finite \(k\),

\[
s>k+\frac32
\quad\Longrightarrow\quad
H^s(\mathbb R^3)\hookrightarrow C^k(\mathbb R^3),
\]

so control at every finite Sobolev height gives

\[
H^\infty
=
\bigcap_{m<\infty}H^m
\hookrightarrow
C^\infty.
\]

That is the reversal. The singularity pattern was expected to reveal less spatial regularity as temporal order rose. The equations expose progressively higher spatial regularity.

The tower is handled one finite rectangle at a time. Fix temporal order \(N\) and Sobolev height \(M\). Collect

\[
V_r=\partial_t^ru,
\qquad
Q_r=\partial_t^rp,
\]

through \(0\le r\le N\) and \(0\le s\le M\) in the pressure-complete block \(\mathcal R_{N,M}[u_0]\). Larger blocks extend smaller ones. Their overlapping coordinates agree because every entry is generated from one initial datum through one differentiated history.

Those compatible blocks determine the projective intersection

\[
\mathcal I[u_0]
=
\bigl(\mathcal R_{N,M}[u_0]\bigr)_{N,M<\infty}.
\]

The intersection turns the apparently infinite requirement into finite demands:

\[
\sup_{0<T<T_*}
\mathfrak R_{N,M}(u;T)<\infty
\qquad
\text{for each fixed }N,M.
\]

Every demand is finite. No estimate has to control all indices at once. Once those finite estimates are paid, the zeroth temporal row reaches \(T_*\) in every \(H^m\), hence in \(H^\infty\), and thus in \(C^\infty\). That smooth terminal state restarts the local solution beyond \(T_*\), contradicting \(T_*\) being the first singular time.

\[
u_0
\longrightarrow
(V_r,Q_r)
\longrightarrow
\mathcal R_{N,M}
\longrightarrow
\mathcal I[u_0]
\longrightarrow
H^\infty
\hookrightarrow
C^\infty
\longrightarrow
\text{continuation}.
\]

## Replay result

The passage preserves Thomas's controlling sentences, derives the critical exponent and Zeno contraction, places three raw derivatives before the binomial shorthand, keeps temporal order becoming Sobolev height as one continuous realization, and delays rectangles and finite estimates until that realization has landed. It remains an unapproved backtest until Thomas judges the writing.
