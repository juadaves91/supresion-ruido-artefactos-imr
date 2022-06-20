![alt text <](https://raw.githubusercontent.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/main/Recursos/Imagenes/Unir_2021_logo.svg)

<div>
    <h1>Deep Learning en el diagnostico de Alzheimer mediante Imágenes de Resonancia Magnética</h1>

    <h2>Extracción de cerebro en imagenes .NIFTI</h2>

    <h4>Requisitos</h4>
    <ul>
        <li>Sistema operativo macOS, Linux o Windows con WSL 1.8.04</li>
        <li>R-Studio (https://www.rstudio.com/products/rstudio/download/)</li>
        <li>R – Project versión 4.0.0 (https://cran.r-project.org/bin/macosx/old/)</li>
        <li>Aplicación FSL (https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation)</li>
    </ul>

    <h4>Requisitos</h4>
    <ul>
        <li>ITKR (https://github.com/stnava/ITKR)</li>
        <li>ANTsRCore (https://github.com/ANTsX/ANTsRCore)</li>
        <li>ANTsR (https://github.com/ANTsX/ANTsR)</li>
        <li>Neurobase (https://www.rdocumentation.org/packages/neurobase/versions/1.32.0)</li>
        <li>Fslr</li>
        <li>WhiteStripe</li>
        <li>extrantsr</li>
        <li>fs</li>
    </ul>

    <p>
        El método desarrollado en el lenguaje R, mediante guía (https://johnmuschelli.com/neuroc/brain_extraction/index.html), en la cual se realiza la segmentación y extracción del cerebro mediante fsl
        (https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation) y una versión robusta contenida en las librerías extrantsr y fslbet_robust. Los pasos realizados fueron:
    </p>

    <ul>
        <li>Lectura de 2294 MRI imágenes en formato NIFTI, El procesamiento tardo 90 horas aproximadamente</li>
        <li>Extracción de tejido cerebro, excluyendo partes presentes como el cuello, cuero cabelludo y otros</li>
        <li>Corrección de homogeneidad y cálculo de centro de gravedad en cada plano (Axial, Coronal y Sagital)</li>
        <li>Eliminación de cortes extraños y almacenamiento</li>
    </ul>
</div>

<div>
    <img
        src="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/9c3594927eda053dd967026fbf8693584e7f9408/Recursos/Imagenes/Extraccion_cerebro.PNG"
        width="1100"
        height="800"
        alt="Proceso de extracción del cerebro en IMR"
    />
</div>

<div>
    <p>
        Jenkinson M, Beckmann CF, Behrens TE, Woolrich MW, Smith SM (2012). “FSL.” Neuroimage, 62(2), 782-790.
    </p>
    <p>
        Muschelli J, Sweeney E, Lindquist M, Crainiceanu C (2015). “fslr: Connecting the FSL Software with R.” _The R Journal_, 7(1), 163-175.)
    </p>
</div>
