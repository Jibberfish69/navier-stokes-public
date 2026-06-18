# MPP SourcePulse Native Source Measure Decomposition Note

## Status

This note executes the next loop after
`mpp-sourcepulse-normal-form-and-unspent-reserve-audit-note.md`.

It turns the remaining source-pulse atom into a precise measure decomposition:
the chargeable absolutely-continuous part is already handled by installed
finite ledgers; the only surviving obstruction is a singular native positive
source component on terminal active windows.

This is not a proof of `SourcePulseExclusion.A`.  It identifies the exact
measure-theoretic theorem still missing for the positive supplier route.

## 2026-05-22 CM Polarity Correction

For the CM contrapositive route, the singular component is not first erased. It
is used as a witness:

```math
\mu_*^{sing}\ne0
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}.
```

That CM-facing theorem is now installed as
`TerminalSourceResidueCMExit.A`. The positive statements
`NativeSourceAC.A`, `\mu_*^{sing}=0`, and `SourcePulseExclusion.A` remain
separate supplier targets only when the proof program explicitly asks to delete
the source residue.

## Native Positive Source Measure

For a bounded-overlap terminal same-fluid active family `\mathcal F_N`, define
the native positive active source measure:

```math
\mu_{src,N}^+(P)
:=
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt,
\qquad P\in\mathcal F_N.
```

This is the branch-native carrier used by `LocalPositiveSourceCarleson.A` and
by the normal-form lower bound in `SourcePulseExclusion.A`.

Let `\rho_{inst,N}` be the sum of installed nonnegative route ledgers on the
same terminal family:

```math
\rho_{inst,N}
:=
\rho_{energy}
+\rho_{diss}
+\rho_{sched}
+\rho_{press/cut}
+\rho_{signed/res}
+\rho_{local}
+\rho_{legal}.
```

Here `\rho_{legal}` includes the already licensed pressure, cutoff, collar,
finite-depth, and localization losses.  This ledger is finite or summable on
bounded-overlap legal families by the installed route hypotheses.

## Chargeable Part

Define:

```math
\boxed{
NativeSourceAC.A:
\quad
\mu_{src,N}^+
\le
C\,\rho_{inst,N}
+o_N(1)
\quad
\text{on every bounded-overlap terminal family.}
}
\tag{NSM.1}
```

Then `NativeSourceAC.A` implies the local positive source Carleson estimate:

```math
\sum_{P\in\mathcal F_N}\mu_{src,N}^+(P)
\le
C\,\rho_{inst,N}(\mathcal F_N)+o_N(1),
```

and hence:

```math
\boxed{
NativeSourceAC.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
}
\tag{NSM.2}
```

This is the exact "charge" theorem in measure form.  It says the native
positive source cannot form a part singular to all installed route ledgers.

## Singular Part

If `(NSM.1)` fails, then for some bounded-overlap terminal family there is a
subsequence whose positive source mass has a nonzero component singular to the
installed reserve measure.  Equivalently, after terminal extraction there is a
positive Radon measure:

```math
\mu_{\ast}^{src,+}
=
f\,\rho_{\ast}^{inst}
+
\mu_{\ast}^{sing},
\qquad
\mu_{\ast}^{sing}\perp\rho_{\ast}^{inst},
```

with:

```math
\boxed{
\mu_{\ast}^{sing}\ne0.
}
\tag{NSM.3}
```

The normal-form theorem
`mpp-sourcepulse-normal-form-and-unspent-reserve-audit-note.md` is exactly the
packet-level selection of this singular component: after all chargeable ledgers
are removed, a source-pulse counterpacket can be chosen whose mass is carried
by the native positive source carrier and is not paid by any installed reserve.

Thus the source-pulse atom is equivalent, for the positive supplier program, to:

```math
\boxed{
\text{eliminate }\mu_{\ast}^{sing}.
}
\tag{NSM.4}
```

## Remove / Charge / Rigidify In This Language

The three terminal slots become:

```math
TPS.Remove.A:
\quad
\mu_{\ast}^{src,+}=0.
```

```math
TPS.Charge.A:
\quad
\mu_{\ast}^{src,+}\le C\rho_{\ast}^{inst}
\quad\text{with a finite/summable installed reserve.}
```

```math
TPS.Rigidify.A:
\quad
\mu_{\ast}^{sing}\ne0
\Longrightarrow
\text{a localized source-residue limit forbidden by a rigid theorem.}
```

So no fourth slot appears.  The singular component is the same object viewed
through the no-hidden frontier.

## Audit Of Installed Inputs

The installed inputs do not eliminate `\mu_{\ast}^{sing}`:

- Energy and first-moment dissipation do not dominate the heat-scale native
  positive source measure.
- Scheduler bad-time smallness is Lebesgue-time smallness, not absolute
  continuity for `\mu_{src,N}^+`.
- Signed dyadic exchange does not dominate the positive part after weights,
  cutoffs, and terminal active selection.
- Pressure/cutoff ledgers route legal losses but do not dominate the interior
  native positive source carrier.
- Local energy and compactness can consume a localized source-residue pulse
  only after localization and a residue Liouville theorem are supplied.
- Same-fluid transport licenses the packet; it does not provide domination or
  vanishing of the singular component.

Therefore:

```math
\boxed{
NativeSourceAC.A
\text{ is not installed.}
}
```

and the equivalent singular-component theorem:

```math
\boxed{
\mu_{\ast}^{sing}=0
}
```

is also not installed.
The direct domination attempt is recorded in
`mpp-nativesourceac-direct-attempt-note.md`; it reduces the target to a new
native trilinear/source defect domination theorem or, equivalently, direct
vanishing of the singular native positive source component.
The follow-up
`mpp-native-trilinear-defect-domination-direct-attempt-note.md` audits that
survivor directly and records that current installed PDE structures do not
eliminate the singular positive trilinear defect.

## Export

The remaining target can now be stated in the narrowest measure form:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\text{no singular native positive active source measure on terminal
same-fluid active windows.}
}
```

Proving this closes:

```math
NativeSourceAC.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SourcePulseExclusion.A
\Longrightarrow
PCTP.hard/TTU.A
```

through the already-installed downstream route.
