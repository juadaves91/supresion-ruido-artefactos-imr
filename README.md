![alt text >](https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/Recursos/Imagenes/brainAD.png)
![alt text <](https://raw.githubusercontent.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/main/Recursos/Imagenes/Unir_2021_logo.svg)


<div>
  <h1> Deep Learning en el diagnostico de Alzheimer mediante Imágenes de Resonancia Magnética</h1>
  <h5><a href="https://www.unir.net/ingenieria/master-visual-analytics-big-data/">Master - Visual Analytics & Big Data</a></h5>
 
  <h4>Juan David Escobar</h4>
  <h4>14 Julio de 2022</h4>
  <h4>Medellin, Colombia</h4>
</div>

***
<div>
<img
src="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/0c93712c2413ae75a960dcc8cf511ef0110d7300/Recursos/Imagenes/RedNeuronalCNNDL.png"
width="1200"
height="400"
alt="Red Neuronal CNN Deep Learning"
/>  
</div>  

<hr/>

<div style="text-align:center">
<img
src="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/8d9ca54882eeec81c90d0016718740d0e243c923/Recursos/Imagenes/Flujo%20de%20datos.png"
width="1200"
height="520"
alt="Proceso de extracción del cerebro en IMR"
/>
</div>
<hr/>

<div>
  <h3>Flujo de datos</h3>
  
1. Extracción de datos, ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/1.%20Extraccion_Imagenes_Nifti_A_Jpg.ipynb)">Extraccion_Imagenes_Nifti_A_Jpg<a/>)
2. Extracción de cerebro (IMR, Formato NIFTI), ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/tree/main/ELT/Extraccion_Cerebro">Proceso de extracción del cerebro en IMR (NIFTI)<a/>)
3. Transformación (pre-procesamiento Imágenes de resonancia magnética), ver en ( <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/Helpers/prepocesamiento_helper.ipynb">prepocesamiento_helper<a/>)
4. Homogenizar y preparar conjuntos de datos procesados, ver en ( <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/a95788f1f979d54e2794a582a9bc5f551e0dadd2/ELT/2.%20Preparacion_Conjuntos_De_Datos.ipynb">Preparacion_Conjuntos_De_Datos<a/>)
5. Construcción modelos pre-entredados (Tensorflow - Keras), ver en ( <a href="[http://localhost:8890/notebooks/TFM/Notebooks/ELT/Helpers/seleccion_modelo_keras_helper.ipynb](https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/Helpers/prepocesamiento_helper.ipynb)">seleccion_modelo_keras_helper<a/>, <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/3.%20red_neuronal_cnn_deteccion_alzheimer_VGG16.ipynb">red_neuronal_cnn_deteccion_alzheimer_VGG16<a/>,  <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/4.%20red_neuronal_cnn_deteccion_alzheimer_MobileNet.ipynb">red_neuronal_cnn_deteccion_alzheimer_MobileNet<a/>,  <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/5.%20red_neuronal_cnn_deteccion_alzheimer_Xception.ipynb">red_neuronal_cnn_deteccion_alzheimer_Xception<a/>,  <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/6.%20red_neuronal_cnn_deteccion_alzheimer_RestNet.ipynb">red_neuronal_cnn_deteccion_alzheimer_RestNet<a/>)  

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
El acceso a los datos por ADNI de carácter y propósito investigativo y aporte científico para la comunidad de Neuro radiología. La información proporcionada es confidencial, motivo por el cual no se sube ninguna imagen proporcionada por el instituto. Agradecimiento especial a ADNI por poner a disposición de la comunidad científica el acceso al repositorio de imágenes médicas y aportar al avance médico y tecnológico.</p>

</div>
<p>
*Los datos utilizados en la preparación de este artículo se obtuvieron de la base de datos de la Iniciativa de neuroimagen de la enfermedad de Alzheimer (ADNI) (adni.loni. usc.edu). Como tal, los investigadores dentro de ADNI contribuyeron al diseño e implementación de ADNI y/o proporcionaron datos pero no participaron en el análisis o redacción de este informe. Puede encontrar una lista completa de los investigadores de ADNI en: <a href="http://adni.loni.usc.edu/wp-content/uploads/how_to_apply/ADNI_Acknowledgement_List.pdf">http://adni.loni.usc.edu/wp-content/uploads/how_to_apply/ADNI_Acknowledgement_List.pdf</a>
</p>

<h4>Sección de Métodos:</h4>
<p>
Los datos utilizados en la preparación de este artículo se obtuvieron de la base de datos de la Iniciativa de neuroimagen de la enfermedad de Alzheimer (ADNI) (adni.loni.usc.edu). El ADNI se lanzó en 2003 como una asociación público-privada, dirigida por el investigador principal Michael W. Weiner, MD. El objetivo principal de ADNI ha sido probar si la resonancia magnética nuclear (RMN) en serie, la tomografía por emisión de positrones (PET), otros marcadores biológicos y la evaluación clínica y neuropsicológica se pueden combinar para medir la progresión del deterioro cognitivo leve (DCL) y el deterioro cognitivo temprano. Enfermedad de Alzheimer (EA).
<p>

<h4>Sección de agradecimientos:</h4>
<p>
La recopilación y el intercambio de datos para este proyecto fueron financiados por la Iniciativa de neuroimagen de la enfermedad de Alzheimer (ADNI) (Institutos Nacionales de Salud Subvención U01 AG024904) y el premio del Departamento de Defensa DOD ADNI número W81XWH-12-2-0012). ADNI está financiado por el Instituto Nacional sobre el Envejecimiento, el Instituto Nacional de Imágenes Biomédicas y Bioingeniería, y gracias a las generosas contribuciones de los siguientes: AbbVie, Asociación de Alzheimer; Fundación de Descubrimiento de Drogas de Alzheimer; Araclon Biotecnología; BioClínica, Inc.; Biogen; Compañía Bristol-Myers Squibb; CereSpir, Inc.; Cogestado; Eisai Inc.; Elan productos farmacéuticos, Inc.; Eli Lilly y Compañía; EuroImmun; F. Hoffmann-La Roche Ltd y su empresa afiliada Genentech, Inc.; fujirebio; atención médica de GE; IXICO Ltda.; Janssen Alzheimer Immunotherapy Research & Development, LLC.; Johnson & Johnson Investigación y Desarrollo Farmacéutico LLC.; luminosidad; lundbeck; Merck & Co., Inc.; Diagnósticos de escala meso, LLC.; Investigación NeuroRx; Tecnologías Neurotrack; Corporación Farmacéutica Novartis; Pfizer Inc.; imágenes piramales; Servier; Compañía Farmacéutica Takeda; y Terapéutica de Transición. Los Institutos Canadienses de Investigación en Salud están proporcionando fondos para apoyar los sitios clínicos de ADNI en Canadá. Las contribuciones del sector privado son facilitadas por la Fundación para los Institutos Nacionales de Salud (www.fnih.org). La organización beneficiaria es el Instituto de Investigación y Educación del Norte de California, y el estudio está coordinado por el Instituto de Investigación Terapéutica del Alzheimer de la Universidad del Sur de California. Los datos de ADNI son difundidos por el Laboratorio de Neuroimagen de la Universidad del Sur de California.
<p>
</div>
  
