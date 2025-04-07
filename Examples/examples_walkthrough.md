# Examples walkthrough

This file provides a walkthrough guide for the crystal's directionality analysis of the three attached example files. This is not a full guide for the use of the application but rather a list of suggested parameters for the analysis of the examples and the results expected from these routines. For a more thorough guide on how to use the app see the attached user manual. While the software is deterministic the result depends on the user's choice of particles during the creation of the fitting mask. Thus, the results may have slight differences compared with the ones shown here.

The examples are: triangular crystal, rectangular crystal (cross-section of a CsCl-like crystal) and 2-fold symmetric hexagonal crystal. The example image for the triangular local order is a cropped version of an image adopted from the Wikipedia page of "Colloidal crystal" (as of 23/07/2024), uploaded by Zephyris. The example images for the rectangular and 2-fold hexagonal local order are adopted with permission from experimental data produced in the research group of Prof. Rafal Klajn.

## Triangular crystal

The initial image (triangular.png) is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/triangular.png" width="500">

### Particles detection

Particles detection is applied with the following parameters: minR:22, maxR:25, Sensitivity:1, min distance:1.4 and method:2-stage. Scan operation is used for the thresholding of edges detection from 0.05 to 0.4 with steps of 0.05. The result is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/examples%20results/triangular_particles.png" width="500">

### Directionality detection
After creating a triangular hull, the identified masks' directions with multiplicative factor of 3 and fraction factor of 1.4, looks like:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/examples%20results/triangular_masks.png" width="790">

## Rectangular (CsCl-lke) crystal

The initial image (CsCl_rectangular.png) is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/CsCl_rectangular.png" width="500">

### Particles detection

Particles detection is applied with the following parameters: minR:16, maxR:17, Sensitivity:1, min distance:1.4 and method:Phase coding. Scan operation is used for the thresholding of edges detection from 0.05 to 0.4 with steps of 0.05. A single particles' centers optimization is applied. The result is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/examples%20results/rectangular_particles.png" width="510">

### Directionality detection
After creating a rectangular hull, the identified masks' directions with multiplicative factor of 4 and fraction factor of 1.6, looks like:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/examples%20results/rectangular_masks.png" width="790">

## Hexagonal (2-fold symmetry) crystal

The initial image (2_fold_hexagonal.png) is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/2_fold_hexagonal.png" width="500">

### Particles detection

Particles detection is applied with the following parameters: minR:29, maxR:30, Sensitivity:0.99, min distance:2 and method:2-stage. Auto thresholding is used.  The result is:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/examples%20results/2_fold_Hexagonal_particles.png" width="520">

### Directionality detection
After creating a hexagonal hull, the identified masks' directions with multiplicative factor of 6 and fraction factor of 1.6, looks like:

<img src="https://github.com/SnirMeiri/crystalDirections/blob/main/Examples/examples%20results/2_fold_Hexagonal_masks.png" width="790">

Further analysis of this image corresponding to analysis of the obtained masks, strain analysis and tesellation can be found in the [User Guide](https://github.com/SnirMeiri/LCOI_local_crystalline_orientation_identifier/edit/main/User%20guide.md).
