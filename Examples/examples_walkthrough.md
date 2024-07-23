# Examples walkthrough

This file provides a walkthrough guide for the crystal's directionality analysis of the three attached example files. The examples are: triangular crystal, rectangular crystal (cross-section of a CsCl-like crystal) and hexagonal crystal (cross-section of a NiZr-like crystal). For a more thorough guide for how to use the app see the attched user manual.

The example image for the triangular local order is a cropped version of an image adopted from the Wikipedia page of "Colloidal crystal" (as of 23/07/2024), uploaded by Zephyris.

The example images for the rectangular and hexagonal (NiZr-like) local order are adopted with permission from experimental data produced in the research group of Prof. Rafal Klajn.

## Triangular crystal

The initial image (triangular.png) is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/triangular.png" width="500">

### Particles detection

Particles detection is applied with the following parameters: minR:22, maxR:25, Sensitivity:1, min distance:1.4 and  method:2-stage. Scan operation is used for the thresholding of edges detection from 0.05 to 0.4 with steps of 0.05. The result is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/examples%20results/triangular_particles.png" width="500">

### Directionality detection
After creating a triangular hull, the identified masks' directions with multiplicative factor of 3 and fraction factor of 1.4, looks like:

<img src="" width="500">

## Rectangular (CsCl-lke) crystal

## Hexagonal (NiZr-like) crystal
