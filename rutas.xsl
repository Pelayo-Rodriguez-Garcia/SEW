<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
	<xsl:template match ="/">
		<!DOCTYPE html>
		<html lang ="es">
			<head>
				<meta name="description" content="Rutas internacionales"/>
				<title>Rutas</title>
				<link rel="stylesheet" type = "text/css" href = "estilo.css"/>
			</head>
			<body>
				<header>
					<h1>Rutas variadas</h1>
				</header>
				<main>
					<section>
					<h2>Las mejores rutas que puedas encontrar </h2>
					<xsl:for-each select="rutas/ruta">
					<article>

						<h2>
							<xsl:value-of select="nombre"/>
						</h2>
						<h3>
                                Tipo:
						</h3>

						<xsl:value-of select="tipo" />

						<h3>
                                Transporte: 
						</h3>

						<xsl:value-of select ="transporte" />

						<h3>
                                Duracion: 
						</h3>

						<xsl:value-of select ="duracion" />

						<h3>
                                Descripción: 
						</h3>

						<xsl:value-of select = "descripcion" />

						<h3>Lugar de inicio</h3>

						<xsl:value-of select = "lugar-inicio" />

						<h3>Dirección</h3>

						<xsl:value-of select="direccion" />

						<h3>Coordenadas</h3>
						<ul>
							<li>Longitud: <xsl:value-of select ="coordenadas/longitud"/>
							</li>
							<li>Latitud: <xsl:value-of select="coordenadas/latitud" />
							</li>
							<li>Altitud: <xsl:value-of select="coordenadas/altitud" />
							</li>
						</ul>

						<h3>Referencias</h3>
						<ul>
							<xsl:for-each select = "referencias/referencia">
								<xsl:variable name= "referencia" select= "."/>
								<li>
									<a href ="{$referencia}">
										<xsl:value-of select = "$referencia"/>
									</a>

								</li>
							</xsl:for-each>
						</ul>
						<h3>Recomendación</h3>

						<xsl:value-of select ="recomendacion"/>

						<h3>Hitos</h3>

						<ul>
							<xsl:for-each select = "hitos/hito">

								<li>
									<h3><xsl:value-of select="@nombre"/></h3>
									
								</li>

								<li>
									<h4>Descripción del hito</h4>
									<xsl:value-of select="descripcion-hito" />

								</li>
								<li>

									<h4>Coordenadas del hito </h4>
									<ul>

										<li>
											<p>Longitud: <xsl:value-of select = "coordenadas-hito/longitud-hito"/>
											</p>
										</li>
										<li>
											<p>Latitud: <xsl:value-of select = "coordenadas-hito/latitud-hito"/>
											</p>
										</li>
										<li>
											<p>Altitud: <xsl:value-of select="coordenadas-hito/altitud-hito"/>
											</p>
										</li>
									</ul>
								</li>
								<li>
									<h4>Distancia hito anterior</h4>
									<p>
										<xsl:value-of select="distancia-hito-anterior"/>
										<xsl:value-of select="distancia-hito-anterior/@unidad"/>
									</p>
								</li>

								<li>
									<h4>Fotografías</h4>
									<xsl:for-each select="fotografias/fotografia">
									<xsl:variable name= "fotografia" select= "."/>
										<p>
                                            Fotografía <xsl:value-of select="@numero"/>:
											<a href ="{$fotografia}"> 
											<xsl:value-of select = "$fotografia"/>
											</a>
										</p>
									</xsl:for-each>
								</li>
							</xsl:for-each>
						</ul>	
						</article>					
					</xsl:for-each>
					</section>
					
					
					<footer>
						<div>Pelayo Rodríguez García</div>
						<div class="validations">
							<a href="https://validator.w3.org/check?uri=referer">
								<img src="https://www.w3.org/html/logo/badge/html5-badge-h-solo.png" alt="HTML5 Válido!" height="64" width="63" />
							</a>
							<a href=" http://jigsaw.w3.org/css-validator/check/referer ">
								<img src=" http://jigsaw.w3.org/css-validator/images/vcss" alt="¡CSS Válido!" height="31" width="88" />
							</a>
							<a href="http://www.w3.org/WAI/WCAG2AAA-Conformance">
								<img src="http://www.w3.org/WAI/wcag2AAA" alt="Level Triple-A conformance, W3C WAI Web Content Accessibility Guidelines 2.0"/>
							</a>
						</div>
					</footer>
				</main>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>