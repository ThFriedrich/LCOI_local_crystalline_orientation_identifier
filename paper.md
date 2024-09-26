---
title: 'LCOI: Local crystalline orientation identifier using mask fitting implemented in MATLAB'
tags:
  - MATLAB
  - Collodial crystals
  - Crystal analysis
  -  FIB-TEM
authors: 
  - name: Snir Meiri
    orcid: 0000-0003-3133-8269
    affiliation: "1"
  - name: Efi Efrati
    orcid: 0000-0001-5338-7980
    affiliation: "1"
affiliations:
  - name: Department of Physics of Complex Systems, Weizmann Institute of Science, Rehovot 76100, Israel
    index: 1
date: 25 September 2024
bibliography: paper.bib
---
- # Statement of need
   Detection and analysis of the orientation of local crystalline order arises in different fields such as chemistry, materials science and condensed matter physics. In particular, such analysis is central for studying crystal melting, jamming, crystal twinning and crystal strains, among others. Although the local orientations can be deduced from the diffraction data [@Busing:1967; @Zaefferer:2011; @Angel:2015] , such analysis must take some spatial averages. The standard tool used for deducing the orientations a set of identified particles in imaging data is bond-orientational order parameter. It has various shortcomings [@Mickel:2013], including restriction to isotropic lattices, high sensitivity to defects and lack of robustness to noise, where small location shifts can lead to abrupt jumps in the identified directionality. While some works focus on correcting the definition of the order parameter [@Mickel:2013], we propose a different approach based on optimal fitting of a mask of a specific shape to the detected particles. Within this approach, the resulting directionality is continuous and robust to local noise. The accuracy in mask orientation detection is primarily limited by the accuracy of the particle location detection.
- # Summary
  LCOI is designed to extract orientation information about local crystalline order from microscopy images such as transmission electron microscopy (TEM). Specifically, the software is able to identify triangular, rectangular and hexagonal order within planar cross-sections of colloidal crystals. The orientation identification is based on mask fitting to the identified particles. The software, implemented as a MATLAB application, allows the user various tools including basic image processing, particles identification, mask creation and fitting, orientations analysis and strain measurements in the crystal. The following figure summarizes the general flow of the identification process:
  ![](User%20guide%20images/over1.png)
  After loading the image and optional contrast adjustment the user should first apply particle detection or upload pre-identified data. Then, the user creates a mask (hull) by manually choosing particles of the desired symmetry and the mask is symmetrized by the software. The options are triangular, rectangular and hexagonal, where the last two can either have 2-fold symmetry or 4-fold and 6-fold, respectively. Next, the local orientation of the optimal fits of the created mask to the identified particles is detected and color-coded. A more detailed scheme of the orientation detection is:
  ![](User%20guide%20images/over2.png)
  After particles identification and mask creation the following step is particles pairs identification by considering all particles below a distance threshold set by considering the created mask. Then, a fitting mask is located as if each pair corresponds to an edge of the mask. These initial guesses are screened for the sum of the distances to the closest particles to each mask's vertex.  Next, for the screened masks’ location and orientation, the particle associated with each mask’s vertex is identified and the optimal location and orientation is computed analytically. For more details see the attached file: Mask location and rotation optimization. Finally, the mask can be adjusted using all found fits by takings the means of the relevant distances and the updated optimal location and orientation are recomputed.
- # Acknowledgements
   We highly acknowledge Prof. Rafal Klajn and his group members for introducing us to the field and its challenges which resulted in this software. This work was supported by ISF grant No. 1444/21.
- # References
