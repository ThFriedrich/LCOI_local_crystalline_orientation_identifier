# User guide

## Overview
The main objective of the application is to identify the orientation of the local crystalline order from crystal imaging data.
The following figure summarizes the general flow of the identification process:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over1.png" width="800">

After loading the image and optional contrast adjustment the user should first apply particle detection or upload pre-identified data. Then, the user creates a mask (hull) by manually choosing particles of the desired symmetry and the mask is symmetrized by the software. The options are triangular, rectangular and hexagonal, where the last two can either have 2-fold symmetry or 4-fold and 6-fold, respectively. Next, the local orientation of the optimal fits of the created mask to the identified particles is detected and color-coded. 

A more detailed scheme of the orientation detection is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over2.png" width="800">

After particle identification and mask creation the following step is particles pairs identification by considering all particles below a threshold set by considering the created mask. Then, a fitting mask is positioned as if each pair corresponds to a mask edge. These initial guesses are screened by calculating the sum of distances to the closest particles for each mask vertex, with distance cutoff.  Next, for the screened masks’ location and orientation, the software identifies particles associated with each vertex and computes the optimal location and orientation analytically. For more details see the attached file: Mask location and rotation optimization. Finally, the mask can be adjusted using all found fits by takings the means of the relevant distances and the updated optimal location and orientation are recomputed.

## User interface and features

### Main Tab

The main tab with a loaded image looks as follows: 

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/main.png" width="1400">

The user can load a new image (1), load and save the project and export specific images/the app screen. Next, the user can crop the image (2) by setting the pixel indices to keep in both x and y axes. If the crystal is imaged on a background, the user can segment the image (3) and keep/remove the segmented region marked by a colored mask. The background which is out of the segmented region can be colored either black (default) or white, according to the user's choice. The segmentation is based on the MATLAB function bwboundaries. The user can modify the hole-filling factor which specifies the desired size of holes (measured in pixels) to be filled within the segmented region. Notice that the segmentation time can be long and depends on the size of the image. Next, the user can adjust the contrast using several schemes (4). The scheme that usually works best is AdaptHistEq. The different schemes are especially useful if the original image contains large areas that are no longer relevant in the analyzed image due to cropping/segmentation, requiring redistribution of the grayscale color scheme. Notice however that these contrast adjustment schemes may be problematic with particles of small radii as they may further reduce their size. It is suggested to attempt the different schemes along with particle detection (to be discussed next) on a cropped area of the crystal to find the optimal scheme and choice of parameters.

### Adjust Contrast & Delete Particles Tab

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/adjust.png" width="1400">

In the Adjust contrast & delete particles tab, the user can:
- (1) Adjust the contrast in a specific user-marked region using the different schemes.
- (2) Use AdaptHistEq in tiles of desired size (measured in pixels) in case where there is a spatial modulation of the contrast. The tiles should be of the order of the spatial modulation and no smaller than a few particles. Particles can be manually picked and deleted by the user. 

### Main Tab: Particle Detection

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/main2.png" width="1400">

The next step is locating the particles, using the panel marked in red in the main tab. It is done using circular Hough transform (imfindcircles) with user specified parameters as minimal and maximal radius of expected particles (measured in pixels) and sensitivity which is a value between 0 and 1. The user can choose whether bright or dark particles are expected and the used method for imfindcircles between PhaseCode and TwoStage using the toggle switches. In general PhaseCode is the faster method and is more robust to noise but TwoStage is generally more sensitive and detects more circles at a given sensitivity value. In addition, thresholding of the edges can be done automatically, using manually specified threshold between 0 and 1, where smaller number corresponds to weaker edges, or using a scanning scheme in a specified range of equally spaced steps. Regarding the last option, the software can choose parameters automatically by reducing the radii range and changing the sensitivity and the manual thresholding value (depending on the threshold scroll-down value) until changing them does not result in higher number of identified particles. Note however that the search can be slow and the search time depends on the width of the user specified minimal and maximal particle radius and on the number of particles. Thus, narrowing the range manually and/or running first on a small cropped region is suggested. In addition, there is a distance measuring tool (1) in order to estimate the size of the particles. In order to increase the number of found particles by using the expected spatial information (i.e. the expected overlap of particles), the general approach in this scheme is locating particles by the Hough transformation with high sensitivity and then applying filtration. Since large particles overlaps are not expected, the found particles are screened according to a minimal distance specified by the user, where the better fitted particle is kept according to the resulting metric from the Hough transform. Two additional filtration steps are applied in order to minimize detection of the gaps between particles in case they are similar in size to the particles themselves.

<details><summary>Detailed info on filtration </summary> The first filtration applies a smaller circular filter around the detected particles centers and penalizes high variance of pixels values. The second sums all pixel values using a circular disk with a radius of the mean identified radii. The first filtration step is used to minimize detection of particles' centers near the edges of the particles and the second scores the fit by integrating the pixels' values within the detected circle. Due to brevity of the GUI these values can be changed in the code. The parameters of the filtration are: the fraction of disk to be considered compared to the mean radius of the detected particles, the factor of the threshold metric to be kept (between 0 and 1), the power of the standard deviation in the score of the filter(factStd), the percentile of the metric which is set as a threshold (between 0 and 100), the power of the minimal pixel value in the score (fact1) and the power of the minimal pixel value in the score (fact2). The formula of the score reads:
$modified \quad score=\frac{(minimal \quad pixel \quad value)^{fact1}}{(maximal \quad pixel \quad value)^{fact2} \cdot std^{factStd}}.$
  
The score is then normalized by the radius of the detected particle squared and only scores above the product of the chosen percentile of the score and the chosen factor are kept. The default values for the filtration steps are (0.5,0.15,4,90,0,0) and (1,0.33,0,90,0,0), respectively. Notice that normalizing by the maximal/minimal pixel value may skew the results and give sub-optimal centering (but are kept here as an option for the flexibility of the filter).</details>

Last, the obtained locations of the particles’ centers may be improved using center optimization of a circular disk filter where at each step the located center can move by up to 1/8 of the mean radius in the x and y directions. Notice that large particles overlaps may cause artifacts in the resulting locations.  In addition, the user can upload particles identification data from a different software, saved to a mat file. In order to do so the data should be saved as:

- The particles centers in a (x,y) order should by saved in a N-by-2 array named centers.
- The particles’ radii and identification metric should by saved as N-by-1 arrays named radii and particlesMetric, respectively.

At any point, the user can show the resulting layers on the right panel using the checkboxes (2).

### Mask Creation & Fitting Tab

The mask is created using the second tab, Mask creation & fitting:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/masks.png" width="1400">

The user should first plot the image and detected particles (1). The user can zoom in on a domain (for large crystals) by picking two points using the mouse and click on zoom-in. After clicking on pick particles (2) in the tab of the desired unit-cell type, the particles are chosen by clicking on the image close to the desired particles. The expected order for choosing particles is explained in the instructions text-box. Then, the user should click on create mask (3). Next, the user can click on identify orientations (4) while using the numeric factors in the Screening factors panel. The user can turn parallel computation on and off using the switch, where non-parallel is faster for relatively small images. Last, the user can choose to optimize the fitting mask. The value of the number of colors in the colormap, chosen by the user, changes the granularity of the colormap and does not affect the colorcoding itself. The user can sort (5) the found masks using two parameters, multiplicative and fraction. 

<details><summary>Sorting parameters</summary> All masks whose sum distance between their vertices and the closest particles’ centers is lesser or equal to $M \cdot(\frac{mean \quad radius}{F})^2$  are kept, where $M$ is the Multiplicative  factor and $F$ is the fraction factor. $M$ usually corresponds to the number of particles in the expected unit-cell and to whther the user wants to keep fits with fewer particles (corresponding to defects) and $F$ corresponds to the expected variance around the used fitting mask where larger values correspond to higher thresholding of the kept fits.</details>
  
The optimal location and orientation per mask type and particles' location can be found in [Mask location and rotation optimization](https://github.com/SnirMeiri/LCOI_local_crystalline_orientation_identifier/blob/main/Mask%20location%20and%20rotation%20optimization.pdf). The user can also plot the centers of the identified particles and of the detected masks.  Examples of the mask created by the user (left) and resulting fitted masks color-coded by orientation (right) are:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/masks2.png" width="800">

### Analyze Directions Tab

The next tab is Analyze directions:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/analysis.png" width="1400">

After plotting the fitted masks of the desired symmetry (1), the user can measure the mean angle at a specific mouse-picked polygonal region (2), cluster the angles (in the entire image or in the picked region) to a specific number of groups (using k-means) and plot the directions colormap fitted to each cluster (3) and manually adjust the directions colormap (4).

### Tessellation & Strains – Hexagonal Tab

The next tab is Tessellation & strains – hexagonal:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/hexagonal.png" width="1400">

After associating the particles with each mask’s center (1) the user can both tessellate (2) per particle height (in case it is applicable for the hexagonal order) or to measure strains in the crystal (3). The first is designated for cross-sections containing particles half a layer below others where each layer is colored in yellow or blue, assuming alternating particles in the unit-cell. The tessellation can either start with the best-fitting mask or by manually picking a mask. In both cases the color-coding can be flipped per user request.  The tessellation applies to all neighboring masks connected by 2 particles and stops when there are no neighboring masks to any teselated mask that were not marked. In the strains tab the user can measure deviations of the distance between particles at the vertices of the masks from the mean distance of all masks or from a manually picked value. The color-bar of the strain can be symmetric or between the minimal and maximal values, and edges farther than n standard deviations from the mean can be omitted. These values can be changed by the user.  
The next tab of Strains – rectangular & triangular have the same form and functionality as the strain tab of the hexagonal order. 

### Exporting Tab

The last tab is Exporting, where the user can choose specific variables to be exported to a mat file, using a list of checkboxes. 

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/export.png" width="1400">
