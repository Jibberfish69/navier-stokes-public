# Jet Substitution And Exponential Closure Note

## Purpose

This note formalizes the user's brute-force proposal in the most direct way:

```math
\boxed{
\text{store each differentiated Navier--Stokes identity,}
}
```

```math
\boxed{
\text{substitute lower-order identities back into higher-order mixed terms,}
}
```

```math
\boxed{
\text{and track the unresolved remainder as the defect.}
}
```

The main output is that this apparently crude substitution algorithm has one
clean global wrapper:

```math
\boxed{
\text{the exponential jet generating series turns the binomial transport tower}
}
```

```math
\boxed{
\text{into an ordinary quadratic product law.}
}
```

That is the natural mathematical upgrade of the brute-force catalogue-and-test
program.

## Time tower and separated pieces

Write

```math
V_n := \partial_t^n u,
\qquad
P_n := \partial_t^n p.
\tag{1}
```

Define the order-`n` linear-pressure carrier

```math
L_n := \nu\Delta V_n - \nabla P_n,
\tag{2}
```

and the order-`n` mixed transport block

```math
M_n := \sum_{k=0}^{n}\binom{n}{k}\,(V_k\cdot\nabla)V_{n-k}.
\tag{3}
```

Then the `n`-th time-differentiated Navier--Stokes equation is exactly

```math
V_{n+1} = L_n - M_n.
\tag{4}
```

This is the cleanest possible separation:

- `V_{n+1}` is the next time layer;
- `L_n` is the matched order-`n` pressure-plus-viscosity input;
- `M_n` is the full cross-order transport spread.

## First six time layers

For `0 \le n \le 5`, the exact identities are:

```math
V_1 = L_0 - (V_0\cdot\nabla)V_0,
\tag{5}
```

```math
V_2 = L_1 - (V_0\cdot\nabla)V_1 - (V_1\cdot\nabla)V_0,
\tag{6}
```

```math
V_3 = L_2 - (V_0\cdot\nabla)V_2 - 2(V_1\cdot\nabla)V_1 - (V_2\cdot\nabla)V_0,
\tag{7}
```

```math
V_4 = L_3 - (V_0\cdot\nabla)V_3 - 3(V_1\cdot\nabla)V_2 - 3(V_2\cdot\nabla)V_1 - (V_3\cdot\nabla)V_0,
\tag{8}
```

```math
V_5 = L_4 - (V_0\cdot\nabla)V_4 - 4(V_1\cdot\nabla)V_3 - 6(V_2\cdot\nabla)V_2 - 4(V_3\cdot\nabla)V_1 - (V_4\cdot\nabla)V_0,
\tag{9}
```

```math
V_6 = L_5 - (V_0\cdot\nabla)V_5 - 5(V_1\cdot\nabla)V_4 - 10(V_2\cdot\nabla)V_3 - 10(V_3\cdot\nabla)V_2 - 5(V_4\cdot\nabla)V_1 - (V_5\cdot\nabla)V_0.
\tag{10}
```

So the algorithmic burden is very explicit:
each new layer imports all lower splits through the binomial spread.

## Brute-force substitution algorithm

Store the identities `(4)` for all lower levels.
To analyze `V_{N+1}`, do the following:

1. Start from

```math
V_{N+1}=L_N-M_N.
\tag{11}
```

2. In every mixed monomial inside `M_N`, whenever a factor `V_j` with
`1\le j\le N` appears, replace it by the stored identity

```math
V_j = L_{j-1} - M_{j-1}.
\tag{12}
```

3. Expand and repeat to any chosen depth.

This produces a decomposition

```math
V_{N+1} = R_{N+1}^{(d)} + D_{N+1}^{(d)},
\tag{13}
```

where:

- `R_{N+1}^{(d)}` is the **resolved part** after `d` rounds of substitution;
- `D_{N+1}^{(d)}` is the **defect**, meaning every monomial that still
  contains at least one mixed transport block `M_j`.

So the defect is not mysterious.
It is exactly the unresolved mixed transport content that survives recursive
replacement by lower-order identities.

## First explicit substitutions

### Level `V_1`

From `(5)`:

```math
V_1 = L_0 + D_1,
\qquad
D_1 := -M_0 = -(u\cdot\nabla)u.
\tag{14}
```

At the first layer, the defect is just the base transport block.

### Level `V_2`

Start from `(6)`:

```math
V_2 = L_1 - (u\cdot\nabla)V_1 - (V_1\cdot\nabla)u.
\tag{15}
```

Substitute `(14)`:

```math
V_2
=
L_1
-
(u\cdot\nabla)L_0
-
(L_0\cdot\nabla)u
+
(u\cdot\nabla)M_0
+
(M_0\cdot\nabla)u.
\tag{16}
```

So

```math
R_2^{(1)}
:=
L_1
-
(u\cdot\nabla)L_0
-
(L_0\cdot\nabla)u,
\tag{17}
```

```math
D_2^{(1)}
:=
(u\cdot\nabla)M_0
+
(M_0\cdot\nabla)u.
\tag{18}
```

This is the first exact example of the user's point:
the higher time layer imports the stored lower layer, and the remaining burden
is the transported lower-order defect.

### Level `V_3`

Start from `(7)`:

```math
V_3 = L_2 - (u\cdot\nabla)V_2 - 2(V_1\cdot\nabla)V_1 - (V_2\cdot\nabla)u.
\tag{19}
```

Insert

```math
V_1 = L_0 + D_1,
\qquad
V_2 = R_2^{(1)} + D_2^{(1)}.
\tag{20}
```

Then the fully resolved part after two rounds is

```math
R_3^{(2)}
:=
L_2
-
(u\cdot\nabla)R_2^{(1)}
-
(R_2^{(1)}\cdot\nabla)u
-
2(L_0\cdot\nabla)L_0,
\tag{21}
```

and the remaining defect is

```math
\begin{aligned}
D_3^{(2)}
:={}&
-(u\cdot\nabla)D_2^{(1)}
-
(D_2^{(1)}\cdot\nabla)u \\
&-
2(L_0\cdot\nabla)D_1
-
2(D_1\cdot\nabla)L_0
-
2(D_1\cdot\nabla)D_1.
\end{aligned}
\tag{22}
```

So by level three the pattern is already exact:

- resolved pieces come from repeated import of lower stored identities;
- every unresolved remainder contains at least one earlier defect;
- defects feed defects through transport.

This is precisely the recursive residual law the user was describing.

## The right theorem question

The brute-force algorithm therefore asks for one of the following:

```math
\boxed{
D_{N}^{(d)} \equiv 0
\text{ after finitely many substitutions;}
}
```

or

```math
\boxed{
D_{N}^{(d)}
\text{ contracts as }d\to\infty;
}
```

or at least

```math
\boxed{
\sum_{N\ge 0}\|D_N^{(d)}\|_\star
\text{ is summable / dominated / telescoping.}
}
```

If none of these happen, the substitution algorithm never truly closes.

## Global wrapper: exponential jet closure

The elegant global form of the same brute-force scheme is to package the
entire stored library into one generating series:

```math
\mathcal V_\rho := \sum_{n\ge 0}\frac{\rho^n}{n!}V_n,
\qquad
\mathcal P_\rho := \sum_{n\ge 0}\frac{\rho^n}{n!}P_n.
\tag{23}
```

Multiply `(4)` by `\rho^n/n!` and sum over `n`.
Then the binomial coefficients collapse exactly:

```math
\sum_{n\ge0}\frac{\rho^n}{n!}
\sum_{k=0}^{n}\binom{n}{k}(V_k\cdot\nabla)V_{n-k}

=
(\mathcal V_\rho\cdot\nabla)\mathcal V_\rho.
\tag{24}
```

So the whole stored substitution tower closes back to the same equation:

```math
\partial_t \mathcal V_\rho
+
(\mathcal V_\rho\cdot\nabla)\mathcal V_\rho
+
\nabla \mathcal P_\rho
=
\nu\Delta \mathcal V_\rho.
\tag{25}
```

This is the exact global version of the brute-force algorithm.
Nothing has been guessed.
The factorial weights kill the combinatorics.

## Sequence norms that match the substitution law

The natural time-jet norms are therefore exponential/factorial norms such as

```math
\|V\|_{X_\rho}
:=
\sum_{n\ge0}\frac{\rho^n}{n!}\|V_n\|_{L_x^2},
\qquad
\|V\|_{Y_\rho}
:=
\sum_{n\ge0}\frac{\rho^n}{n!}\|\nabla V_n\|_{L_x^2}.
\tag{26}
```

In these norms, the mixed transport block satisfies the exact combinatorial
estimate

```math
\sum_{n\ge0}\frac{\rho^n}{n!}
\Big\|
\sum_{k=0}^{n}\binom{n}{k}(V_k\cdot\nabla)V_{n-k}
\Big\|
\le
\sum_{k,m\ge0}\frac{\rho^{k+m}}{k!\,m!}\|(V_k\cdot\nabla)V_m\|.
\tag{27}
```

So the apparent combinatorial explosion is converted into an ordinary
quadratic convolution estimate.

This is the first clean mathematical generalization of the user's cataloguing
algorithm:

```math
\boxed{
\text{the differentiated tower should be studied in a weighted jet Banach algebra}
}
```

```math
\boxed{
\text{whose multiplication law is exactly the transport convolution.}
}
```

## Pressure and viscosity in this picture

Pressure and viscosity are not extra mystery variables here.
They are the matched order-`n` inputs:

- viscosity enters linearly through `\nu\Delta V_n`;
- pressure enters linearly through `-\nabla P_n`;
- the real closure burden is entirely in the mixed transport block `M_n`.

So the substitution algorithm should treat pressure and viscosity as the
stored order-`n` carrier inputs, and ask whether the mixed block can be
substituted away, cancelled, or globally dominated.

## Extension to space and mixed derivatives

For the full problem, replace the pure time jet by the mixed jet

```math
J_{m,\alpha} := \partial_t^m\partial_x^\alpha u.
\tag{28}
```

Then the same idea applies with multi-index convolution.
The natural global wrapper is a mixed jet series

```math
\mathcal J(\tau,\zeta)
:=
\sum_{m\ge0}\sum_{\alpha\in\mathbb N^3}
\frac{\tau^m\zeta^\alpha}{m!\,\alpha!}\,
J_{m,\alpha},
\tag{29}
```

or an equivalent parabolic-order weighted sequence norm.

The theorem target is then:

```math
\boxed{
\text{show that the mixed jet space is invariant and that the recursive defect}
}
```

```math
\boxed{
\text{generated by substitution is zero, contractive, or summably tame.}
}
```

That is the proper global form of the brute-force idea.
