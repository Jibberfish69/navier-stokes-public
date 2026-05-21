# `TerminalSourceBackwardPropagation.A` attempt

## Status

Failed as an unconditional theorem under the current compactness hypotheses. The correct replacement target is a temporal non-atomicity or backward lower-density theorem for the native positive source-residue measure.

## Intended theorem

The hoped-for statement was:

```math
\mu_*^{src}(Q_1(0,0))>0
\Longrightarrow
\exists a>0:\ \mu_*^{src}(\{s<-a\})>0.
```

Together with first-pulse no-incoming support,

```math
\mu_*^{src}(\{s<-a\})=0\qquad\forall a>0,
```

this would imply

```math
\mu_*^{src}=0,
```

closing the Zeno no-inflow ancient class route.

## Obstruction

The available Zeno compactness gives only weak-* compactness of locally finite positive source-residue measures. Under this topology, positive source mass may concentrate on the terminal time slice.

A model sequence is

```math
 d\mu_n(y,s)=\rho(y)\,n\mathbf 1_{(-1/n,0]}(s)\,dy\,ds,
```

with `\rho\ge0` compactly supported and nonzero. Then

```math
\mu_n\rightharpoonup \rho(y)\,dy\otimes\delta_{s=0}.
```

The limit satisfies

```math
\mu_*(Q_1(0,0))>0,
```

while for every fixed `a>0`,

```math
\mu_*(\{s<-a\})=0.
```

Thus the desired backward propagation implication is false for the measure class supplied by current compactness.

## Local energy test

Testing the local energy inequality against a backward heat kernel does not remove this obstruction. A positive terminal measure appears as a terminal boundary contribution. The inequality allows such a contribution unless there is a separate no-terminal-atom estimate, temporal absolute continuity estimate, or source-parent lower-density theorem.

In particular, first-pulse minimality supplies the ancestry statement

```math
NoIncomingLicense_{src}.A:
\quad\text{no earlier selected same-fluid source-parent tile exists.}
```

It does not supply the stronger global statement that the source-residue measure has no terminal atom or that terminal mass must be generated on a fixed earlier parabolic collar.

## Conditional repair

The route would close under any one of the following sharper inputs.

### 1. Temporal non-atomicity

```math
TemporalNonAtomicSource.A:
\quad
\mu_*^{src}(\{s=0\})=0.
```

Then positive mass in `Q_1(0,0)` must occur in `s<0`. By inner regularity, there exists `a>0` with

```math
\mu_*^{src}(\{s<-a\})>0.
```

This contradicts first-pulse no-incoming support.

### 2. Uniform temporal integrability

If the approximating positive source densities satisfy a uniform estimate

```math
\|F_n^{src,+}\|_{L_s^p((-1,0);\mathcal M_y)}\le C
\qquad\text{for some }p>1,
```

then weak limits cannot charge the time slice `s=0`. This implies `TemporalNonAtomicSource.A`.

### 3. Backward lower-density source theorem

A direct replacement is

```math
BackwardSourceLowerDensity.A:
\quad
\mu_*^{src}(Q_1(0,0))>0
\Longrightarrow
\exists a>0:\mu_*^{src}(\{s<-a\})>0.
```

This is exactly the missing theorem.

## Result

`TerminalSourceBackwardPropagation.A` cannot be proved from the current installed inputs. The next exact target is therefore

```math
TemporalNonAtomicSource.A
```

or equivalently a uniform temporal integrability / no-terminal-atom estimate for the native positive source-residue measure.

## Consequence

The proposed no-inflow Zeno class route remains viable only after adding temporal non-atomicity. Without it, terminal source residue may be born as a terminal atom in the weak-* limit, and first-pulse no-parent minimality does not contradict that configuration.