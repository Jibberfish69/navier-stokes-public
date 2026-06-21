---
ns_viewer:
  theorem_id: strain-aligned-terminal-obstruction-cm-split-20260614
  status: installed-silver-cm-split-for-strain-aligned-terminal-obstruction
  proof_role: silver_cm_exit_consumption_after_dynamic_no_freeze_gold_obstruction
  logical_landing_node: terminal_time_face_source_atom
  source_authority:
    - problems/navier-stokes/theorem-construction/mpp-annular-gold-continuation-frontier-20260614.md
    - problems/navier-stokes/theorem-construction/mpp-dynamic-expanding-eigenpacket-no-freeze-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-dynamic-low-high-eigenpacket-no-freeze-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-strain-alignment-face-bridge-proof-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-member-smooth-contrapositive-witness-bridge-20260504.md
  edge_effect: "Installs the silver CM split for the retained strain-aligned terminal source obstruction. Gold dynamic no-freeze remains open; after same-solution admission, the smooth branch is Member(Q), and the admitted finite nonsmooth branch leaves Member(Q) through Part or Field."
---

# MPP Strain-Aligned Terminal Obstruction CM Split

Date: 2026-06-14

## 1. Role

The gold theorem is still open.  The existing dynamic no-freeze attempts reduce
the retained strain-aligned terminal source packet to a pressure/source-current
sustain problem:

```text
TerminalSignedPressureSaturation_{B_ASAC}.A
/
ParabolicNoFreeSink_{B_ASAC}.A
/
TwoTowerDonorDepletion_{B_ASAC}.A.
```

This note records the silver consequence after that obstruction is admitted as
a same-solution CM terminal record.  It does not delete the obstruction by a
forward estimate.

## 2. Admitted Object

Let `Q_B` be a selected terminal `B_ASAC` strain-aligned source record from the
same smooth-data Navier--Stokes solution.  Let `N_s` be a continuation depth
high enough for the installed `H^s`, `s>5/2`, readout.

The admitted branch means:

```text
same-solution terminal record
+ same-fluid carrier data when the branch is first-Pack-survival
+ same pressure-viscosity-incompressibility tower to be tested
+ continuation-grade Field readout if Field survives at depth N_s.
```

Before this admission, the object is support evidence or a Pack boundary.  It
is not yet a retained class-membership branch.

## 3. Theorem

At continuation depth `N_s`, the smooth retained branch is:

```math
\boxed{
Pack_{Q_B}
\wedge Part_{N_s,Q_B}
\wedge \exists r>0\,Field_{N_s,r,Q_B}
\Longrightarrow
Member(Q_B;\mathcal O_{work}).
}
```

The finite nonsmooth admitted branch is:

```math
\boxed{
Q_B\ \mathrm{admitted}
\wedge \mathrm{finite\ nonsmooth}
\Longrightarrow
\neg Pack_{Q_B}
\vee
\neg Part_{N_s,Q_B}
\vee
\forall r>0\,\neg Field_{N_s,r,Q_B}.
}
```

On the first-Pack-survival subbranch, Pack has already been paid, so this
sharpens to:

```math
\boxed{
Q_B\ \mathrm{admitted}
\wedge Pack_{Q_B}
\wedge \mathrm{finite\ nonsmooth}
\Longrightarrow
\neg Part_{N_s,Q_B}
\vee
\left(
Part_{N_s,Q_B}
\wedge
\forall r>0\,\neg Field_{N_s,r,Q_B}
\right).
}
```

Thus an admitted finite nonsmooth strain-aligned terminal obstruction is not an
in-class third branch.  It leaves the class object
`Member(Q_B;\mathcal O_{work})` through a concrete witness.

## 4. Proof

The installed member bridge gives the witness-to-member direction:

```math
CM_{N_s,r,Q_B}
:=
Pack_{Q_B}\wedge Part_{N_s,Q_B}\wedge Field_{N_s,r,Q_B}
\Longrightarrow
Member(Q_B;\mathcal O_{work}),
```

and at continuation depth this supplies the same-solution `H^s`, `s>5/2`,
readout.  Classical Navier--Stokes local theory then continues the same smooth
solution on the retained terminal record.  This is the smooth/member branch.

Now assume the admitted record is a finite nonsmooth terminal obstruction.  If
it retained `Pack`, `Part`, and some positive-scale continuation-grade `Field`,
the previous paragraph would put it on the member-continuation side.  That
contradicts the finite nonsmooth obstruction status.  Therefore

```math
\neg\left(
Pack_{Q_B}\wedge Part_{N_s,Q_B}\wedge \exists r>0\,Field_{N_s,r,Q_B}
\right).
```

By De Morgan,

```math
\neg Pack_{Q_B}
\vee
\neg Part_{N_s,Q_B}
\vee
\forall r>0\,\neg Field_{N_s,r,Q_B}.
```

On the first-Pack-survival branch, `Pack_{Q_B}` is part of the admission data,
so only Part or Field can be the first surviving CM Part/Field failure.

The installed terminal strain-alignment face bridge supplies the same
conclusion for the strain-aligned atom itself: once it is the same terminal
source-residue event under the CM test, it cannot remain an untyped fourth
object.  It is either a carrier failure, a participation failure, or a retained
Pack+Part object with no positive Field scale.

## 5. Consequence

The silver route for this obstruction is closed in the branch-local sense:

```text
smooth admitted branch       => Member(Q_B);
finite nonsmooth admitted branch => Exit(Q_B):=not Member(Q_B)
                                   through Part or Field.
```

The gold route remains open.  A forward proof still has to exclude the terminal
source atom itself by time-thickness, super-`L^1_s` source control, pressure /
source-current no-free-sink, rigid anti-atom production, or an equivalent
dynamic no-freeze theorem.
