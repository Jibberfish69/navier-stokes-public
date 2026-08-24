# Navier--Stokes manuscript restoration record

Restoration target: the manuscript PDF immediately preceding the attached `/Users/thomasbirnie/Desktop/navier-stokes-manuscript.pdf`.

- Attached build: 2026-08-20 14:42:27 MDT, 55 pages, SHA-256 `8f144b293ce1c3fbcff0b3a5e79c21ede299677b4e42c646123cf5a4bb683210`.
- Restored build: 2026-08-20 10:40:25 MDT, 55 pages, SHA-256 `9c680b2758b2d0d8b474131a5ea6f9a12a69bdcda852a36ba8b016aac6970724`.
- Recovered Git PDF blob: `2f659ab7dff7ff4cc4fe45a933e480b75cf8d93e`.
- Recovered complete manuscript tree: `a1de0ed49907fffc04d81ced7b40cdf2fd616871`.

Restored live workspace:

`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/workspaces/VSC-workspaces/navier-stokes`

Exact recovered PDF copy:

`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/output/pdf/navier-stokes-manuscript-previous-before-attached-20260820T104025.pdf`

Recovered source/build snapshot:

`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/output/recovery/navier-stokes-before-attached-20260820T104025`

Pre-restoration live workspace backup:

`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/output/recovery/navier-stokes-live-before-restore-20260822T1122`

Verification: the recovered source rebuilt successfully in isolation as 55 pages with no final LaTeX diagnostics. Pages 2--55 rendered identically to the exact recovered PDF; page 1 differed only because LaTeX regenerated the automatic document date. The live PDF remains the exact original 2026-08-20 binary rather than the dated rebuild.

Later files absent from the recovered tree were returned to the live workspace without overwriting recovered files. This preserves render caches, audit material, and inactive extras while leaving every recovered manuscript source/build file unchanged.
