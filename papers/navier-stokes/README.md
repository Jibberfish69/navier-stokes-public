# Navier-Stokes Global Regularity Paper Workspace

This is a machine-only autonomous paper factory for Clay-ready manuscript construction.

Workspace layout:

- `manuscript/human/` is a legacy path name; inside `papers/**` it is machine-owned.
- `manuscript/generated/` is the machine-owned generated manuscript area.
- `context/generated/` is the machine-owned paper package from the brain/live edge.
- `build/` is for machine compile output and packaging scratch.
- `review/` is for machine referee notes and delivery checks.

Theorem authority and human opening-phase work stay outside this paper workspace. This workspace reads upstream material as context and does not silently write back into it.
