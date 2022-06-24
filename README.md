![alt text >](https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/Recursos/Imagenes/brainAD.png)
![alt text <](https://raw.githubusercontent.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/main/Recursos/Imagenes/Unir_2021_logo.svg)


<div>
  <h1> Deep Learning en el diagnóstico de Alzheimer mediante Imágenes de Resonancia Magnética</h1>
  <h5><a href="https://www.unir.net/ingenieria/master-visual-analytics-big-data/">Master en Big Data & Visual Analytics</a></h5>
 
  <h4>Juan David Escobar Escobar</h4>
  <h4>14 Julio de 2022</h4>
  <h4>Medellin, Colombia</h4>
  <h4>Redes sociales: <a href="https://www.linkedin.com/in/jdescobar/">LinkedIn</a>,  <a href="https://www.linkedin.com/in/jdescobar/">Instagram</a>, <a href="https://twitter.com/davis1148">Twitter</a>
  </h4>
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
height="600"
alt="Proceso de extracción del cerebro en IMR"
/>
</div>
<hr/>


<h3>Ìndice</h3>

<h4>Notebooks de configuración(Entorno virtual, GPUs y Tensorflow-Direct-ML)</h4>  
<div>
<ol type="1">
	<li>Configuración GPUs y entorno virtual Python, ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/0_Configuracio%CC%81n_GPU_%20y_entorno_virtual_(Anaconda).ipynb">Configuración GPUs y entorno virtual Python<a/>)</li>
</ol>    
</div>
		
<h4>Notebooks Flujo de datos (ETL)</h4>  
<div>
<ol type="1">
	<li>Extracción de datos, ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/1_Extracci%C3%B3n_im%C3%A1genes_nifti_a_jpg.ipynb">Extraccion_Imagenes_Nifti_A_Jpg<a/>)</li>
	<li>Extracción de cerebro - (IMR, Formato NIFTI (LENGUAJE R)), ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/tree/main/ELT/Extraccion_Cerebro">Proceso de extracción del cerebro en IMR (NIFTI)<a/>) </li>
	<li>Transformación (pre-procesamiento Imágenes de resonancia magnética), ver en ( <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/Helpers/Preprocesamiento_helper.ipynb">prepocesamiento_helper<a/>)</li>
<li>Homogenizar y preparar conjuntos de datos procesados, ver en ( <a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/2_Preparacio%CC%81n_conjuntos_de_datos.ipynb">Preparacion_Conjuntos_De_Datos<a/>)</li>
</ol>    
</div>

<h4>Notebooks Modelos pre-entredados (Tensorflow - Keras Redes Neuronales CNN)</h4>  
<div>
<ol type="1">
<li>Red Neuronal CNN (VGG16), ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/3_Red_neuronal_cnn_deteccion_alzheimer_VGG16.ipynb">Red_neuronal_cnn_deteccion_alzheimer_VGG16<a/>)</li>
<li>Red Neuronal CNN (MobileNet), ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/4_Red_neuronal_cnn_deteccio%CC%81n_alzheimer_MobileNet.ipynb">Red_neuronal_cnn_deteccion_alzheimer_MobileNet<a/>)</li>
<li>Red Neuronal CNN (Xception), ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/5_Red_neuronal_cnn_deteccio%CC%81n_alzheimer_Xception.ipynb">Red_neuronal_cnn_deteccion_alzheimer_Xception<a/>)</li>
<li>Red Neuronal CNN (ResNet152), ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/6_Red_neuronal_cnn_deteccion_alzheimer_RestNet.ipynb">Red_neuronal_cnn_deteccion_alzheimer_RestNet<a/>)</li>
</ol>    
</div> 

  
<h4>Notebooks Auxiliares (Helpers)</h4>  
<div>
<ol type="1"> 
<li>Preprocesamiento de imagenes (IMR), ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/Helpers/Preprocesamiento_helper.ipynb">Preprocesamiento_helper<a/>)</li>
<li>Segmentación cerebro, ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/Helpers/Segmentaci%C3%B3n_cerebro.ipynb">Segmentación_cerebro<a/>)</li>
<li>Selección modelo Keras, ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/Helpers/Selecci%C3%B3n_modelo_keras_helper.ipynb">Selección_modelo_keras_helper<a/>)  </li>
<li>Sqlite helper, ver en (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/ELT/Helpers/sqllite_helper.ipynb">Sqlite_helper<a/>)  </li>
</ol>  
</div>
  
<div>
<h3>Requisitos</h3>
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
  <h3>Requisitos y configuración</h3>
  
<p style="text-align: justify;">
<ol>
<li>Creación de entorno virtual en la aplicación Anaconda e instalación de las librerías requeridas (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/requirements.txt">requirements.txt</a>).</li>
<li>Configurar e instalar Kernel para hacer uso de la capacidad de cómputo a disposición (GPU x 3 - Asus Radeon RX 470), la cual se encuentra detallada en el Anexo I de la (<a href="https://github.com/juadaves91/unir-tfm-alzheimer-diagnostic-deep-learning/blob/main/Memoria%20TFM/ESCOBAR_ESCOBAR_JUAN_DAVID.pdf">Memoria TFM</a>). Configuración GPU y entorno virtual (Anaconda). Cabe mencionar que Tensorflow es compatible principalmente con tarjetas gráficas de marca NVIDIA, por lo cual se tuvo que instalar un paquete desarrollado por Microsoft para utilizar GPU de diferente fabricante, dicha librería se llama tensorflow-directml (https://docs.microsoft.com/en-us/windows/ai/directml/gpu-tensorflow-windows).</li>
</ol>
</p style="text-align: justify;">
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
<h3>Fuente de datos</h3>
<p>Datos tomados de <a href="https://adni.loni.usc.edu/about/">https://adni.loni.usc.edu/about/</a></br>
El acceso a los datos por ADNI de carácter y propósito investigativo y aporte científico para la comunidad de Neuro radiología. La información proporcionada es confidencial, motivo por el cual no se sube ninguna imagen proporcionada por el instituto. Agradecimiento especial a ADNI por poner a disposición de la comunidad científica el acceso al repositorio de imágenes médicas y aportar al avance médico y tecnológico.</p>

</div>
<p style="text-align: justify;">
*Los datos utilizados en la preparación de este artículo se obtuvieron de la base de datos de la Iniciativa de neuroimagen de la enfermedad de Alzheimer (ADNI) (adni.loni. usc.edu). Como tal, los investigadores dentro de ADNI contribuyeron al diseño e implementación de ADNI y/o proporcionaron datos pero no participaron en el análisis o redacción de este informe. Puede encontrar una lista completa de los investigadores de ADNI en: <a href="http://adni.loni.usc.edu/wp-content/uploads/how_to_apply/ADNI_Acknowledgement_List.pdf">http://adni.loni.usc.edu/wp-content/uploads/how_to_apply/ADNI_Acknowledgement_List.pdf</a>
</p>

<h3>Sección de Métodos:</h3>
<p style="text-align: justify;">
Los datos utilizados en la preparación de este artículo se obtuvieron de la base de datos de la Iniciativa de neuroimagen de la enfermedad de Alzheimer (<b>ADNI</b>) (adni.loni.usc.edu). El ADNI se lanzó en 2003 como una asociación público-privada, dirigida por el investigador principal Michael W. Weiner, MD. El objetivo principal de ADNI ha sido probar si la resonancia magnética nuclear (RMN) en serie, la tomografía por emisión de positrones (PET), otros marcadores biológicos y la evaluación clínica y neuropsicológica se pueden combinar para medir la progresión del deterioro cognitivo leve (DCL) y el deterioro cognitivo temprano. Enfermedad de Alzheimer (EA).
<p>

<h3>Sección de agradecimientos:</h3>
<p style="text-align: justify;">
La recopilación y el intercambio de datos para este proyecto fueron financiados por la Iniciativa de neuroimagen de la enfermedad de Alzheimer (ADNI) (Institutos Nacionales de Salud Subvención U01 AG024904) y el premio del Departamento de Defensa DOD ADNI número W81XWH-12-2-0012). ADNI está financiado por el Instituto Nacional sobre el Envejecimiento, el Instituto Nacional de Imágenes Biomédicas y Bioingeniería, y gracias a las generosas contribuciones de los siguientes: AbbVie, Asociación de Alzheimer; Fundación de Descubrimiento de Drogas de Alzheimer; Araclon Biotecnología; BioClínica, Inc.; Biogen; Compañía Bristol-Myers Squibb; CereSpir, Inc.; Cogestado; Eisai Inc.; Elan productos farmacéuticos, Inc.; Eli Lilly y Compañía; EuroImmun; F. Hoffmann-La Roche Ltd y su empresa afiliada Genentech, Inc.; fujirebio; atención médica de GE; IXICO Ltda.; Janssen Alzheimer Immunotherapy Research & Development, LLC.; Johnson & Johnson Investigación y Desarrollo Farmacéutico LLC.; luminosidad; lundbeck; Merck & Co., Inc.; Diagnósticos de escala meso, LLC.; Investigación NeuroRx; Tecnologías Neurotrack; Corporación Farmacéutica Novartis; Pfizer Inc.; imágenes piramales; Servier; Compañía Farmacéutica Takeda; y Terapéutica de Transición. Los Institutos Canadienses de Investigación en Salud están proporcionando fondos para apoyar los sitios clínicos de ADNI en Canadá. Las contribuciones del sector privado son facilitadas por la Fundación para los Institutos Nacionales de Salud (www.fnih.org). La organización beneficiaria es el Instituto de Investigación y Educación del Norte de California, y el estudio está coordinado por el Instituto de Investigación Terapéutica del Alzheimer de la Universidad del Sur de California. Los datos de ADNI son difundidos por el Laboratorio de Neuroimagen de la Universidad del Sur de California.
</p>
<p>
Agradecimiento especial a Dios por darme las fuerzas y sabiduría necesarias para llevar a cabo con mucho esfuerzo y sacrificio este gran reto profesional, agradecimiento a mis padres y familia quienes siempre me han brindado todo su apoyo para llevar a cabo todas mis metas personales y profesionales, sobre todo a mi padre en sus facultades de director de tesis, director de Antropología y Arqueología de la empresa SAG SAS. Agradecimiento a mi esposa Erica María López Hernández quien me ha brindado todo su excepcional apoyo cada día en el que desarrolle esta maestría, agradezco enormemente a uno de mis grandes mentores David Esteban Echeverri Duque quien me brindo grandes enseñanzas relacionadas a la industria de la tecnología, la rama de inteligencia de negocios, el liderazgo, los datos y me animo a cambiar de énfasis profesional de Ingeniería de software a Ingeniería y analítica de datos. Agradecimientos al doctor Neuro radiólogo Diego Alberto Herrera Jaramillo del centro de diagnóstico Ceimed, quien muy amablemente me ofreció su apoyo y asesoramiento en temas diversos del proyecto realizado y me expuso diferentes necesidades en el campo de la Neuro radiología para llevar a cabo el trabajo final de maestría. Gratitud a la Universidad Internacional de la Rioja por ofrecer una maestría de gran calidad con excelente contenido, grandes profesionales, tutores, doctores y directores. Agradecimiento a mi director de TFM Ricardo Serafín Alonso Rincón quien me brindo todo su apoyo, asesoramiento y retroalimentación para entregar un trabajo final de maestría que aporta gran valor y calidad.
</p>
</div>
  
