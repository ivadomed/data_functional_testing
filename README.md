# data_functional_testing
Light-weighted data for our functional tests

# Content
* sub-unf01: BIDS folder with multiple contrast (T2w, T2star and T1w). Original image and derivatives (see below) from [ivadomed spine generic example repo](https://github.com/ivadomed/data_example_spinegeneric/releases/tag/r20200907) were resampled to 1mm isotropic and converted to Float32 to reduce repo size. Subject was randomly selected among the available subjects. Images were oriented according to RPI convention and were cropped with the following bounding box: x=[50, 181], y=[60, 201], z=[10, 26].
* `derivatives/labels/sub-unf01`: derivatives folder with the following labels:
  * `_seg-manual`: spinal cord segmentations for all contrasts,
  * `_lesion-manual`: dummy labels which are supposed to represent lesion segmentation. WARNING: these are *not* actual lesion segmentations, but are only here for the purpose of testing the workflow of `ivadomed` codebase.
  * `_labels-disc-manual`: dummy label (single voxel), which is supposed to represent disc label. WARNING: this is *not* an actual label that represent the anatomy, but is only here for the purpose of testing the workflow of `ivadomed` codebase.
* bounding\_box.json: dictionary to test a specific function from `ivadomed/scripts/bounding_box.py`.
* dataset\_description.json: this file is needed to described the dataset.
* participants.csv: table with subject name and potential metadata.
* temporary\_results.csv: Used to test `ivadomed/scripts/compare_models.py`.

* sub-unf02/sub-unf03: copies of sub-unf01
