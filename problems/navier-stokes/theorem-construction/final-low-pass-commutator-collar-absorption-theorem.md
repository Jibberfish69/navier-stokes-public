# Final Low-Pass Commutator Collar Absorption Theorem

## Target

The final local collar closure is

```math
\boxed{
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+
C_\varepsilon\Phi_*(\mathcal E_D(X)).
}
\tag{FCA.1}
```

where

```math
C_{i,j}[X;Y]
:=
\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}.
\tag{FCA.2}
```

## Inputs

The harmonic-analysis collar estimate gives

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}C_s
\left(
\|\nabla u_{coh}\|_\infty
+2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|Y\|_{H_D^s}.
\tag{FCA.3}
```

The final amplitude/speed theorem supplies the coherent coefficient estimates

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi_*(\mathcal E_D(X)),
\tag{FCA.4}
```

and

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C\Phi_*(\mathcal E_D(X)).
\tag{FCA.5}
```

The weighted fallback branch may replace `FCA.4`--`FCA.5` by the weighted-principal plus lower-order residual collar estimate; it gives the same final bound.

## Absorption window

Assume

```math
C_{HA}C_s(c_0+c_1)
\le
\varepsilon.
\tag{FCA.6}
```

Assume residual terms are measured in `\Phi_*`.

## Theorem FCA

Under `FCA.3`--`FCA.6`, the final collar absorption estimate `FCA.1` holds.

### Proof

Insert `FCA.4` and `FCA.5` into `FCA.3`:

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}C_s(c_0+c_1)\nu2^{2j}\|Y\|_{H_D^s}
+C\Phi_*(\mathcal E_D(X))\|Y\|_{H_D^s}.
\tag{FCA.7}
```

Use the absorption window `FCA.6` on the viscous-scale term and absorb the lower-order factor into the `C_\varepsilon\Phi_*` ledger. This gives `FCA.1`. ∎

## Supplier hierarchy

The coefficient estimates are supplied by:

```text
carrier-localized active readouts
→ proper persistent carrier collar
→ global plateau selector
→ amplitude/speed supplier roll-up
→ coherent coefficient inputs
→ collar absorption.
```

For low shells, `\Phi_*` equals the original `\Phi` if `M_{low}\le C\Phi` is proved, and equals `\Phi_{low}` otherwise.

## Source surfaces

- `problems/navier-stokes/theorem-construction/final-amplitude-speed-gate-theorem.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
- `problems/navier-stokes/theorem-construction/final-global-selector-plateau-theorem.md`
- `problems/navier-stokes/theorem-construction/original-phi-vs-phi-low-ledger-decision-result.md`
