---
title: Relativistic Hydrodynamics under Rotation with Holography
author: Markus A.G. Amano (マーカス・AG・アマノ)
affilitation: Yamagata University (山形大学)
institute: Yamagata University (山形大学) Under Prof. Minoru Eto (衛藤稔先生)
date: December 21^st^, 2023
aspectratio: 169 
theme: metropolis
themeoptions: 
    - progressbar=frametitle
header-includes: |
    \usepackage{xeCJK}
    \setCJKmainfont{Noto Serif CJK JP}
    \setCJKsansfont{Noto Sans CJK JP}
    \setCJKmonofont{Noto Sans Mono CJK JP}
    \usepackage{animate}
    \usepackage[dvipsnames]{xcolor}
    \newcommand{\exd}{\mathrm{d}}
    \newcommand{\lsigma}{\overline{\sigma}}
urlcolor: olive
toc: false
---

# Overview & Methods {.squeeze}

[^previoustalk]: [Holotube Version of this talk](https://github.com/inokawazu/holotube2023)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

[Amano, Kaminski et al. 2023][amano2023][^previoustalk]

- an overview of recent developments arising from the study of simply spinning AdS Myers-Perry black holes

**Goal**

- With a classical gravity description, describe the characteristic spectrum of rotating conformal fluid. ([STAR Collaboration 2017](https://inspirehep.net/literature/1510474), [Bantilan et al](https://inspirehep.net/literature/1665231)).

<!-- - Spherical, Rotating Black Holes in **AdS** and -->
<!-- - the dual rotating conformal plasma (*highly vortical* heavy ion collisions) -->  
:::
::: {.column width="50%"}

\begin{center}
    \animategraphics[loop,autoplay,width=\textwidth]{10}{build/tensor_dance_v2-}{0}{121}
\end{center}
:::
::::::::::::::

## AdS/CFT Primer

<!-- What is AdS/CFT (AdS/CFT対応)? -->
<!-- : A *dynamic* duality between $D+1$ dim. IIB String theory on $AdS\times \mathrm S^5$ and --> 
<!--   $\mathcal N = 4$ Super Yang-Mills (SYM) with $SU(N)$ -->

AdS/CFT (weak form $N \rightarrow \infty$) (ゲージ／重力双対)
: A *dynamic* duality (動的な双対) between $5$dim. GR (一般相対論) in AdS (反ド・ジッター空間) and $4$dim. Strongly Coupled (強結合) Conformal Field theory (共形場理論; CFT)

<!-- AdS/CFT -->
<!-- : Can use Einstein gravity in one dimension higher to analyze strongly coupled CFT -->

- $\text{AdS}~\leftrightarrow T= 0~\text{CFT}$
- $\text{AdS Unchanging Black Hole}~\leftrightarrow T\neq 0~\text{CFT}$
- $\text{AdS Rotating Black Hole}~\leftrightarrow T\neq 0~\text{Rotating CFT} \equiv~\text{"Rotating Plasma"}$

### Question

How do thermal (熱的), strongly coupled plasmas (プラズマ) react to perturbations (摂動), and how does putting them under rotation (回転させる) affect how the plasma reponds to perturbations?

<!-- TODO: What is a black hole --> 
<!-- TODO: Answer what is AdS --> 

## The Hydrodynamic Description

Thermal state (熱平衡状態) on the boundary (境界) is a conformal plasma that obeys energy-momentum conservation (運動量・エネルギー保存) **with no source** $\partial_\mu T^{ \mu\nu } = 0$.

Conformal Field Theory (共形場理論; CFT)
: Field theory invariant under conformal transformations (rotations, translations, scalings)

Scaling invariance (スケール不変性) $\implies T^\mu_\mu = 0$

Around thermal equilibrium (平衡状態) we want to find characteristic perturbations (固有摂動)
\begin{equation}
    \delta T^{\mu\nu} \propto e^{-i\omega t + i\vec k \cdot \vec \mathbf X} \in ( T^{(0)} )^{\mu\nu} + \delta T^{\mu\nu} = ( T^{( p )} )^{\mu\nu}
\end{equation} 

-------------------------------

\begin{equation}
g^{p}_{\mu\nu} {dx}^\mu {dx}^\nu = \left(g_{\mu\nu}+\epsilon~h_{\mu\nu}+O(\epsilon^2)\right) {dx}^\mu {dx}^\nu
\end{equation} 

\begin{equation}
h_{\mu\nu} \sim r^2 h^{\mathrm{(0)}}_{\mu\nu} + h^{\mathrm{(1)}}_{\mu\nu}/r^2
\end{equation} 

- $h^{\mathrm{(0)}}_{\mu\nu}$ $\leftrightarrow$ source of $\delta T$
- $h^{\mathrm{(1)}}_{\mu\nu}$ $\leftrightarrow$ Vacuum Expectation Value (真空期待値
; VEV) of $\delta T_{\mu\nu} \equiv \langle \delta T_{\mu\nu} \rangle$.

<!-- $h^{\mathrm{(0)}}_{\mu\nu} = 0$ -->
<!-- : Sourceless boundary condition. -->

<!-- WARN: Be carful of "flat" questions -->

Conservation Equations (保存則)
: $\nabla_\mu T^{\mu\nu} \stackrel{\mathrm{flat}}{=} \partial_\mu T^{\mu\nu} \stackrel{\mathrm{Fourier}}{=} ik_{\mu} T^{\mu\nu} = 0$

Constitutive Equations (材料の構成式)[^conseq]
: $T_{\mu\nu} = \epsilon u^\mu u^\nu + P \Pi^{\mu\nu} + \pi^{\mu\nu} + ... = \left( T^{\mathrm{(0)}}\right)^{\mu\nu} + \delta T^{\mu\nu}$

Hydrodynamic Variables (温度, 流体速度)
: $u^\mu$ and $T$

[^conseq]: $u^\mu$ are the hydrodynamic velocity variables that points in the forward time direction. $\Pi^{\mu\nu} := u^{\mu}u^{\nu} + \eta^{\mu\nu}$.

<!-- ------------------------------- -->

<!-- NOTE: The conservation equations implies an eigenvalue problem and k implicitly depends on omega -->
<!-- NOTE: Gradient expansion implies that there is an expansion of omega in k -->

------------------------------

<!-- NOTE: variation with respect to metric can be used to derive transport coefficients. --> 

Order 0 (Ideal Hydrodynamics)
: $\partial_\mu\left(\epsilon u^\mu u^\nu + P \Pi^{\mu\nu}\right) = 0$ (where $u = (1, 0, 0, 0)$)

Order 1 (First Order Hydrodynamics) ([Kovtun 2019](https://inspirehep.net/literature/1744607))
: $\partial_\mu \pi^{\mu\nu} \stackrel{\mathrm{Fourier}}{=} ik_{\mu}\pi^{\mu\nu} = 0$

Order n (nth Order Hydrodynamics)
: $\partial_\mu \delta T^{\mu\nu} = 0$

The generalized eigenvalue problem (一般固有値分解) implicitly defines $\omega$ (固有振動数) as a function of $|k|$ ($\omega$は$|k|$による関数). [^sym]

\begin{equation}
\omega = \sum_{a=0} \Omega_{a} |k|^{a}
\end{equation}

Hydrodynamic Modes 
: $\left.\omega\right\vert_{|k| = 0} = 0$

Non-Hydrodynamic Modes
: $\left.\omega\right\vert_{|k| = 0} \neq 0$

[^sym]: Assuming we can rotate globally to align $k$ to any direction.

## General Relativity in AdS 

\begin{equation}
    S_{\mathrm{Gravity}} = \frac 1{16\pi G_5} \int \sqrt{-g} (R - 2\Lambda) + S_{\text{ct}}
\end{equation}

Ricci Curvature Scalar (スカラー曲率)
: $R$

Cosmological Constant (宇宙定数)
: $\Lambda = -6/L^2$

AdS Radius of Curvature (AdSの曲率半径)
: $L$

Rotating solution for $\delta S/\partial g_{\mu\nu} = 0$ ([Hawking & Reall 1998][hawking1998])  

### Note {.alert}
In $4+1$D there are two independent planes of rotation (回転の面) $\implies$ to two independent angular momenta 

<!-- Rotating black holes ( $R^{1,1}\times S^3$ ) -->

<!-- $S^3 \rightsquigarrow S^1\times S^1$ (invariant under $SO(4) \rightsquigarrow SO(2)\times SO(2)$ rotations) -->

<!-- $S^1\times S^1 \implies$ two axial angular momenta. -->

## 5D AdS Myers-Perry Metric ([Hawking & Reall 1998][hawking1998])

<!-- Simply Spinning -->
<!-- : Enhance the symmetry with $a=b$. -->

\begin{equation}\label{eq:Simple_Spin_MP_Metric}
\begin{aligned}
    d s^2=\frac{{dr}^2}{G(r)}-dt^2 \left(\frac{r^2}{\ell^2}+1\right)+\frac{1}{4} r^2 \left((\sigma^1)^2+(\sigma^2)^2+(\sigma^3)^2\right) \\ +\frac{2 \mu  }{r^2} \left(\frac{a \sigma^3}{2}+dt\right)^2
\end{aligned}
\end{equation}

:::::::::::::: {.columns align=center}
::: {.column width="50%"}
- Cooridnates: $(t, \theta, \phi, \psi, r)$
- Specific angular momentum (質量あたりの角運動量), $a$
- Expanded Horizon Symmetry $S^1\times S^1\nearrow S^2\times S^1$
<!-- - $\sigma$'s are the left-invariant forms of $SO(3)$ rotations. -->
:::
::: {.column width="50%"}
\begin{equation}\label{eq:form_basis}
    \begin{aligned}
        \sigma^1&=d\phi \sin (\theta ) \cos (\psi )-d\theta \sin (\psi ) \\
        \sigma^2&=d\theta  \cos (\psi )+d\phi \sin (\theta ) \sin (\psi )\\
        \sigma^3&=d\psi+d\phi  \cos (\theta )\\
    \end{aligned}
\end{equation}
<!-- \lsigma^i&=(\exd t, \sigma^+,\sigma^-,\sigma^3, \exd r) -->
:::
::::::::::::::

## Gravitational Perturbations

Perturbed metric to first order in $\epsilon$

\begin{align}\label{eq:pertgeneric}
        g^{p}_{\mu\nu} {dx}^\mu {dx}^\nu = \left(g_{\mu\nu}+\epsilon~h_{\mu\nu}+O(\epsilon^2)\right) {dx}^\mu {dx}^\nu\,,
\end{align}

The Einstein field equations at first order, $\epsilon$, ([Wald 1984][wald1984]) are linear partial differential equations.

\begin{align}\label{eq:pertgenericeom}
       -\frac{1}{2}\nabla_\mu \nabla_\nu h-\frac{1}{2}\nabla^\lambda \nabla_\lambda h_{\mu\nu}+\nabla^\lambda \nabla_{(\mu}h_{\nu)\lambda} = \frac{2\Lambda}{D-2}h_{\mu\nu}\,,
\end{align}

The enhanced symmetry can be used to reduce the perturbation equations to ordinary differential equations given angular momenta $(\mathcal J, \mathcal K')$.

--------------------------------

<!-- Perturbation equations of motion have two boundary conditions -->

### Boundary Conditions
- Causality (因果性) $\implies$ ingoing boundary condition (落下の境界条件) at the horizon, $r = r_+$
- Sourceless hydrodynamics $\implies$ sourceless at the boundary, $h^{(0)}_{\mu\nu} = 0$  
  $h_{\mu\nu} \sim r^2 h^{\mathrm{(0)}}_{\mu\nu} + h^{\mathrm{(1)}}_{\mu\nu}/r^2$

The equations of motion and boundary conditions together $\rightarrow$

- an eigenvalue problem and
- discrete spectra of frequencies $\omega$

# Results

[Amano, Kaminski et al.][amano2023]

- Non-Hydrodynamic Modes and effects of rotation
    - Tensor, $\mathcal K' = \mathcal J + 2$
    - Vector, $\mathcal K' = \mathcal J + 1$
    - Scalar, $\mathcal K' = \mathcal J$
- Cross Spectrum Comparison
- The Emergence of Hydrodynamics

## $\mathcal K' = \mathcal J + 2$ Tensor Sector

<!-- NOTE: backup slide pole dance slide here? -->

\begin{center}
    \animategraphics[loop,autoplay,width=0.8\textwidth]{10}{build/tensor_dance_v2-}{0}{121}
\end{center}

$\mathcal K' = \mathcal J + 2$; $h_{++}$

## $\mathcal K' = \mathcal J + 1$ Vector Fluctuations

<!-- WARN: Do not talk about the cross spectrum analysis here. You can come back here. -->

:::::::::::::: {.columns}
::: {.column width="33%"}
![](figures/Vector_rp_10_grid_45_a_0.pdf){ width=105% }
:::
::: {.column width="33%"}
![](figures/Vector_rp_10_grid_45_a_1_2.pdf){ width=105% }
:::
::: {.column width="33%"}
![](figures/Vector_rp_10_grid_45_a_9_10.pdf){ width=105% }
:::
::::::::::::::

:::::::::::::: {.columns align=center}
::: {.column width="50%"}
$a/\ell \in \{0, 1/2, 9/10\}$  
$\mathcal K' = \mathcal J + 1$; $h_{+r}$, $h_{+t}$, $h_{+3}$ (, and $h_{++}$ if $\mathcal J \geq 1$)
:::
::: {.column width="50%"}
$\mathcal J = 0, 1/2, 1, \ldots, 199/2, 100$, $r_+/\ell = 10$  
$\bigtriangleup \equiv \mathcal J = 0$, $\bigoplus \equiv \mathcal J = 100$
:::
::::::::::::::


## $\mathcal K' = \mathcal J$ Scalar Fluctuations

:::::::::::::: {.columns}
::: {.column width="33%"}
![](figures/scalar_ef_spherical_a0.pdf){ width=105% }
:::
::: {.column width="33%"}
![](figures/scalar_ef_spherical_a1_2.pdf){ width=105% }
:::
::: {.column width="33%"}
![](figures/scalar_ef_spherical_a9_10.pdf){ width=105% }
:::
::::::::::::::

:::::::::::::: {.columns align=center}
::: {.column width="50%"}
$a/\ell \in \{0, 1/2, 9/10\}$  
$\mathcal K' = \mathcal J$, $h_{+-}$; $h_{ab}$ where $a,b \in \{r,t,3\}$  
(, $h_{+r}$, $h_{+t}$, $h_{+3}$ if $\mathcal J \geq 1$ ) (, and $h_{++}$ if $\mathcal J \geq 2$)
:::
::: {.column width="50%"}
$\mathcal J = 0, 1/2, 1, \ldots, 199/2, 100$, $r_+/\ell = 10$  
$\bigtriangleup \equiv \mathcal J = 0$, $\bigoplus \equiv \mathcal J = 100$
:::
::::::::::::::

## The Emergence of Hydrodynamics


To study the dispersion relations of the lowest gapless modes, we looked at the momentum diffusion sector. 

We solved spectra for $r_+ = \{10, 100, 1000, 10^4 , 10^5 , 10^6 , 10^7 \}$ and $\mathcal J = 0, 1/2, 1, \ldots, \mathcal J_\mathrm{max}$.[^jmax]

[^jmax]: $\mathcal J_\mathrm{max}/r_+ = \mathit j_\mathrm{max} = 0.1$

To see the emergence of hydrodynamics, we fitted the data to the equation below with fitting parameters $\alpha$, $\beta$, $D$, and $v$.

\begin{equation} \label{eq:hydrofit}
    \omega = v \mathcal J^\beta - i D \mathcal J^\alpha
\end{equation}

---------------------------------

:::::::::::::: {.columns align=center}
::: {.column width="50%"}
![](figures/vector_dispersive_mode_rp_vs_im_scaling_over_a_scaled_Jleq0_1.pdf){ width=105% }  
![](figures/vector_dispersive_mode_rp_vs_diffusion_over_a_scaled_Jleq0_1.pdf){ width=105% }  
:::
::: {.column width="50%"}
![](figures/vector_dispersive_mode_rp_vs_re_scaling_over_a_scaled_Jleq0_1.pdf){ width=105% }  
![](figures/vector_dispersive_mode_rp_vs_soundspeed_over_a_scaled_Jleq0_1.pdf){ width=105% }  
:::
::::::::::::::

:::::::::::::: {.columns align=center}
::: {.column width="50%"}
([Kovtun 2019](https://inspirehep.net/literature/1744607))
:::
::: {.column width="50%"}
\begin{equation}
    \omega = v \mathcal J^\beta - i D \mathcal J^\alpha
\end{equation}
:::
::::::::::::::

## Cross Spectrum Comparisons

:::::::::::::: {.columns}
::: {.column width="50%"}
![](figures/all_sectors_compared_ef_spherical_over_a0.pdf){ width=90% }
:::
::: {.column width="50%"}
![](figures/all_sectors_compared_ef_spherical_over_a1_2.pdf){ width=90% }
:::
::::::::::::::

:::::::::::::: {.columns align=center}
::: {.column width="33%"}
\textcolor{ForestGreen}{$\cdot$ Tensor}
:::
::: {.column width="33%"}
\textcolor{red}{$\cdot$ Vector}
:::
::: {.column width="33%"}
\textcolor{blue}{$\cdot$ Scalar}
:::
::::::::::::::

## Outlook

- Look to calculate with a more general parameter space where $\mathcal J_\phi\neq\mathcal J_\psi$ ($a\neq b$).
    - No "axis of rotation" in current background.
    - Need PDE ([Amado et al 2020](https://inspirehep.net/literature/1780844), [Amado et al. 2021](https://inspirehep.net/literature/1844790))
- Different **sources** of rotation?
    - Vector graviton sourcing the rotation ~ $H_{\theta i} \sim \Omega_i r^2$
    - RN with magnetic field, $A_\theta \sim \Omega_i r^2$ [Domenech et al. 2010](https://inspirehep.net/literature/854786)
- Interpretation of Linear instability in the dual field theory?
- be used in "hydro codes"
- and more...read the fantastic paper!

## Acknowledgements

This research was conducted with funding from the _Postdoctoral Fellowship at Henan University_.

I would like to thank my collaborators, _Matthias Kaminski_, _Casey Cartwright_, and _Jackson Wu_, on yet another fruitful for the research presented in this presentation.

Research in this presentation also included contributions from 

- _Mike Blake_, _Casey Cartwright_, _Matthias Kaminski_, and _Anthony Thompson_  
  [Amano et al. 2022][amano2022mlu]
- _Casey Cartwright_, _Matthias Kaminski_, _Jorge Noronha_, _Enrico Speranza_  
  [Cartwright et al. 2023][cartwright2021qpp]

[hawking1998]:https://inspirehep.net/literature/478927
[amano2023]:https://arxiv.org/abs/2308.11686
[amano2022mlu]:https://inspirehep.net/literature/2174613
[cartwright2021qpp]:https://inspirehep.net/literature/1994753
[wald1984]:https://inspirehep.net/literature/209356 
[natuume2014]:https://inspirehep.net/literature/1316320
[murata2009]:https://doi.org/10.1143/PTP.121.1099
[adscftuserguide]: https://arxiv.org/abs/1409.3575
