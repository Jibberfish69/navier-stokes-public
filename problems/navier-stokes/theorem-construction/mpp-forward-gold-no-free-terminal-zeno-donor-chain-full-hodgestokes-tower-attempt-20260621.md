---
theorem_id: forward-gold-no-free-terminal-zeno-donor-chain-full-hodgestokes-tower-attempt-20260621
status: direct-attack-proves-full-tuple-tower-visibility-not-forward-no-free-closure
logical_landing_node: no_free_terminal_zeno_donor_chain_full_hodgestokes_tower_attempt
edge_effect: "Attacks NoFreeTerminalZenoDonorChain.A using the full Hodge-Stokes participation tuple and the coupled mixed derivative tower. The attack proves a sharper visibility theorem: after finite donor trees, retained signed partners, entrance leaves, and legal exits are removed, an infinite terminal Zeno donor chain carrying a normalized bad pulse cannot remain invisible to the full cycle. Uniform coupled tower radius survival gives endpoint UI and kills the pulse. Failure of radius survival gives finite-rung/tower readout or high-rung analytic collapse; after the threshold/source split a retained selected atom cannot be pure high-rung-only and must move into high-factor/tensor-action, height/source-square, finite Sobolev rung blowup, endpoint storage jump, legal/collar loss, or charged endpoint/profile routing. This does not prove the forward no-free theorem because the high-factor/source-square/no-waste payment is still not produced. MinimalZenoProfileProduction.A is reached only after endpoint residue is evacuated or charged and nontrivial negative-time orbit survives; positive endpoint source atoms route first to endpoint storage jump, legal/collar loss, signed-saturation/high-factor source, or CM service failure."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-door1-no-free-terminal-zeno-donor-chain-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-door1-minimal-zeno-donor-chain-trace-dichotomy-attempt-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-terminal-zeno-donor-chain-shared-hinge-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-terminal-zeno-fourbody-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-zeno-chain-profile-or-nowaste-forcing-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-atom-not-high-rung-only-after-threshold-split-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-remaining-defect-core-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tuple-endpoint-defect-cm-consumption-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-minimal-zeno-profile-production-full-tuple-recheck-20260621.md
---

# No-Free Terminal Zeno Donor Chain: Full Hodge-Stokes / Tower Attack

Date: 2026-06-21

## 0. Aim

This note attacks

\[
\boxed{
\texttt{NoFreeTerminalZenoDonorChain.A}
}
\tag{NZT.1}
\]

using the two upgrades now in force:

\[
\boxed{
\text{the selected packet carries the full Hodge-Stokes participation tuple}
}
\tag{NZT.2}
\]

and

\[
\boxed{
\text{the terminal time-face branch is tested by the coupled mixed tower.}
}
\tag{NZT.3}
\]

The target is not another scalar source estimate.  The question is whether an
infinite terminal Zeno donor chain can keep feeding a normalized bad pulse
while the whole pressure--transport--viscosity--time--divergence packet and all
tower rungs show no full-cycle payment.

The answer from current inputs is:

\[
\boxed{
\text{the chain cannot stay invisible, but the forward no-free theorem is not
closed.}
}
\tag{NZT.4}
\]

The full tuple plus tower force a visibility fork.  They do not yet produce the
missing unweighted same-carrier payment.

## 1. Reduced donor-chain branch

Start after the finite Door 1 accounting has been supplied:

\[
\begin{gathered}
\text{retained signed partners, legal exits, finite donor trees,}\\
\text{entrance leaves, and finite pair-weight defects are paid.}
\end{gathered}
\tag{NZT.5}
\]

The remaining branch is an infinite same-fluid donor chain

\[
\cdots\to P^{-2}\to P^{-1}\to P^0,
\qquad
r_j\downarrow0,
\qquad
t_j\uparrow T^\ast,
\tag{NZT.6}
\]

with normalized selected positive source marginal

\[
\mu_j(ds)=a_j(s)\,ds,
\qquad
a_j\ge0,
\qquad
s\in[-1,0].
\tag{NZT.7}
\]

The bad pulse hypothesis is

\[
\int_{-1}^{0}a_j(s)\,ds\ge c_0>0
\tag{NZT.8}
\]

and failure of the no-free theorem is the terminal atom condition

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_{j\to\infty}
\int_{-\theta}^{0}a_j(s)\,ds
>0.
}
\tag{NZT.9}
\]

The model is still

\[
a_j(s)=a\,\tau_j^{-1}{\bf 1}_{(-\tau_j,0]}(s),
\qquad
\tau_j\downarrow0.
\tag{NZT.10}
\]

## 2. Full tuple prevents channel-hiding

The retained packet must carry

\[
R_{j,Q}+N_{j,Q}+P_{j,Q}+V_{j,Q}=L_{j,Q},
\qquad
I_{j,Q}=0
\tag{NZT.11}
\]

on the same selected carrier.  In concrete Navier--Stokes terms this is the
localized record of

\[
\partial_s v_j+(v_j\cdot\nabla)v_j+\nabla q_j-\nu\Delta v_j=0,
\qquad
\nabla\cdot v_j=0,
\tag{NZT.12}
\]

including cutoff, collar, sign, and selection records.

By the full Hodge-Stokes residual core, after `(NZT.11)` is retained, failure
of same-carrier no-loss can only occur through

\[
\boxed{
\mathcal R_{\rm sel}
\cup
\mathcal R_{\rm sat}
\cup
\mathcal R_{\rm jump}
\cup
\mathcal R_{\rm legal}.
}
\tag{NZT.13}
\]

Here

\[
\mathcal R_{\rm sel}
=
\text{unbounded selector complexity or carrier drift,}
\tag{NZT.14}
\]

\[
\mathcal R_{\rm sat}
=
\text{the infinite terminal Zeno donor chain from the missing negative partner,}
\tag{NZT.15}
\]

\[
\mathcal R_{\rm jump}
=
\text{positive endpoint storage jump,}
\tag{NZT.16}
\]

and

\[
\mathcal R_{\rm legal}
=
\text{non-summable or non-terminal-AC legal/collar residual.}
\tag{NZT.17}
\]

Therefore the full tuple already proves:

\[
\boxed{
\text{the infinite donor chain is not allowed to disappear into an unspecified
pressure, viscosity, or projection channel.}
}
\tag{NZT.18}
\]

It must be paid, become an endpoint jump, become legal/collar loss, drift out
of the selected carrier, or remain as the signed-saturation Zeno child.

## 3. Coupled mixed tower branch

For the normalized cylinders,

\[
v_j(s,y)=r_j u(T+r_j^2s,x_j+r_jy),
\qquad
q_j(s,y)=r_j^2p(T+r_j^2s,x_j+r_jy),
\tag{NZT.19}
\]

the mixed tower is

\[
W_{j,m,\alpha}:=\partial_s^m\partial_y^\alpha v_j,
\qquad
Q_{j,m,\alpha}:=\partial_s^m\partial_y^\alpha q_j.
\tag{NZT.20}
\]

The rungs obey

\[
\left(\partial_s+v_j\cdot\nabla-\nu\Delta\right)W_{j,m,\alpha}
+\nabla Q_{j,m,\alpha}
=
-B_{j,m,\alpha},
\tag{NZT.21}
\]

with the binomial tower coupling

\[
B_{j,m,\alpha}
=
\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\ne(0,0)}}
{m\choose a}{\alpha\choose\beta}
\left(W_{j,a,\beta}\cdot\nabla\right)
W_{j,m-a,\alpha-\beta}.
\tag{NZT.22}
\]

The factorial weights cancel the binomial coefficients:

\[
{\tau^m\rho^{|\alpha|}\over m!\,\alpha!}
{m\choose a}{\alpha\choose\beta}
\|W_{j,a,\beta}\|\,\|W_{j,m-a,\alpha-\beta}\|
=
A_{j,a,\beta}A_{j,m-a,\alpha-\beta}.
\tag{NZT.23}
\]

Across nested cylinders,

\[
W_{j+1,m,\alpha}(s,y)
=
\lambda_j^{2m+|\alpha|+1}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_jy),
\qquad
\lambda_j={r_{j+1}\over r_j}.
\tag{NZT.24}
\]

Thus the donor chain is not a sequence of independent packets.  It is the same
solution seen through a coupled velocity--pressure--incompressibility tower.

## 4. Uniform tower radius kills the bad pulse

Let

\[
\mathcal E^{(\sigma)}_{j,\chi}(\tau,\rho;s)
:=
{1\over2}
\sum_{m,\alpha}
{\tau^{2m}\rho^{2|\alpha|}
\over(m!)^2(\alpha!)^2}
\|\chi\,\partial_s^m\partial_y^\alpha v_j(s)\|_{H^\sigma_y}^2.
\tag{NZT.25}
\]

If there are \(\tau_*>0\), \(\rho_*>0\), and \(E_*<\infty\) such that

\[
\sup_{j}\sup_{-1\le s\le0}
\mathcal E^{(\sigma)}_{j,\chi}(\tau_*,\rho_*;s)
\le E_*,
\tag{NZT.26}
\]

then the installed tower-radius bridge gives a uniform bound

\[
0\le a_j(s)\le C_{\rm UI}.
\tag{NZT.27}
\]

Consequently,

\[
\int_{-\theta}^{0}a_j(s)\,ds
\le C_{\rm UI}\theta,
\tag{NZT.28}
\]

and `(NZT.9)` is impossible.

So any actual counterexample to `NoFreeTerminalZenoDonorChain.A` must satisfy

\[
\boxed{
\text{uniform coupled mixed-tower radius survival fails.}
}
\tag{NZT.29}
\]

This is the first genuine gain from adding the tower to the full tuple.

## 5. What radius failure gives

Canonical coupled radius failure has two branches.

The first branch is finite-rung failure:

\[
\exists(m,\alpha)\quad
\int\eta^2|W_{j,m,\alpha}|^2\to\infty.
\tag{NZT.30}
\]

This is a visible tower readout.  After same-witness CM admission, it is
Part/Field-facing finite-rung failure.  It is not an invisible no-free donor
chain.

The second branch is high-rung-only collapse:

\[
\sup_j\int\eta^2|W_{j,m,\alpha}|^2<\infty
\quad
\text{for every fixed }(m,\alpha),
\tag{NZT.31}
\]

while every positive factorial radius fails:

\[
\forall \tau_*>0,\ \forall\rho_*>0,\qquad
\limsup_j\sup_s
\mathcal E^{(\sigma)}_{j,\chi}(\tau_*,\rho_*;s)
=\infty.
\tag{NZT.32}
\]

High-rung-only collapse is not, by itself, the selected terminal atom.  The
installed high-rung tests show that analytic-radius failure can occur while the
finite-order selected carrier remains uniformly integrable.

Therefore a retained selected atom must pass through the selected-source
threshold split.

## 6. The selected atom is not pure high-rung-only

For the projected Navier--Stokes source

\[
N_j=-\mathbb P\nabla\cdot(v_j\otimes v_j),
\qquad
g_j=\sigma_j\cdot N_j,
\qquad
|\sigma_j|\le1,
\tag{NZT.33}
\]

write

\[
A_j(s)=\int[g_j(s,y)]_+\,dy.
\tag{NZT.34}
\]

If a terminal selected atom survives,

\[
\int_{I_j}A_j(s)\,ds\ge a>0,
\qquad
|I_j|=\theta_j\downarrow0,
\tag{NZT.35}
\]

then the threshold-margin split gives the exact alternatives:

\[
\boxed{
\text{nonvanishing projected tensor action,}
}
\tag{NZT.36}
\]

\[
\boxed{
\text{height/source-square/tail-UI failure,}
}
\tag{NZT.37}
\]

or

\[
\boxed{
\text{finite Sobolev selected-source gradient blowup.}
}
\tag{NZT.38}
\]

In particular, under tensor-small and height-controlled hypotheses one gets

\[
\theta_j
\operatorname*{ess\,sup}_{s\in I_j}
\|v_j(s)\|_{H^{\gamma+1}}^2
\to\infty
\qquad
(\gamma>5/2).
\tag{NZT.39}
\]

Thus a retained selected atom is not a pure high-rung analytic-tail event.  It
forces a high-frequency/finite-Sobolev/source-gradient branch unless the height
or tensor-action branch is active.

This proves a visibility statement:

\[
\boxed{
\text{terminal Zeno donor-chain atom}
\Rightarrow
\text{finite-rung/high-factor/source-square/no-waste/profile-facing readout.}
}
\tag{NZT.40}
\]

It does not prove the readout has a summable budget.

## 7. Full-cycle trace inequality

The four-body loop gives the exact terminal strip inequality whenever the
same-carrier full-cycle measure inequality is available:

\[
dL_{4B,j}+dD_{4B,j}+c\,d\mu_j\le dR_j,
\qquad
c>0,
\qquad
dD_{4B,j}\ge0.
\tag{NZT.41}
\]

On \((-\theta,0]\),

\[
c\int_{-\theta}^{0}a_j(s)\,ds
\le
R_j((-\theta,0])
+
L_{4B,j}(-\theta)-L_{4B,j}(0).
\tag{NZT.42}
\]

Therefore the bad pulse is removed if

\[
\lim_{\theta\downarrow0}\limsup_j
R_j((-\theta,0])=0
\tag{NZT.43}
\]

and

\[
\lim_{\theta\downarrow0}\limsup_j
\left[
L_{4B,j}(-\theta)-L_{4B,j}(0)
\right]_+
=0.
\tag{NZT.44}
\]

This is exactly `FourBodyTerminalTraceAC.A`.

If `(NZT.43)` fails, the survivor is

\[
\boxed{
\mathcal R_{\rm legal}
=
\text{legal/collar loss or non-terminal-AC legal residual.}
}
\tag{NZT.45}
\]

If `(NZT.44)` fails, the survivor is

\[
\boxed{
\mathcal R_{\rm jump}
=
\text{positive endpoint storage jump.}
}
\tag{NZT.46}
\]

So legal/collar loss and endpoint storage jump are not metaphors.  They are
the two exact ways the terminal strip inequality can fail after the full cycle
has been retained.

## 8. Where MinimalZenoProfileProduction enters

`MinimalZenoProfileProduction.A` does not consume a positive endpoint source
atom directly.  The atom can vanish on every compact negative-time strip:

\[
\int_{-1}^{-b}a_j(s)\,ds\to0
\qquad
\text{for every }b>0.
\tag{NZT.47}
\]

Therefore profile production begins only after the endpoint residue has been
removed or charged and the Zeno orbit still retains nontrivial same-carrier
mass on compact negative-time strips.

The resulting profile branch is:

\[
\boxed{
\begin{gathered}
\text{endpoint residue evacuated or charged,}\\
\text{same-carrier nontriviality retained on }s<0,\\
\text{canonical gauge/no-drift/unique tangent,}\\
\text{unweighted renormalized action and stationarity,}\\
\text{homogeneity, full-tuple defect evacuation, and sphere smoothness.}
\end{gathered}
}
\tag{NZT.48}
\]

That is exactly `MinimalZenoProfileProduction.A`.  It is not the first landing
place for a positive terminal source atom.

## 9. Direct proof attempt and failure point

Try to prove `NoFreeTerminalZenoDonorChain.A` by contradiction.  Assume an
infinite terminal donor chain carries `(NZT.9)` and that no full-cycle payment
is visible:

\[
\mathcal R_{\rm legal}=0,
\qquad
\mathcal R_{\rm jump}=0,
\qquad
\mathcal R_{\rm sel}=0,
\tag{NZT.49}
\]

and assume no finite tower/source readout occurs:

\[
\text{no finite-rung tower failure, no finite Sobolev source-gradient blowup,
and no tensor-action or height branch.}
\tag{NZT.50}
\]

Then `(NZT.26)` cannot hold, because it would contradict `(NZT.9)` by endpoint
UI.  Thus the tower radius collapses.

Finite-rung collapse is excluded by `(NZT.50)`, leaving high-rung-only collapse.
But `(NZT.36)`--`(NZT.39)` say a retained selected atom is not pure
high-rung-only once tensor action and height have been separated.  Therefore
the assumptions `(NZT.49)`--`(NZT.50)` are inconsistent.

This proves the no-invisibility theorem:

\[
\boxed{
\text{a normalized bad terminal donor pulse cannot survive with all full-cycle
readouts/payments absent.}
}
\tag{NZT.51}
\]

What it does not prove is the stronger forward no-free theorem.  The contradiction
uses the absence of the high-factor/source-square/finite-rung branches.  Current
inputs identify those branches; they do not give them a summable unweighted
budget.

## 10. Exact surviving branch

The full tuple plus tower attack reduces the infinite terminal Zeno donor chain
to the following exact outcomes.

First, the pulse is killed forward by endpoint UI:

\[
\boxed{
\text{uniform coupled mixed tower radius survives}
\Longrightarrow
\text{endpoint UI}
\Longrightarrow
\text{no terminal atom.}
}
\tag{NZT.52}
\]

Second, the pulse is visibly paid or charged:

\[
\boxed{
\mathcal R_{\rm legal}
\quad\text{or}\quad
\mathcal R_{\rm jump}
\quad\text{or visible viscous/pressure/collar loss.}
}
\tag{NZT.53}
\]

Third, the pulse is a finite-rung/high-factor readout:

\[
\boxed{
\text{finite Sobolev source-gradient blowup, tensor action, or height/source-square
branch.}
}
\tag{NZT.54}
\]

This is visible, but it still needs source-square, critical-strain/CKN,
strict no-waste, or CM service consumption to become a paid contradiction.

Fourth, after endpoint residue is evacuated or charged, a nontrivial negative
time recurrent orbit remains:

\[
\boxed{
\texttt{MinimalZenoProfileProduction.A}.
}
\tag{NZT.55}
\]

Thus the surviving branch is not an invisible same-fluid donor chain.  The
honest remaining forward-gold burden is:

\[
\boxed{
\text{pay the high-factor/height/finite-rung readout by an unweighted same-carrier
reserve, or route the charged endpoint/profile branch through the already
declared consumers.}
}
\tag{NZT.56}
\]

## 11. Verdict

This attempt does not prove `NoFreeTerminalZenoDonorChain.A` as a forward
anti-atom theorem.

It proves the stronger diagnostic that was missing:

\[
\boxed{
\text{full Hodge-Stokes participation tuple + coupled tower}
\Rightarrow
\text{no invisible terminal Zeno donor-chain feed.}
}
\tag{NZT.57}
\]

The exact failure of forward closure is now:

\[
\boxed{
\text{visibility is installed, but unweighted same-carrier payment of the
visible high-factor/source-square/no-waste branch is still not produced.}
}
\tag{NZT.58}
\]

So the branch lands as:

\[
\boxed{
\begin{array}{rcl}
\text{non-AC full-cycle residual} &\Rightarrow& \text{legal/collar loss},\\[1mm]
\text{positive storage atom} &\Rightarrow& \text{endpoint storage jump},\\[1mm]
\text{endpoint residue charged/evacuated plus recurrent orbit}
&\Rightarrow& \texttt{MinimalZenoProfileProduction.A},\\[1mm]
\text{retained selected atom with no trace payment}
&\Rightarrow& \text{high-factor/source-square/finite-rung readout still needing
an unweighted payment theorem.}
\end{array}
}
\tag{NZT.59}
\]

