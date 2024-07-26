# Standard-Map 

The standard map, also known as the Chirikov standard map or the standard area-preserving map, is a mathematical model used in the study of dynamical systems and chaos theory. It is a discrete-time, two-dimensional map that describes the behavior of particles or objects moving in a periodically varying potential field. The standard map is often used as a simplified model to understand the behavior of chaotic systems in physics, particularly in the context of Hamiltonian mechanics.

The standard map is defined by the following mathematical equations:

\[ \begin{align*}
x_{n+1} &= x_n + y_n - \frac{K}{2\pi} \sin(2\pi x_n) \\
y_{n+1} &= y_n - \frac{K}{2\pi} \sin(2\pi x_n)
\end{align*} \]

Where:
- \(x_n\) and \(y_n\) are the coordinates of the particle or object at discrete time steps \(n\).
- \(x_{n+1}\) and \(y_{n+1}\) are the coordinates at the next time step \(n+1\).
- \(K\) is a control parameter that determines the strength of the perturbing force.

Key features and characteristics of the standard map include:

1. **Area Preservation**: The standard map is area-preserving, meaning that the total area in the \(xy\)-plane remains constant as the system evolves. This property is a consequence of Hamiltonian mechanics.

2. **Chaos and Transition to Chaos**: The behavior of the standard map is highly sensitive to changes in the control parameter \(K\). For certain values of \(K\), the map exhibits regular, periodic motion. However, as \(K\) increases, the system undergoes a transition to chaotic behavior, characterized by unpredictable and irregular trajectories.

3. **Arnold Diffusion**: The standard map is known for demonstrating a phenomenon called "Arnold diffusion," where particles that start in initially close positions can eventually become widely separated over time due to chaotic motion.

4. **Poincaré Section**: To analyze the dynamics of the standard map, researchers often use a Poincaré section, which involves plotting the particle's position each time it crosses a specific plane (e.g., \(x = 0\)).

The standard map is a valuable tool for studying chaotic behavior in dynamical systems and has applications in various fields, including physics, celestial mechanics, and the study of particle dynamics in accelerators. It serves as a simplified yet illustrative model for understanding the transition from regular to chaotic motion in nonlinear systems.

This repository includes an example code for the standard map in Fortran 90.
