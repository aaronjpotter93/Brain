### To Do
- [ ] Finish review material 📅 2025-03-03 [Edready - /studentDashboard Dashboard](https://wgu.edready.org/studentDashboard)

### The Unit Circle
To find angles that are not:
- part of right triangles
- part of triangles
and Side lengths that are not:
- part of right triangles

We use the Unit Circle to find these angles, and side lengths:
```tikz
\begin{document}
\begin{tikzpicture}[scale=4]
  % Axes
  \draw[->] (-1.5,0) -- (1.5,0) node[right] {$\cos\theta$};
  \draw[->] (0,-1.5) -- (0,1.5) node[above] {$\sin\theta$};
  % Circle
  \draw (0,0) circle (1cm);
  % Angles and labels
  \foreach \angle in {0,30,45,60,90,120,135,150,180,210,225,240,270,300,315,330} {
    \draw[very thin, gray] (0,0) -- (\angle:1);
    \node at (\angle:1.2) {$\angle^\circ$};
  }
  % Key points (cos, sin)
  \foreach \x/\y/\label in {1/0/0°, 0/1/90°, -1/0/180°, 0/-1/270°} {
    \fill (\x,\y) circle (0.5mm);
    \node[anchor=center] at (\x,\y) {\tiny $(\x,\y)$};
  }
\end{tikzpicture}
\end{document}
```

### The First Quadrant
```tikz
\begin{document}
\begin{tikzpicture}[scale=5]
  % Clip to first quadrant
  \clip (-.1,-.09) rectangle (1.75,1.75);
  % Axes
  \draw[->] (,0) -- (1.5,0) node[right] {$\cos\theta$};
  \draw[->] (0,0) -- (0,1.5) node[above] {$\sin\theta$};
  \draw[->] (1,1) -- (1,1) node[font=\large] {$\left(\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2}\right)$};
  % Circle
  \draw (0,0) circle (1cm);
  % Angles and labels
  \foreach \angle in {0,30,45,60,90} {
    \draw[very thin, gray] (0,0) -- (\angle:1);
    \node at (\angle:1.2) {$\angle^\circ$};
  }
  % Key points (cos, sin)
  \foreach \x/\y/\label in {1/0/0°, 0/1/90°, -1/0/180°, 0/-1/270°} 
  {
    \fill (\x,\y) circle (0.5mm);
    \node[anchor=center] at (\x,\y) {\tiny $(\x,\y)$};
  }
\end{tikzpicture}
\end{document}
```

For any angle in standard position, there is a reference angle. *The Reference angle is formed between the terminal side and the x axis*
