% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_predictors.R
\name{make_predictors}
\alias{make_predictors}
\title{Make CT Predictors}
\usage{
make_predictors(img, mask, roi = NULL, nvoxels = 1, moments = 1:4,
  center = c(FALSE, TRUE, TRUE, TRUE), lthresh = 40, uthresh = 80,
  sigmas = c(5, 10, 20), save_imgs = TRUE, outdir = NULL,
  stub = NULL, overwrite = FALSE,
  template.file = system.file("scct_unsmooth_SS_0.01.nii.gz", package =
  "ichseg"), mean.img = system.file("Mean_Image.nii.gz", package =
  "ichseg"), sd.img = system.file("SD_Image.nii.gz", package = "ichseg"),
  zscore.typeofTransform = "SyN", zscore.interpolator = "Linear",
  flip.typeofTransform = "Affine",
  flip.interpolator = "LanczosWindowedSinc", low_thresh = 1e-13,
  verbose = TRUE, shiny = FALSE, erode_mask = TRUE, ...)
}
\arguments{
\item{img}{Filename of image intensities}

\item{mask}{Filename of brain mask}

\item{roi}{Filename of ROI for Y}

\item{nvoxels}{Voxel neighborhood}

\item{moments}{Moments of neighborhood to take}

\item{center}{Center the moments}

\item{lthresh}{Lower threshold for neighborhood setting}

\item{uthresh}{Upper threshold for neighborhood setting}

\item{sigmas}{Sigma values for Gaussian smoothed images (in mm)}

\item{save_imgs}{Logical to save all images that are created as
predictors}

\item{outdir}{Output directory of saved images, needs to be set
if \code{save_imgs = TRUE}}

\item{stub}{Basename to write image names if \code{save_imgs = TRUE}}

\item{overwrite}{If \code{save_imgs} is \code{TRUE},
then should
the files be overwritten?  If not, then files will be read
instead instead of code being re-run.}

\item{template.file}{Template to register to (CT Template)}

\item{mean.img}{Mean image in template space for z-scoring}

\item{sd.img}{SD image in template space for z-scoring}

\item{zscore.typeofTransform}{type of transform for z-scoring}

\item{zscore.interpolator}{type of interpolator for z-scoring}

\item{flip.typeofTransform}{type of transform for flipped difference}

\item{flip.interpolator}{type of interpolator for flipped difference}

\item{low_thresh}{Threshold for forcing values to zero}

\item{verbose}{Logical indicator if output messages should be
printed}

\item{shiny}{Should shiny progress be called?}

\item{erode_mask}{Should the brain mask be eroded?}

\item{...}{options passed to \code{\link{get_neighbors}}}
}
\value{
List of a data.frame of Predictors and set of
indices to
keep in mask and an empty nifti object for plotting.
Also the number of voxels of the roi that were not in the
mask
}
\description{
Create a set of predictors for ICH segmentation
for CT
}
