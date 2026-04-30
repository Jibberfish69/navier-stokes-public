# Carrier Low-Mode Strain Export Assembly

## Inputs

The coherent principal coefficient satisfies

```math
\|\nabla P_{\le j}u_{coh}\|_{L^\infty}
\le c_{coh}\nu2^{2j}.
```

The noncoherent low-mode readout satisfies

```math
\|\nabla P_{\le j}u_{noncoh}\|_{L^\infty}
\le \varepsilon\nu2^{2j}+C_\varepsilon\Phi(\mathcal E_D^{(s)}(X)).
```

The collar remainder satisfies

```math
\|\nabla R^{collar}_{i,j}[X;Y]\|_{L^\infty}
\le \varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D^{(s)}(X)).
```

The leakage input behind the noncoherent term is the readout-compatible commutator estimate

```math
\|P_\perp[\Delta_D,Q_i\mathbb P_DN_D(X)]e_\beta\|_{H_D^s}
\le
\varepsilon\Xi_D^{(s)}(X)+C_{\varepsilon,i,\beta,s}\Phi_s(\mathcal E_D^{(s)}(X)).
```

## Theorem

Under these carrier-export inputs,

```math
\|\nabla P_{\le j}u\|_{L^\infty}
\le c\nu2^{2j}+C\Phi(\mathcal E_D^{(s)}(X)).
```

If the exported remainder is absorbed on the carrier energy surface, then

```math
\|\nabla P_{\le j}u\|_{L^\infty}
\le c_*\nu2^{2j}.
```

## Proof

Decompose the classical low mode:

```math
P_{\le j}u=P_{\le j}u_{coh}+P_{\le j}u_{noncoh}.
```

Taking one derivative and the `L^\infty` norm gives

```math
\|\nabla P_{\le j}u\|_{L^\infty}
\le
\|\nabla P_{\le j}u_{coh}\|_{L^\infty}
+
\|\nabla P_{\le j}u_{noncoh}\|_{L^\infty}.
```

Insert the coherent and noncoherent estimates:

```math
\|\nabla P_{\le j}u\|_{L^\infty}
\le
c_{coh}\nu2^{2j}+\varepsilon\nu2^{2j}+C_\varepsilon\Phi(\mathcal E_D^{(s)}(X)).
```

Absorb constants into `c` and `C` to obtain the first claim. If the carrier energy inequality absorbs the exported remainder term, the final pure viscous-scale bound follows.

## Route consequence

This is the carrier-export version of strict low-mode strain suppression on the active shell range. It is the missing low-mode input for the HFG dyadic cascade proof.