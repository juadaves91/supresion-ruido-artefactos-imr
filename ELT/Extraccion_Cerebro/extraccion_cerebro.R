# https://johnmuschelli.com/neuroc/installing_ANTsR/index.html#161_Mac_OSX
# https://johnmuschelli.com/imaging_in_r/installing_everything_locally/#13_fsl (Instalacion cerebro)
# https://johnmuschelli.com/neuroc/brain_extraction/index.html (guia para extraccion y segmentacion de tejidos)

# Paso 1. Instalar devtools
packages = installed.packages()
packages = packages[, "Package"]
if (!"devtools" %in% packages) {
   install.packages("devtools")
}

# Paso 2 Intalar librerías.
source("https://neuroconductor.org/neurocLite.R")
neuroc_install("ITKR")
library(ITKR)

# Paso 2.1.
source("https://neuroconductor.org/neurocLite.R")
neuroc_install("ANTsR")
library(ANTsRCore)
library(ANTsR)

# Paso 2.2
source("https://neuroconductor.org/neurocLite.R")
neuro_install("neurobase")
library(neurobase)

# Paso 2.3
source("https://neuroconductor.org/neurocLite.R")
neuro_install("fslr")
library(fslr)

# Paso 2.4
install.packages("/Users/Juan.Escobar/Downloads/WhiteStripe", repos = NULL, type = "source")
library(WhiteStripe)

# Paso 2.5
source("https://neuroconductor.org/neurocLite.R")
neuro_install("extrantsr", upgrade_dependencies = FALSE)

#3. Importar librerías
library(ITKR)
library(ANTsRCore)
library(ANTsR)
library(neurobase)
library(fslr)
library(WhiteStripe)
library(extrantsr)
library(fs)
require(stringi)

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

  
  outfile_noneck_exist = paste0(path_current_nii, name_nii , "_noneck.nii.gz")
 
  if (!file.exists(outfile_noneck_exist)) {
    count <- count + 1
    print(count)
    print(outfile_noneck_exist)

    # Paso 4. Leer MRI en formato Nifti
    t1_fname = full_path 
    t1 = readnii(t1_fname)
    #t1
    #ortho2(t1)
  
    # Paso 5. Extraccion de cerebro
    outfile_org = nii.stub(t1_fname, bn = TRUE)
    outfile = paste0(outfile_org, "_SS_Naive.nii")
    ss_naive = fslbet(infile = t1_fname, outfile = outfile)
  
    # Paso 6. Extraccion de tejido cerebral, correccion de homogenidad y eliminación de cuello.
    outfile = nii.stub(t1_fname, bn = TRUE)
    outfile = paste0(outfile, "_SS.nii.gz")
    if (!file.exists(outfile)) {
      ss = extrantsr::fslbet_robust(t1_fname,
                                    remover = "double_remove_neck",
                                    outfile = outfile)
    } else {
      ss = readnii(outfile)
    }
  
    # Paso 7. Despojada de calaveras
    alpha = function(col, alpha = 1) {
      cols = t(col2rgb(col, alpha = FALSE)/255)
      rgb(cols, alpha = alpha)
    }
    #ortho2(t1_fname, ss > 0, col.y = alpha("red", 0.5))
  
    # Paso 8. eliminar cortes extraños, ayuda a reducir el almacenamiento de la imagen en el disco, acercar el zoom
    ss_red = dropEmptyImageDimensions(ss)
    noneck = ss_red
  
    #ortho2(ss_red)
    outfile_noneck = paste0(path_current_nii, name_nii , "_noneck.nii.gz")
    outfile_noneck
    writenii(noneck, filename = outfile_noneck)
  }
}
count
a