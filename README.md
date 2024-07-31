# COOI - Crystal's orientational order identifier using mask fitting implemented in MATLAB.
## Author
Snir Meiri
### Affiliation
- Department of Physics of Complex Systems, Weizmann Institute of Science, Rehovot 76100, Israel

# Summary

COOI is designed to extract orientation information about local crystalline order from microscopy images such as transmission electron microscopy (TEM). Specifically, the software is able to identify triangular, rectangular and hexagonal order within planar cross-sections of colloidal crystals. The orientation identification is based on mask fitting to the identified particles. The software, implemented as a MATLAB application, allows the user various tools including basic image proccessing, particles identification, mask fitting, orientations analysis and strain measurements in the crystal. 

# Statement of need

Detection and analysis of the orientation of local crystalline order arises in different fields such as chemistry, materials science and condenssed matter physics. In particular, such analysis is central for studying crystal melting, jamming, crystal twinning and crystal strains, among others. The stantard used tool is bond-orientational order parameter. It has varoius shortcomings, including high sensitivity to defects and lack of robustness to noise, where small location shifts can lead to abrupt jumps in the identified directionality. 

# User guide

## Overview
The main objective of the application is to identify the orientation of the local crystalline order from crystal imaging data.
The following figure summarizes the general flow of the identification process:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over1.png" width="800">

After loading the image and optional contrast adjustment the user should first apply particle detection or upload pre-identified data. Then, the user creates a mask (hull) by manually choosing particles of the desired symmetry and the mask is symmetrized by the software. The options are triangular, rectangular and hexagonal, where the last two can either have 2-fold symmetry or 4-fold and 6-fold, respectively. Next, the local orientation of the optimal fits of the created mask to the identified particles is detected and color-coded. A more detailed scheme of the oreintation detection is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over2.png" width="800">

After particle identification and mask creation the following step is particles pairs identification by considering all particles below a threshold set by considering the created mask. Then, a fitting mask is located as if each pair corresponds to the edge of the mask. These initial guesses are screened for the sum of the distances to the closest particles to each mask's vertex, with distance cutoff.  Next, for the screened masks’ location and orientation, the particle associated with each mask’s vertex is identified and the optimal location and orientation is computed analytically. For more details see the attached file: Mask location and rotation optimization. Finally, the mask can be adjusted using all found fits by takings the means of the relevant distances and the updated optimal location and orientation are recomputed.

## User interface and features

The main tab with a loaded image looks as follows: 

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/main.png" width="1400">

The user can load a new image (1), load and save the project and export specific images/the app screen. Next, the user can crop the image (2). If the crystal is imaged on a background, the user can segment the image (3) and keep/remove the segmented region marked by a colored mask. Next, the user can adjust the contrast using several schemes (4). The scheme that usually works best is AdaptHistEq.

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/adjust.png" width="1400">

In the Adjust contrast & delete particles tab, the user can also adjust the contrast in a specific user-marked region using the different schemes (1) or use AdaptHistEq in tiles of desired size (2) in case where there is a spatial modulation of the contrast. The tiles should be of the order of the spatial modulation and no smaller than a few particles. 

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/main2.png" width="1400">

The next step is locating the particles, using the panel marked in red in the main tab. It is done using Hough transform with user specified parameters as minimal and maximal radius of expected particles, and sensitivity. In addition, thresholding for the process can be done automatically, using manually specified threshold between 0 and 1, where smaller number corresponds to weak edges, or using a scanning scheme in a specified range and equally spaced steps.  The software can choose parameters automatically by reducing the radii range and changing sensitivity and the manual thresholding value (depending on the threshold scroll-down value) until changing them does not result in higher number of identified particles. Note however that the search can be slow and the search time depends on the width of the user specified minimal and maximal particle radius and on the number of particles. Thus, narrowing the range manually and/or running first on a small cropped region is suggested. In addition, there is a distance measuring tool (1) in order to estimate the size of the particles. In order to increase the number of found particles, the general approach in this scheme is locating particles by the Hough transformation with high sensitivity and then applying filtration. Since large particles overlaps are not expected, the found particles are screened according to a minimal distance specified by the user, where the better fitted particle is kept according to the resulting metric from the Hough transform. Two additional filtration steps are applied where the first applies a smaller circular filter around the detected particles centers and penalizes high pixels values variance and the second sums all pixels values using a circular disk with a radius of the mean identified radii. For more details the reader is referred to the code. Last, the localization of the particles’ centers may be improved using center optimization of a circular disk filter. Notice that large particles overlaps may cause artifacts in the resulting locations.  In addition, the user can upload particles identification data of a different software, saved to a mat file. In order to do so, the particles centers in a (x,y) order should by saved in a N-by-2 array named centers, and the particles’ radii and identification metric should by saved as N-by-1 arrays named radii and particlesMetric, respectively. At any point, the user can show the resulting layers on the right panel using the checkboxes (2). Particles can be manually deleted in the Adjust contrast & delete particles tab.

The mask is created using the second tab, Mask creation & fitting:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/masks.png" width="1400">

The user should first plot the image and detected particles (1). The user can zoom in on a domain (for large crystals) by picking two points using the mouse and click on zoom-in. After clicking on pick particles (2) in the tab of the desired unit-cell type the particle are chosen by clicking on the image close to the desired particles. The order is explained in the instructions text-box. Then, the user should click create mask (3). Next, the user can click on identify orientations (4) while using the numeric factors in the Screening factors panel. The user can turn parallel computation on and off using the switch, where non-parallel is faster for relatively small images. Last, the user can choose to optimize the fitting mask. The user can sort (5) the found masks using two parameters, multiplicative and fraction. Where latter is the fraction of the mean particle radius and the former factor multiplies this number such that all masks whose sum distance between their vertices and the closest particles’ centers is lesser or equal to $M \cdot(\frac{mean \quad radius}{F})^2$  are kept, where $M$ is the Multiplicative  factor and $F$ is the fraction factor. The user can also plot the centers of the identified particles and of the detected masks.  Examples of the mask created by the user (left) and resulting fitted masks color-coded by orientation (right) are:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/masks2.png" width="800">

The next tab is Analyze directions:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/analysis.png" width="1400">

After plotting the fitted masks of the desired symmetry (1), the user can measure the mean angle at a specific mouse-picked polygonal region (2), cluster the angles (in the entire image or in the picked region) to a specific number of groups (using k-means) and plot the directions colormap fitted to each cluster (3) and manually adjust the directions colormap (4).

The next tab is Tessellation & strains – hexagonal:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/hexagonal.png" width="1400">

After associating the particles with each mask’s center (1) the user can both tessellate (2) per particle height (for NiZr-like hexagonal order) or to measure strains in the crystal (3). The first is designated for cross-sections containing particles half a layer below others where each layer is colored in yellow or blue. The tessellation can either start with the best-fitting mask or by manually picking a mask. In both cases the color-coding can be flipped per user request.  The tessellation applies to all neighboring masks connected by 2 particles. In the strains tab the user can measure deviations of the distance between particles at the vertices of the masks from the mean distance in all masks or from a manually picked value. The color-bar can be symmetric or between the minimal and maximal values, and edges farther than n standard deviations from the mean can be omitted.  

The next tab of Strains – rectangular & triangular have the same form and functionality as the strain tab of the hexagonal order. The last tab is Exporting, where the user can choose specific variables to export to a mat file, using a list of checkboxes. 

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/export.png" width="1400">

# Examples
There are three example images for analysis in the folder examples, along with suggested parametes for each. 

The example image for the triangular local order is a cropped version of an image from the Wikipedia page of "Colloidal crystal" (as of 23/07/2024), uploaded by Zephyris.

The example images for the rectangular (CsCl-like) and hexagonal (NiZr-like) local order are adopted with permission from experimental data produced in the research group of Prof. Rafal Klajn. 
