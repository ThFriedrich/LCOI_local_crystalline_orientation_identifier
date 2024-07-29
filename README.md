# crystalDirections
## Author
Snir Meiri
### Affiliation
- Department of Physics of Complex Systems, Weizmann Institute of Science, Rehovot 76100, Israel 
# Statement of need

# Summary

# User guide

## Overview
The main objective of the application is to identify the orientation of the local crystalline order from crystal imaging data.
The following figure summarizes the general flow of the identification process:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over1.png" width="800">

After loading the image and optional contrast adjustment the user should first apply particle detection or upload pre-identified data. Then, the user creates a mask (hull) by manually choosing particles of the desired symmetry. The options are triangular, rectangular and hexagonal, where the last two can either have 2-fold symmetry or 4-fold and 6-fold, respectively. Next, the local orientation of the optimal fits of the created mask to the identified particles is detected and color-coded. A more detailed scheme of the oreintation detection is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/User%20guide%20images/over2.png" width="800">

After particle identification and mask creation the following step is particles pairs identification by considering all particles below a threshold set by considering the created mask. Then, the mask is located at all identified pairs and screened for the sum of the distances to the closest particles to each mask's vertex. Then, the particles closest to each vertex in the screened fits is identified and the optimal location and orientation is computed analytically. For more details see (add.................). Finally, the mask can be adjusted using all found fits by takings the means of the relevant distances and the updated fits can be recomputed.  

# Examples
There are three example images for analysis in the folder examples, along with suggested parametes for each. 

The example image for the triangular local order is a cropped version of an image adopted from the Wikipedia page of "Colloidal crystal" (as of 23/07/2024), uploaded by Zephyris.

The example images for the rectangular and hexagonal (NiZr-like) local order are adopted with permission from experimental data produced in the research group of Prof. Rafal Klajn. 
