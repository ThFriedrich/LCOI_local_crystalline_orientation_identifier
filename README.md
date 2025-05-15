# LCOI - Local crystalline orientation identifier using mask fitting implemented in MATLAB.

# Summary

LCOI is designed to extract orientation information about local crystalline order from microscopy images such as transmission electron microscopy (TEM). Specifically, the software is able to identify triangular, rectangular and hexagonal order within planar cross-sections of colloidal crystals. The orientation identification is based on mask fitting to the identified particles. The software, implemented as a MATLAB application, allows the user various tools including basic image processing, particles identification, mask creation and fitting, orientations analysis and strain measurements in the crystal. 

# Statement of need

Detection and analysis of the orientation of local crystalline order arises in different fields such as chemistry, materials science and condensed matter physics. In particular, such analysis is central for studying crystal melting, jamming, crystal twinning and crystal strains, among others. The standard tool used for such analysis is bond-orientational order parameter. It has various shortcomings, including high sensitivity to defects and lack of robustness to noise, where small location shifts can lead to abrupt jumps in the identified directionality. While some works focus on correcting the definition of the order parameter, we propose a different approach based on optimal fitting of a mask of a specific shape to the detected particles. Within this approach, the resulting directionality is continuous and robust to local noise. The accuracy in mask orientation detection is primarily limited by the accuracy of the particle location detection. 

# Installation
Download the app and supplementary MATLAB functions to one folder and open the application through the MATLAB AppDesigner. The application was developed using the 2021b MATLAB version and might not be compatible with earlier versions. The application uses the Image Processing toolbox and the Parallel Computation toolbox. 

# License
This project is licensed under the [NPOSL-3.0 License](https://spdx.org/licenses/NPOSL-3.0).

# Overview
The main objective of the application is to identify the orientation of the local crystalline order from crystal imaging data.
The following figure summarizes the general flow of the identification process:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over1.png" width="800">

After loading the image and optional contrast adjustment the user should first apply particle detection or upload pre-identified data. Then, the user creates a mask (hull) by manually choosing particles of the desired symmetry and the mask is symmetrized by the software. The options are triangular, rectangular and hexagonal, where the last two can either have 2-fold symmetry or 4-fold and 6-fold, respectively. Next, the local orientation of the optimal fits of the created mask to the identified particles is detected and color-coded. A more detailed scheme of the orientation detection is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over2.png" width="800">

After particle identification and mask creation the following step is particles pairs identification by considering all particles below a threshold set by considering the created mask. Then, a fitting mask is located as if each pair corresponds to the edge of the mask. These initial guesses are screened for the sum of the distances to the closest particles to each mask's vertex, with distance cutoff.  Next, for the screened masks’ location and orientation, the particle associated with each mask’s vertex is identified and the optimal location and orientation is computed analytically. For more details see the attached file: Mask location and rotation optimization. Finally, the mask can be adjusted using all found fits by takings the means of the relevant distances and the updated optimal location and orientation are recomputed.

For more detailed information see the user guide.

# Examples
There are three example images for analysis in the folder examples, along with suggested parameters for each. 

The example image for the triangular local order is a cropped version of an image from the Wikipedia page of "Colloidal crystal" (as of 23/07/2024), uploaded by Zephyris.

The example images for the rectangular and 2-fold hexagonal local order are adopted with permission from experimental data produced in the research group of Prof. Rafal Klajn. 

