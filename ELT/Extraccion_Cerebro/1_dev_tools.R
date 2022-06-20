packages = installed.packages()
packages = packages[, "Package"]
if (!"devtools" %in% packages) {
   install.packages("devtools")
}