# MPP Forward-Gold Strict No-Waste Post-Critical-Currency Closeout

Date: 2026-06-20

## Status

Post-critical-currency closeout of the strict no-waste/Lyapunov branch.

The no-waste route remains a valid possible architecture only in a genuinely
strong form: a lower-bounded object must control unweighted heat-scale critical
action on the selected carrier.  The available local-energy, pressure-corrected,
commutator, pressure-memory, Volterra-memory, and packet-local
nonlinear-corrector mechanisms do not produce that object from current inputs.

This note records the exact reason, so the branch is not reopened as "pressure
correction," "commutator coercivity," "cubic flux," "pressure memory," or
"local nonlinear normal form."

## 1. The strict no-waste target

The heat-scale recurrence obstruction would be killed by a lower-bounded
functional \(L\) satisfying

```math
-{d\over ds}L(s)
\ge
c\,\mathcal A_{\rm crit}(s)
-
\mathcal R_{\rm legal}(s),
\qquad
\inf_s L(s)>-\infty,
\qquad
\int \mathcal R_{\rm legal}<\infty,
\tag{NWC.1}
```

where \(\mathcal A_{\rm crit}\) is an unweighted same-carrier critical action on
the selected terminal heat-scale packet, such as normalized CKN charge,
selected \(L^{5/2}\) strain, native source-square density, or projected
critical flux.

The point is not to see the terminal pulse.  The point is to force a finite-drop
contradiction from infinitely many fixed positive heat-scale action quanta.

## 2. Quadratic pressure correction gives visibility, not drop

For a localized pressure-corrected quadratic functional

```math
L_A(s)={1\over2}\langle v,A_sv\rangle,
\tag{NWC.2}
```

the exact differentiated identity contains a positive viscous term, but also
localized convection, projection commutator, dilation, and operator-motion
terms:

```math
-{d\over ds}L_A(s)
=
\nu\langle\nabla v,A_s\nabla v\rangle
-
\mathcal C_A(v)
-
\operatorname{Comm}_{A_s,\nabla}(v)
-
\mathcal G_A(v)
-
{1\over2}\langle v,\partial_sA_sv\rangle .
\tag{NWC.3}
```

Choosing \(A_s\) so that pressure drops out only moves the sign problem into
\(\mathcal C_A\) and the projected commutator.  For scalar localization, the
leading convection term is

```math
\mathcal C_\chi(v)
=
{1\over2}\int |v|^2v\cdot\nabla\chi\,dy.
\tag{NWC.4}
```

This is sign-indefinite and scale-critical.  Thus quadratic pressure correction
does not produce `(NWC.1)` without already controlling the unsigned critical
flux.

## 3. Energy-bounded functionals are insufficient

On a source-balanced shell pulse with heat window

```math
I_j=(T-2^{-2j},T],
\qquad
D_j(t)=2^{3j/2}{\bf 1}_{I_j}(t),
\tag{NWC.5}
```

one has vanishing first-moment/source mass,

```math
\int_{I_j}D_j(t)\,dt=2^{-j/2}\to0,
\tag{NWC.6}
```

but unit normalized source-square action,

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt=1.
\tag{NWC.7}
```

For this scalar shell model, take the ordinary shell energy scale to be

```math
E_j(t):=2^{-2j}D_j(t)=2^{-j/2}
\quad\text{on }I_j.
\tag{NWC.8}
```

Therefore any candidate functional satisfying

```math
|L_j(t)|\le C E_j(t)+Legal_j(t)
\tag{NWC.9}
```

has only \(o(1)\) available drop on \(I_j\) after legal losses are removed.  It
cannot pay the unit quantity in `(NWC.7)`.  A successful no-waste
functional must carry unweighted critical-action size itself or produce it by a
real coercive identity.

## 4. Local cubic correctors lose lower boundedness

The natural nonlinear repair is to add a packet-local cubic correction

```math
L(s)=L_A(s)+B(v(s))
\tag{NWC.10}
```

designed to cancel the cubic collar flux.  At leading order it must satisfy

```math
B(\lambda V)=\lambda^3B(V).
\tag{NWC.11}
```

If \(B(V)\ne0\), then one sign branch drives the corrected functional to
\(-\infty\):

```math
L_A(-\lambda V)+B(-\lambda V)
=
{\lambda^2\over2}\langle V,A_sV\rangle
-
\lambda^3B(V)
\longrightarrow -\infty.
\tag{NWC.12}
```

Capping or regularizing \(B\) restores lower boundedness but removes uniform
cubic cancellation.  Quartic and higher instantaneous corrections introduce
stronger uninstalled terms such as local \(L^5\), pressure-gradient products, and
viscous commutators.  Thus packet-local nonlinear correctors do not create a
strictly weaker no-waste supplier.

## 5. Commutator coercivity is false without a reserve

For \(A=P\chi P\), the leading projected localized nonlinear term decomposes as

```math
\mathcal C_\chi(u)
=
{1\over2}\int |u|^2u\cdot\nabla\chi\,dx
+
\mathcal R_\chi^P(u).
\tag{NWC.13}
```

Replacing \(u\) by \(-u\) reverses the leading flux and leaves the viscous
quadratic term unchanged.  With

```math
u_{\lambda,r}(x)=\lambda r^{-1}U((x-x_0)/r),
\tag{NWC.14}
```

the positive collar flux grows like

```math
\lambda^3 r^{-1},
\tag{NWC.15}
```

while the viscous term grows like

```math
\nu\lambda^2r^{-1}.
\tag{NWC.16}
```

So an unrestricted absorption of positive localized flux into viscosity is false
uniformly.  The reserved version is valid only as a normal form:

```math
|\mathcal C_\chi(u)|
\le
\varepsilon\nu\int\chi|\nabla u|^2
+
\mathcal R_{\chi}^{crit}(u)
+
\mathcal R_{\rm legal}(u),
\tag{NWC.17}
```

where \(\mathcal R_{\chi}^{crit}\) is precisely the normalized cubic/CKN/source
reserve.  The needed theorem is terminal strip tightness of that reserve, not
the commutator estimate itself.

## 6. Pressure memory does not add time residence

Pressure is recovered by a spatial elliptic law at each time:

```math
p-p_h=R_iR_j(u_i u_j).
\tag{NWC.18}
```

For a separated terminal pulse

```math
u_m(t,x)=a_m(t)U_m(x),
\tag{NWC.19}
```

the nonlinear pressure has time factor \(a_m(t)^2\), and the pressure work has
time factor \(a_m(t)^3\).  Taking

```math
a_m(t)=\tau_m^{-1/3}{\bf 1}_{(T_m-\tau_m,T_m]}(t)
\tag{NWC.20}
```

gives

```math
a_m(t)^3
=
\tau_m^{-1}{\bf 1}_{(T_m-\tau_m,T_m]}(t),
\qquad
\int a_m(t)^3dt=1.
\tag{NWC.21}
```

The pressure channel sees the layer but does not spread it in time.  Leray/Duhamel
heat memory has vanishing time to act on a source inserted in the last
\(\tau_m\) of the heat window.  Pressure memory is therefore visibility, not
terminal residence.

## 7. Moving-packet trace modulus is the actual no-jump theorem

The direct terminal strip theorem is

```math
\lim_{\varepsilon\downarrow0}\limsup_m
\mu_m^{src,+}
\left(
Q_m\cap\{T_m-\varepsilon r_m^2<t\le T_m\}
\right)
=0
\tag{NWC.22}
```

after legal exits, finite donor chains, and retained signed partners have been
removed.

Fixed local-energy continuity does not imply `(NWC.22)` because the tests move:

```math
\phi_m(x)=\phi\left({x-x_m\over r_m}\right),
\qquad
|\nabla\phi_m|\le \|\nabla\phi\|_\infty r_m^{-1},
\qquad
|\Delta\phi_m|\le \|\Delta\phi\|_\infty r_m^{-2}.
\tag{NWC.23}
```

On heat windows of length \(r_m^2\), those derivative factors exactly match the
critical packet scaling.  Raw physical energy and dissipation are discounted by
the shrinking scale and do not give the normalized moving-packet modulus.

## 8. Final branch state

The no-waste route is exhausted in all local or currently installed forms:

```math
\begin{gathered}
\text{quadratic pressure-corrected local energy},\\
\text{energy-bounded functionals},\\
\text{packet-local cubic/nonlinear correctors},\\
\text{causal or future-tail Volterra memory},\\
\text{unrestricted commutator coercivity},\\
\text{reserved commutator normal form},\\
\text{pressure parabolic memory},\\
\text{fixed-test trace continuity}
\end{gathered}
\tag{NWC.24}
```

all return to the same missing object:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{NWC.25}
```

in one of these equivalent currencies:

```math
\begin{gathered}
\text{same-carrier source-square/product control},\\
\text{selected critical-strain endpoint carrier UI},\\
\text{normalized CKN/critical cubic terminal strip tightness},\\
\text{selected polar saturation plus no-free terminal Zeno chain},\\
\text{or a genuinely compact no-waste recurrent-profile rigidity theorem.}
\end{gathered}
\tag{NWC.26}
```

## Verdict

Strict no-waste is not disproved as a grand strategy.  It is disproved as a
shortcut from the current local-energy/pressure/commutator toolkit.

Any future no-waste proof must introduce a genuinely new coercive object:
something lower bounded that carries unweighted heat-scale critical action, or
a compact critical-element rigidity theorem that turns every retained terminal
pulse into an impossible recurrent profile.  Repackaging pressure correction,
localized commutators, cubic flux, or fixed trace continuity does not supply
that object.
