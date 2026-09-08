"""Project a local incompressible straining vortex into unshaded vector art."""
from pathlib import Path
import math
import numpy as np

HERE = Path(__file__).resolve().parent
camera = np.array([6.0, -9.0, 6.0])
forward = -camera / np.linalg.norm(camera)
right = np.cross(forward, [0.0, 0.0, 1.0])
right /= np.linalg.norm(right)
up = np.cross(right, forward)
roll = -math.atan2(up[0], right[0])
rotation = np.array([[math.cos(roll), -math.sin(roll)],
                     [math.sin(roll), math.cos(roll)]])


def project(points):
    p = np.asarray(points, dtype=float)
    delta = p - camera
    plane = np.stack([delta @ right, delta @ up], axis=-1)
    plane *= (12.0 / (delta @ forward))[..., None]
    return (plane @ rotation.T) * 31.0 + [222.0, 116.0]


def circle(x, radius, start=0, stop=2 * math.pi, n=160):
    t = np.linspace(start, stop, n)
    return np.column_stack([np.full(n, x), radius * np.cos(t), radius * np.sin(t)])


def streamline(sign, angle, x0=.30, radius=2.1, end=4.15, spin=5.0):
    t = np.linspace(0, math.log(end / x0), 180)
    x = sign * x0 * np.exp(t)
    rr = radius * np.exp(-t / 2)
    q = (radius / .60) ** 2
    theta = angle + spin * np.log((np.exp(t) + q) / (1 + q))
    return np.column_stack([x, rr * np.cos(theta), rr * np.sin(theta)])


out = [r'''\documentclass[tikz,border=2pt]{standalone}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\usetikzlibrary{arrows.meta}
\begin{document}
\begin{tikzpicture}[x=1pt,y=1pt,font=\fontsize{10}{12}\selectfont,
 every node/.style={inner sep=0pt},
 flow/.style={line width=.72pt,line cap=round,line join=round},
 ghost/.style={line width=.3pt,dash pattern=on 2pt off 2pt},
 contour/.style={line width=.38pt},
 direction/.style={-{Stealth[length=5pt,width=3.8pt]},line width=.72pt},
 diffusion/.style={-{Latex[open,length=5pt,width=4pt]},line width=.65pt},
 dimension/.style={<->,>=Stealth,line width=.35pt}]
 \path[use as bounding box] (0,0) rectangle (448,230);
''']


def coord(p):
    return f'({p[0]:.3f},{p[1]:.3f})'


def path(points, style, world=True):
    p = project(points) if world else np.asarray(points)
    out.append(' \\draw[' + style + '] ' + ' -- '.join(map(coord, p)) + ';\n')


def label(p, text, anchor='center', world=True, shift=(0, 0)):
    q = project(p) if world else np.asarray(p, dtype=float)
    q = q + shift
    out.append(f' \\node[anchor={anchor}] at {coord(q)} {{{text}}};\n')


# The material boundary is a light spatial reference, with no fill.
radius = .62
for x in [-3.5, 3.5]:
    pts = circle(x, radius, n=181)
    normals = np.column_stack([np.zeros(len(pts)), pts[:, 1], pts[:, 2]])
    visible = np.sum(normals * (camera - pts), axis=1) >= 0
    for i in range(len(pts) - 1):
        path(pts[i:i + 2], 'contour' if visible[i] else 'ghost')
delta = math.atan2(camera[2], camera[1])
for a in [delta + math.acos(radius / np.linalg.norm(camera[1:])),
          delta - math.acos(radius / np.linalg.norm(camera[1:]))]:
    path([[-3.5, radius * math.cos(a), radius * math.sin(a)],
          [3.5, radius * math.cos(a), radius * math.sin(a)]], 'contour')

# Continuous spatial flow paths carry both radial contraction and axial strain.
angles = np.radians([20, 140, 260])
for sign in [-1, 1]:
    for j, angle in enumerate(angles):
        curve = streamline(sign, angle)
        path(curve, 'flow')
        if j == 1:
            path(curve[137:145], 'direction')
    path(streamline(sign, 1.2 if sign == 1 else 4.3,
                    x0=.8, radius=.46, end=3.5), 'flow')

# One axial vorticity vector and one transverse swirl arrow.
path([[-.45, 0, 0], [.55, 0, 0]], 'direction')
label([.05, 0, 0], r'\(\omega\)', shift=(0, 10))
path(circle(2.6, radius, start=.45, stop=5.35, n=100), 'direction')
label(circle(2.6, radius, start=5.35, stop=5.35, n=1)[0],
      r'\(v\)', anchor='west', shift=(8, -2))

# Diffusion crosses the selected material boundary into the surrounding fluid.
for a in [math.radians(65), math.radians(245)]:
    path([[1.6, .52 * math.cos(a), .52 * math.sin(a)],
          [1.6, 1.55 * math.cos(a), 1.55 * math.sin(a)]], 'diffusion')

# Labels use the manuscript's notation.
label((55, 190), r'Flow \(u\)', world=False)
path([(83, 188), project(streamline(-1, angles[0])[18])], 'contour', world=False)
label((226, 214), r'Axial strain \(\sigma>0\)', world=False)
label((358, 184), r'Viscous diffusion', world=False)
label((358, 170), r'\(\nu\Delta\omega\)', world=False)
path([(326, 165), project([1.6, 1.55 * math.cos(math.radians(65)),
                          1.55 * math.sin(math.radians(65))])], 'contour', world=False)

# Radius is measured on the near section; length stays below the flow field.
path([[3.5, 0, 0], [3.5, 0, radius]], 'dimension')
label([3.5, 0, radius / 2], r'\(r\)', shift=(9, 1))
ends = project([[-3.5, 0, 0], [3.5, 0, 0]])
left, right_end = ends[0, 0], ends[1, 0]
path([[left, 23], [right_end, 23]], 'dimension', world=False)
for x in [left, right_end]:
    path([[x, 20], [x, 26]], 'contour', world=False)
label(((left + right_end) / 2, 13), r'\(\ell\)', world=False)
out.append('\\end{tikzpicture}\n\\end{document}\n')
(HERE / 'vortex-stretching-notation.tex').write_text(''.join(out))
