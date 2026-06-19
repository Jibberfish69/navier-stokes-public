# MPP FullTransportedNoIncomingFlux.A Direct Attempt

Date: 2026-05-18

Status: failed direct theorem.

Purpose: test whether a full transported no-incoming flux theorem can imply `TerminalTimeFaceAntiAtom.A` for the retained terminal source class.

## 0. Target

The desired theorem is

```math
\boxed{FullTransportedNoIncomingFlux.A.}
```

A useful form combines two assertions on transported cylinders `\mathcal C(t)`:

```math
Flux_{in}^{src,+}(\partial\mathcal C\times[T-\varepsilon,T])\to0
```

and

```math
SourceProduction_{int}^{src,+}(\mathcal C\times[T-\varepsilon,T])\to0.
```

Together these yield the terminal time-face anti-atom modulus.

## 1. Boundary inflow component

Transported shells remove artificial fixed-frame flux. They are the correct geometry for same-fluid packets. Existing shell bookkeeping controls boundary entry terms in restricted settings.

Boundary inflow control alone is insufficient. The terminal source atom can form inside the transported cylinder over shrinking terminal slabs.

## 2. Interior production component

The missing part is an interior source-production exclusion. A test source density

```math
F_N^{src,+}(t)=\tau_N^{-1}\mathbf 1_{[T-\tau_N,T]}(t)
```

can be supported inside `\mathcal C(t)` and create a terminal atom with small boundary inflow. This is exactly the time-face obstruction.

## 3. Restricted no-flux survivors

The lane contains restricted no-flux survivors, including transported-cylinder and B_ASAC tangent-class variants. These give conditional closure after production into the restricted class.

The full retained terminal class still needs a production theorem:

```math
\boxed{ProductionIntoTransportedNoFluxClass.A.}
```

or a direct interior production exclusion.

## 4. Verdict

`FullTransportedNoIncomingFlux.A` fails from installed inputs. Transported geometry helps with boundary bookkeeping. It lacks full-class interior production exclusion.

The route reduces to

```math
ProductionIntoTransportedNoFluxClass.A
+TransportedNoFluxLiouville.A
```

or directly to `TerminalTimeFaceAntiAtom.A`.
