# Low-Pass Commutator Collar Closure Result

## Target

This note closes the coherent coefficient side of the low-pass commutator collar estimate through the selector-persistent amplitude/speed gate.

The collar commutator is

```math
C_{i,j}[X;Y]
:=
\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}.
\tag{LPCCC.0}
```

The conditional closure theorem is

```math
\boxed{
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+
C_\varepsilon\Phi(\mathcal E_D(X)).
}
\tag{LPCCC.1}
```

## Input 1: harmonic-analysis collar estimate

The harmonic-analysis input is

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}\left(
\|\nabla u_{coh}\|_\infty
+
2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|v_{coh}\|_{W^{1,\infty}}.
\tag{LPCCC.2}
```

Readout Sobolev comparison supplies

```math
\|v_{coh}\|_{W^{1,\infty}}
\le
C_s\|Y\|_{H_D^s},
\qquad s>7/2.
\tag{LPCCC.3}
```

Therefore

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}C_s\left(
\|\nabla u_{coh}\|_\infty
+
2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|Y\|_{H_D^s}.
\tag{LPCCC.4}
```

## Input 2: amplitude/speed gate

The coherent coefficient supplier is the amplitude gate

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{LPCCC.5}
```

Equivalently, the coherent flow-speed gate is

```math
\sup_{x\in\Gamma_j(t)}\sup_{s\in I_j}
\frac{|\Phi_{coh}(s;t,x)-x|}{|s-t|}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{LPCCC.6}
```

## Input 3: Bernstein strain conversion

Assume fixed-fattened coherent frequency localization:

```math
\boxed{u_{coh}=P_{\le j+A}u_{coh}.}
\tag{LPCCC.7}
```

Bernstein and `LPCCC.5` give

```math
\|\nabla u_{coh}\|_\infty
\le
C_B(A)\kappa_U\nu2^{2j}+C_B(A)C_U\Phi(\mathcal E_D(X)).
\tag{LPCCC.8}
```

Inside the strain absorption window,

```math
C_B(A)\kappa_U\le c_0,
\tag{LPCCC.9}
```

this becomes

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi(\mathcal E_D(X)).
\tag{LPCCC.10}
```

## Input 4: finite high-collar multiplier

For fixed collar width `M`, the multiplier

```math
R_{j,A,M}:=P_{>j-M}P_{\le j+A}
```

has uniform `L^\infty\to L^\infty` norm `C_{A,M}`. Hence `LPCCC.5` gives

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
C_{A,M}\kappa_U\nu2^{2j}+C_{A,M}C_U\Phi(\mathcal E_D(X)).
\tag{LPCCC.11}
```

Inside the collar-tail absorption window,

```math
C_{A,M}\kappa_U\le c_1,
\tag{LPCCC.12}
```

this becomes

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C\Phi(\mathcal E_D(X)).
\tag{LPCCC.13}
```

## Theorem LPCCC: conditional low-pass commutator collar closure

Assume `LPCCC.2`--`LPCCC.13`. Suppose the coherent constants are chosen inside the collar absorption window

```math
C_{HA}C_s(c_0+c_1)\le\varepsilon.
\tag{LPCCC.14}
```

Assume also the route lower-order convention on the active test surface:

```math
C\Phi(\mathcal E_D(X))\|Y\|_{H_D^s}
\le
C_\varepsilon\Phi(\mathcal E_D(X)).
\tag{LPCCC.15}
```

Then

```math
\boxed{
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+
C_\varepsilon\Phi(\mathcal E_D(X)).
}
\tag{LPCCC.16}
```

### Proof

Insert `LPCCC.10` and `LPCCC.13` into `LPCCC.4`:

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}C_s(c_0+c_1)\nu2^{2j}\|Y\|_{H_D^s}
+C\Phi(\mathcal E_D(X))\|Y\|_{H_D^s}.
\tag{LPCCC.17}
```

Use `LPCCC.14` on the viscous-scale term and `LPCCC.15` on the lower-order term. This gives `LPCCC.16`. ∎

## Supplier split

The amplitude/speed gate is supplied shellwise as follows.

High active shells close by the uniform `H_D^s` threshold theorem:

```math
\sup_{r\in I_j}\|X(r)\|_{H_D^s}\le C_X,
\qquad
j\ge J_{high}(C_X,\nu,\kappa_U)
\Longrightarrow
\text{amplitude/speed gate.}
\tag{LPCCC.18}
```

The finite low-shell block

```math
\mathcal L(C_X,\nu,\kappa_U)
:=\{j:j<J_{high}(C_X,\nu,\kappa_U)\}
\tag{LPCCC.19}
```

requires separate residual control:

```math
\mathcal R_{low}(X)=0
\quad\text{or}\quad
\mathcal R_{low}(X)\le C_{low}\Phi(\mathcal E_D(X)).
\tag{LPCCC.20}
```

The weighted direct branch feeds this closure only with a positive selector-weight lower envelope:

```math
\|w_ju_{coh}\|_\infty\le\kappa_W\nu2^j+C_W2^{-j}\Phi,
\qquad
w_j\ge m_j>0,
\qquad
m_j^{-1}\kappa_W\le\kappa_U.
\tag{LPCCC.21}
```

## Boundary

High active shells close by threshold speed gate. The finite low-shell block requires separate amplitude residual control. The weighted direct mechanism requires a positive selector-weight lower envelope or a weighted collar theorem.

## Source surfaces

- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-estimate-result.md`
- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-amplitude-residual-control-result.md`
- `problems/navier-stokes/theorem-construction/weighted-direct-speed-mechanism-assessment-result.md`