library(fs)
file_list <- fs::dir_ls(path = "/Volumes/My Book/ADNI - IDA/ADNI1_Complete 1Yr 1.5T/ADNI/", recurse = TRUE, type = "file", glob = "*.nii")

count <- 0
for (file in file_list){
  print(file)
  
  
  
  # control de salida
  count <- count + 1
  if (count > 1){
    break
    print("entre count")
  }
}
count


require(stringi)
full_path = "/Volumes/My Book/ADNI - IDA/ADNI1_Complete 1Yr 1.5T/ADNI/002_S_0295/MPR__GradWarp__B1_Correction__N3__Scaled/2006-11-02_08_16_44.0/I40966/ADNI_002_S_0295_MR_MPR__GradWarp__B1_Correction__N3__Scaled_Br_20070219173850420_S21856_I40966.nii"
index_last_sep_arr = stri_locate_last_fixed(full_path,"/")
index_last_sep = index_last_sep_arr[1]
full_path
index_last_sep

path_current_nii = substr(full_path, 0, index_last_sep)
path_current_nii

name_nii_org = substr(full_path + 1, index_last_sep, nchar(full_path))
name_nii_org
#name_nii = substr(name_nii_org, 1, nchar(name_nii_org))
#name_nii

