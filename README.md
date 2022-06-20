![alt text >](https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/Recursos/Imagenes/brainAD.png)
![alt text <](https://raw.githubusercontent.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/main/Recursos/Imagenes/Unir_2021_logo.svg)


<div>
  <h1> Deep Learning en el diagnostico de Alzheimer mediante Imágenes de Resonancia Magnética</h1>
  <hr/>
  <h4>Juan David Escobar</h4>
  <h4>14 Julio de 2022</h4>
  <h4>Medellin, Colombia</h4>
</div>

***
<div>
<img
src="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/0c93712c2413ae75a960dcc8cf511ef0110d7300/Recursos/Imagenes/RedNeuronalCNNDL.png"
width="1100"
height="400"
alt="Red Neuronal CNN Deep Learning"
/>  
</div>  



<div>
<h4>Requisitos</h4>
<ul>
<li>Sistema operativo Linux o Windows  con WSL 1.8.04</li>
<li>Anaconda (https://www.anaconda.com/)</li>  
<li>1-3 Tarjetas graficas (Opcional)</li> 
<li>Almacenamiento local del almenos 1 TB</li> 
<li>Python versión 3.6.3</li>
<li>Visual Studio Code</li>
<li>SQL Lite</li>  
<li>R-Studio (https://www.rstudio.com/products/rstudio/download/)</li>
<li>R – Project versión 4.0.0 (https://cran.r-project.org/bin/macosx/old/)</li>
<li>Aplicación FSL (https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation)</li>
</ul>
</div>

<div>
  <h4>Requisitos y configuración</h4>
  
<p>
<ol>
<li>Creación de entorno virtual en la aplicación Anaconda e instalación de las librerías requeridas.</li>
<li>Configurar e instalar Kernel para hacer uso de la capacidad de cómputo a disposición (GPU x 3 - Asus Radeon RX 470), la cual se encuentra detallada en el Anexo I. Configuración GPU y entorno virtual (Anaconda). Cabe mencionar que Tensorflow es compatible principalmente con tarjetas gráficas de marca NVIDIA, por lo cual se tuvo que instalar un paquete desarrollado por Microsoft para utilizar GPU de diferente fabricante, dicha librería se llama tensorflow-directml (https://docs.microsoft.com/en-us/windows/ai/directml/gpu-tensorflow-windows).</li>
</ol>
</p>
<h5>Configuración Kernel para GPU con <a href="https://docs.microsoft.com/en-us/windows/ai/directml/gpu-tensorflow-windows">tensorflow-directml</a></h5>
  <p>Para configurar el kernel de ejecución en Jupyter Notebooks, debe llevar a cabo las instrucciones que se encuentran descritas en el Notebook:
  <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/fb0537c6e1b1e7a07d32595795c2c4b380d238b5/ELT/0.%20Configuracion%20GPU%20y%20entorno%20virtual%20(Anaconda).ipynb"> 0. Configuracion GPU y entorno virtual (Anaconda).ipynb </a>.
</p>
</div>

<div>
  <ol>
  <li>Activar Kernel para hacer uso de GPU’s.</li>
  <li>Importar librerías requeridas.</li>
  <li>Definir conjuntos de datos con el formato requerido para cada modelo de Keras (entrenamiento, pruebas y validación).</li>
  <li>Construcción y entrenamiento del modelo.</li>
  <li>Predicción.</li>
  <li>Validación de precisión (matriz de confusión, métricas y gráficos de rendimiento).</li>
  <li>Afinar modelo pre entrenado y repetir pasos 4, 5 y 6.</li>
</ol>
</div>

<div>
<h4>Fuente de datos</h4>
<p>Datos tomados de <a href="https://adni.loni.usc.edu/about/">https://adni.loni.usc.edu/about/</a></br>
Estos datos fueron tomados con propósito investigativo y aporte científico para la comunidad de Neuro radiología.</p>
</div>
