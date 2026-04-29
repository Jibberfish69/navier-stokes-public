# Remaining Source-Packet Closure Audit For QSP.11r-To-SG.4B

## Status

Conditional closure. Current canonical surfaces close the branch after the named source packets are supplied. They leave the source packets as active mathematical inputs.

## Request

Close the source-packet work:

1. parent stopped-cell center lower density;
2. parent-cell Holder control;
3. finite shell comparability;
4. regular-window C2 collar control;
5. exact-potential comparison;
6. reference CG simple-top gap;
7. same-strip synchronization.

## Audit result

### 1. Diagonal-density source

The surfaces prove:

```text
parent stopped-cell center lower density
+ parent-cell Holder control
=> QSP.11r
=> diagonal restriction stability
=> selector-side PTC-Shape
```

The center lower-density theorem and Holder theorem remain source inputs.

### 2. Finite shell comparability

The surfaces prove:

```text
finite shell comparability on the selected core-cap family
=> shell leakage
```

The finite shell-comparability estimate itself remains a source input for the chosen shell family.

### 3. Regular-window C2 collar control

The surfaces prove:

```text
regular-window C2 collar control
=> segment-collar derivative continuity
=> finite-frame PTC-Lin
```

The actual C2 collar bounds, or an equivalent derivative-continuity modulus, remain source inputs on the selected collars.

### 4. Exact-potential comparison

The surfaces prove:

```text
finite-frame tensor control
+ exact-potential comparison
+ reference CG simple-top gap
=> D.7mq
```

The exact-potential comparison estimate remains a source input for the selected finite-frame tensor.

### 5. Reference CG simple-top gap

The observable-surrogate gap is automatic when the surrogate is a rank-one projector. The reference CG simple-top gap used in the `D.7mq` Davis-Kahan step is a separate source input.

### 6. Same-strip synchronization

The surfaces require all packets on the same selector-good family, core-cap family, entrance-sector refinement, time strip, and finite frame.

## Branch handoff

With those seven source packets supplied on one strip, the branch-local chain fires:

```text
QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq
=> D.7mr2
=> RPC.3
=> SG.4B
```

## Boundary

This note records the strongest repo-backed closure presently available. The requested source packets are not closed unconditionally by the current canonical surfaces. They are the exact remaining mathematical front line for this TPS/SG.4 branch.