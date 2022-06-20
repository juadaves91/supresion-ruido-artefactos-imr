file_list <- fs::dir_ls(path = "/Volumes/My Book/ADNI - IDA/ADNI1_Complete 1Yr 1.5T/ADNI/", recurse = TRUE, type = "file", glob = "*.nii")
#file_list <- fs::dir_ls(path = "/Volumes/TOSHIBA EXT/ADNI - IDA/ADNI1_Complete 1Yr 1.5T/ADNI/", recurse = TRUE, type = "file", glob = "*.nii")
count <- 0
str_paths <- ""
a = c()

for (full_path in file_list){

  str_paths <- paste0(full_path, ",") 
  d=paste(full_path, ",")
  a=c(a,d)
  
  #full_path = "/Volumes/My Book/ADNI - IDA/ADNI1_Complete 1Yr 1.5T/ADNI/002_S_0295/MPR_GradWarpB1_CorrectionN3Scaled/2006-11-02_08_16_44.0/I40966/ADNI_002_S_0295_MR_MPRGradWarpB1_CorrectionN3_Scaled_Br_20070219173850420_S21856_I40966.nii"
  #full_path ='/Volumes/TOSHIBA EXT/ADNI - IDA/ADNI1_Complete 1Yr 1.5T/ADNI/941_S_1311/MPR-R_GradWarpB1_CorrectionN3Scaled/2007-09-27_15_35_45.0/I97341/ADNI_941_S_1311_MR_MPR-RGradWarpB1_CorrectionN3_Scaled_Br_20080313131733540_S40710_I97341.nii'
  index_last_sep_arr = stri_locate_last_fixed(full_path,"/")
  index_last_sep = index_last_sep_arr[1]

  path_current_nii = substr(full_path, 0, index_last_sep)
  name_nii_org = substr(full_path, index_last_sep + 1, nchar(full_path))
  print(name_nii_org)
  name_nii = substr(name_nii_org, 1, nchar(name_nii_org) - 4)
  print(name_nii)
  
}
count
a