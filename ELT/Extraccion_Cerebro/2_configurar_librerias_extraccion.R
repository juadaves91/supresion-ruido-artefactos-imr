source("https://neuroconductor.org/neurocLite.R")
neuroc_install("ITKR")
library(ITKR)

source("https://neuroconductor.org/neurocLite.R")
neuroc_install("ANTsR")
library(ANTsRCore)
library(ANTsR)

source("https://neuroconductor.org/neurocLite.R")
neuro_install("neurobase")
library(neurobase)

source("https://neuroconductor.org/neurocLite.R")
neuro_install("fslr")
library(fslr)

install.packages("/Users/Juan.Escobar/Downloads/WhiteStripe", repos = NULL, type = "source")
library(WhiteStripe)

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