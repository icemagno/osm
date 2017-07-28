<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
	<sld:Name>Default Styler</sld:Name>
	<sld:Title>Estilos de Poligonos do SIGLMD</sld:Title>
	<sld:FeatureTypeStyle>
		<sld:Name>SiglmdEstilosPoligono</sld:Name>
		<Title>SigLMD - Estilos de Poligono</Title>
		<Abstract>Estilos de Poligono usados no SigLMD.</Abstract>
		<sld:Rule>
			<Name>Regra_P00</Name>
			<Title>Sem Preenchimento</Title>
			<Abstract>Poligono sem nenhum padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>0</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<!--<sld:Fill>
					<sld:CssParameter name="fill">
						<ogc:PropertyName>mappolycolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="fill-opacity">0.0</sld:CssParameter>
				</sld:Fill>-->
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P01</Name>
			<Title>solido</Title>
			<Abstract>Poligono com padrao de preenchimento solido.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>1</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:CssParameter name="fill">
						<ogc:PropertyName>mappolycolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="fill-opacity">
						<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>  
		<sld:Rule>
			<Name>Regra_P02</Name>
			<Title>Poligono com Linha Verticais</Title>
			<Abstract>Poligono com linha verticais como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>2</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://vertline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--9-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P03</Name>
			<Title>Poligono com Linhas Horizontais</Title>
			<Abstract>Poligono com linhas horizontais como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>3</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://horline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--9-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P04</Name>
			<Title>Quadriculados</Title>
			<Abstract>Poligono com Quadriculados como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>4</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://vertline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--9-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://horline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>9</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P05</Name>
			<Title>Losangos</Title>
			<Abstract>Poligono com Losangos como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>5</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://times</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--9-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P06</Name>
			<Title>Diagonais a Direita</Title>
			<Abstract>Poligono com Diagonais a Direita como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>6</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://slash</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--9-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P07</Name>
			<Title>Diagonais a Esquerda</Title>
			<Abstract>Poligono com Diagonais a Esquerda como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>7</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://backslash</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--9-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P08</Name>
			<Title>Preenchimento pontilhado</Title>
			<Abstract>Poligono com pontos pequenos como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>8</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://dot</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--9-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_P09</Name>
			<Title>Poligono preenchindo com o valor mappolysymbol</Title>
			<Abstract>Poligono preenchindo com o valor mappolysymbol como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>9</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:ExternalGraphic>
								<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${mappolysymbol}&amp;color=${strReplace(mappolysymbolcolor, '#','_', true)}"/>
								<sld:Format>image/svg+xml</sld:Format>
							</sld:ExternalGraphic>
							<sld:Size>
								<!--30-->
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
					<sld:CssParameter name="fill-opacity">
						<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>		
		<!--		<sld:Rule>
			<Name>Regra_P10</Name>
			<Title>Poligono preenchindo com o simbolo 492</Title>
			<Abstract>Poligono preenchindo com o simbolo 492 como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>10</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:ExternalGraphic>
								<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=492&amp;color=${strReplace(mappolycolor, '#','_', true)}"/>
								<sld:Format>image/svg+xml</sld:Format>
							</sld:ExternalGraphic>
							<sld:Size>
								<!{1}**35**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
					<sld:CssParameter name="fill-opacity">
						<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
		<!--		<sld:Rule>
			<Name>Regra_P11</Name>
			<Title>solido sem borda</Title>
			<Abstract>Poligono solido sem borda como padrao de preenchimento solido.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>11</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:CssParameter name="fill">
						<ogc:PropertyName>mappolycolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="fill-opacity">
						<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
		<!--		<sld:Rule>
			<Name>Regra_P12</Name>
			<Title>Poligono com Linha Vertical sem borda</Title>
			<Abstract>Poligono sem borda com linha Vertical como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>12</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://vertline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!{1}**9**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
		<!--		<sld:Rule>
			<Name>Regra_P13</Name>
			<Title>Poligono com Linha Horizontal sem borda</Title>
			<Abstract>Poligono sem borda com linha Horizontal como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>13</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://horline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!{1}**9**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
		<!--		<sld:Rule>
			<Name>Regra_P14</Name>
			<Title>Poligono com Quadriculados sem borda</Title>
			<Abstract>Poligono sem borda com Quadriculados como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>14</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://vertline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!{1}**9**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://horline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!{1}**9**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
		<!--		<sld:Rule>
			<Name>Regra_P15</Name>
			<Title>Poligono com Losangos sem borda</Title>
			<Abstract>Poligono sem borda com Losangos como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>15</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://times</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!{1}**9**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
		<!--		<sld:Rule>
			<Name>Regra_P16</Name>
			<Title>Poligono com Diagonal ? Direita sem borda</Title>
			<Abstract>Poligono sem borda com Diagonal ? Direita como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>16</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://slash</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!{1}**9**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
		<!--		<sld:Rule>
			<Name>Regra_P17</Name>
			<Title>Poligono com Diagonal ? Esquerda sem borda</Title>
			<Abstract>Poligono sem borda com Diagonal ? Esquerda como padrao de preenchimento.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>mappolystyle</ogc:PropertyName>
					<ogc:Literal>17</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
				<sld:Fill>
					<sld:GraphicFill>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://backslash</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>mappolycolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="fill-opacity">
										<ogc:PropertyName>mappolyopacity</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!{1}**9**{1}>
								<ogc:PropertyName>mappolysymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicFill>
				</sld:Fill>
			</sld:PolygonSymbolizer>
		</sld:Rule>-->
	</sld:FeatureTypeStyle>
	<sld:FeatureTypeStyle>
		<sld:Name>SiglmdEstilosLinha</sld:Name>
		<Title>SigLMD - Estilos de Linhas</Title>
		<Abstract>Estilos de Linhas usados no SigLMD.</Abstract>
		<sld:Rule>
			<Name>Regra_L-1</Name>
			<Title>Nao desenha a linha - Linha Transparente</Title>
			<Abstract>Nao desenha a linha. Usada para desenhar poligonos sem a linha da borda.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>-1</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<!--<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>-->
					<sld:CssParameter name="stroke-width">
						0
						<!--<ogc:PropertyName>maplinewidth</ogc:PropertyName>-->
					</sld:CssParameter>
					<sld:CssParameter name="stroke-opacity">0.0</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>  
		<sld:Rule>
			<Name>Regra_L00</Name>
			<Title>Linha Cheia</Title>
			<Abstract>Desenha uma linha cheia continua (_______), na cor e na espessura passada pelos parametros maplinecolor e maplinewidth.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>0</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L01</Name>
			<Title>Linha Tracejada</Title>
			<Abstract>Desenha uma linha tracejada (_ _ _ _ _), na cor e na espessura passada pelos parametros maplinecolor e maplinewidth.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>1</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">7.0 3.0</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L02</Name>
			<Title>Linha Pontilhada</Title>
			<Abstract>Desenha uma linha pontilhada (......), na cor e na espessura passada pelos parametros maplinecolor e maplinewidth.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>2</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">2.0 2.0</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L03</Name>
			<Title>Linha Traco ponto</Title>
			<Abstract>Desenha uma linha tracejada com pontos (_._._._._._), na cor e na espessura passada pelos parametros maplinecolor e maplinewidth.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>3</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">9.0 9.0</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">3.0 3.0</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L04</Name>
			<Title>Linha Traco-Ponto-Ponto</Title>
			<Abstract>Desenha uma linha tracejada com 2 pontos (_.._.._.._.._), na cor e na espessura passada pelos parametros maplinecolor e maplinewidth.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>4</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">10.0 10.0</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">2.0 2.0</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L05</Name>
			<Title>Linha c/borda (cinza), arredondada nas pontas</Title>
			<Abstract>Desenha uma linha c/borda (cinza), arredondada nas pontas, na cor e na espessura passada pelos parametros maplinecolor e maplinewidth.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>5</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">#333333</sld:CssParameter>
					<sld:CssParameter name="stroke-linecap">round</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-linecap">round</sld:CssParameter>
					<sld:CssParameter name="stroke-width">2</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L06</Name>
			<Title>Linha continua com um simbolo no inicio e no fim</Title>
			<Abstract>Desenha uma linha continua, com um simbolo externo no primeiro e no ultimo ponto, na cor, na espessura e no tamanho passados pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>6</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="startPoint">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${maplinesymbol}&amp;color=${strReplace(maplinesymbolcolor, '#','_', true)}"/>
						<!--<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=100001"/>-->
						<sld:Format>image/svg+xml</sld:Format>
					</sld:ExternalGraphic>
					<sld:Size>
						<!--35-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="endPoint">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${maplinesymbol}&amp;color=${strReplace(maplinecolor, '#','_', true)}"/>
						<!--<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=100000&amp;color=_CCC"/>-->
						<sld:Format>image/svg+xml</sld:Format>
					</sld:ExternalGraphic>
					<sld:Size>
						<!--35-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L07</Name>
			<Title>Linha continua com um simbolo no inicio</Title>
			<Abstract>Desenha uma linha continua, com um simbolo externo no primeiro ponto, na cor, na espessura e no tamanho passados pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>7</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="startPoint">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${maplinesymbol}&amp;color=${strReplace(maplinesymbolcolor, '#','_', true)}"/>
						<!--<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=100001"/>-->
						<sld:Format>image/svg+xml</sld:Format>
					</sld:ExternalGraphic>
					<sld:Size>
						<!--35-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L08</Name>
			<Title>Linha continua com um simbolo no fim</Title>
			<Abstract>Desenha uma linha continua, com um simbolo externo no ultimo ponto, na cor, na espessura e no tamanho passados pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>8</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="endPoint">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${maplinesymbol}&amp;color=${strReplace(maplinesymbolcolor, '#','_', true)}"/>
						<!--<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=100000&amp;color=_CCC"/>-->
						<sld:Format>image/svg+xml</sld:Format>
					</sld:ExternalGraphic>
					<sld:Size>
						<!--35-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L09</Name>
			<Title>Linha continua com Tracos verticais (Ferrovia)</Title>
			<Abstract>Desenha um linha continua com Tracos verticais (Ferrovia), na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>9</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:GraphicStroke>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://vertline</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>maplinesymbolcolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="stroke-width">
										<!--1-->
										<ogc:PropertyName>maplinewidth</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--12-->
								<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicStroke>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>  
		<sld:Rule>
			<Name>Regra_L10</Name>
			<Title>Linha tracejada com X</Title>
			<Abstract>Desenha a tracejada com X, na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>10</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">10 10</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:GraphicStroke>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>shape://times</sld:WellKnownName>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<ogc:PropertyName>maplinecolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="stroke-width">
										<ogc:PropertyName>maplinewidth</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--5-->
								<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicStroke>
					<sld:CssParameter name="stroke-dasharray">5 15</sld:CssParameter>
					<sld:CssParameter name="stroke-dashoffset">7.5</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>  
		<sld:Rule>
			<Name>Regra_L11</Name>
			<Title>Linha de circulos</Title>
			<Abstract>Desenha uma linha formada por circulos preenchidos ou Nao, na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbolcolor e maplinesymbolsize (4).</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>11</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:GraphicStroke>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>circle</sld:WellKnownName>
								<sld:Fill>
									<sld:CssParameter name="fill">
										<ogc:PropertyName>maplinesymbolcolor</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Fill>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<!--#333333-->
										<ogc:PropertyName>maplinecolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="stroke-width">1</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--4-->
								<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicStroke>
					<sld:CssParameter name="stroke-dasharray">4 6</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L12</Name>
			<Title>Linha tracejada com circulos</Title>
			<Abstract>Desenha uma linha tracejada, com circulos preenchidos ou Nao, na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbolcolor e maplinesymbolsize (5).</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>12</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">10 10</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:GraphicStroke>
						<sld:Graphic>
							<sld:Mark>
								<sld:WellKnownName>circle</sld:WellKnownName>
								<sld:Fill>
									<sld:CssParameter name="fill">
										<ogc:PropertyName>maplinesymbolcolor</ogc:PropertyName>
									</sld:CssParameter>
								</sld:Fill>
								<sld:Stroke>
									<sld:CssParameter name="stroke">
										<!--#333333-->
										<ogc:PropertyName>maplinecolor</ogc:PropertyName>
									</sld:CssParameter>
									<sld:CssParameter name="stroke-width">1</sld:CssParameter>
								</sld:Stroke>
							</sld:Mark>
							<sld:Size>
								<!--4-->
								<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicStroke>
					<sld:CssParameter name="stroke-dasharray">5 15</sld:CssParameter>
					<sld:CssParameter name="stroke-dashoffset">7.5</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L13</Name>
			<Title>Linha com simbolos externos</Title>
			<Abstract>Desenha uma linha, com simbolos da tabela de simbolos, na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize (15).</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>13</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:GraphicStroke>
						<sld:Graphic>
							<sld:ExternalGraphic>
								<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=100001"/>
								<sld:Format>image/svg+xml</sld:Format>
							</sld:ExternalGraphic>
							<sld:Size>
								<!--15-->
								<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicStroke>
					<sld:CssParameter name="stroke-dasharray">4 6</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L14</Name>
			<Title>Linha tracejada com simbolos externos</Title>
			<Abstract>Desenha uma linha tracejada, com simbolos, na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize (15).</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>14</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-dasharray">10 10</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:LineSymbolizer>
				<sld:Stroke>
					<sld:GraphicStroke>
						<sld:Graphic>
							<sld:ExternalGraphic>
								<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${maplinesymbol}&amp;color=${strReplace(maplinesymbolcolor, '#','_', true)}"/>
								<sld:Format>image/svg+xml</sld:Format>
							</sld:ExternalGraphic>
							<sld:Size>
								<!--15-->
								<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
							</sld:Size>
						</sld:Graphic>
					</sld:GraphicStroke>
					<sld:CssParameter name="stroke-dasharray">5 15</sld:CssParameter>
					<sld:CssParameter name="stroke-dashoffset">7.5</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L15</Name>
			<Title>Seta aberta</Title>
			<Abstract>Desenha uma Linha continua com triangulo aberto no ultimo ponto, na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>15</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="endPoint">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:Mark>
						<sld:WellKnownName>shape://oarrow</sld:WellKnownName>
						<sld:Stroke>
							<sld:CssParameter name="stroke">
								<ogc:PropertyName>maplinesymbolcolor</ogc:PropertyName>
							</sld:CssParameter>
							<sld:CssParameter name="stroke-width">
								<!--1-->
								<ogc:PropertyName>maplinewidth</ogc:PropertyName>
							</sld:CssParameter>
						</sld:Stroke>
					</sld:Mark>
					<sld:Size>
						<!--12-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
					<Rotation>
						<ogc:Function name="endAngle">
							<ogc:PropertyName>geom</ogc:PropertyName>
						</ogc:Function>
					</Rotation>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L16</Name>
			<Title>Seta ponta fechada</Title>
			<Abstract>Desenha uma Linha continua com triangulo fechado no ultimo ponto, na cor e na espessura passada pelos parametros maplinecolor, maplinewidth, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>16</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="endPoint">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:Mark>
						<sld:WellKnownName>shape://carrow</sld:WellKnownName>
						<sld:Stroke>
							<sld:CssParameter name="stroke">
								<ogc:PropertyName>maplinesymbolcolor</ogc:PropertyName>
							</sld:CssParameter>
							<sld:CssParameter name="stroke-width">
								<!--1-->
								<ogc:PropertyName>maplinewidth</ogc:PropertyName>
							</sld:CssParameter>
						</sld:Stroke>
					</sld:Mark>
					<sld:Size>
						<!--12-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
					<Rotation>
						<ogc:Function name="endAngle">
							<ogc:PropertyName>geom</ogc:PropertyName>
						</ogc:Function>
					</Rotation>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L17</Name>
			<Title>Linha continua com um circulo preenchido (pontos) nos vertices</Title>
			<Abstract>Desenha uma linha continua, com um circulo preenchido (pontos) nos vertices, na cor, na espessura e no tamanho passados pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>17</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="vertices">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:Mark>
						<sld:WellKnownName>circle</sld:WellKnownName>
						<sld:Fill>
							<sld:CssParameter name="fill">
								<ogc:PropertyName>maplinesymbolcolor</ogc:PropertyName>
							</sld:CssParameter>
						</sld:Fill>
					</sld:Mark>
					<sld:Size>
						<!--6-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L18</Name>
			<Title>Linha continua com um quadrado preenchido (pontos) nos vertices</Title>
			<Abstract>Desenha uma linha continua, com um quadrado preenchido (pontos) nos vertices, na cor, na espessura e no tamanho passados pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>18</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="vertices">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:Mark>
						<sld:WellKnownName>square</sld:WellKnownName>
						<sld:Fill>
							<sld:CssParameter name="fill">
								<ogc:PropertyName>maplinesymbolcolor</ogc:PropertyName>
							</sld:CssParameter>
						</sld:Fill>
					</sld:Mark>
					<sld:Size>
						<!--6-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<Name>Regra_L19</Name>
			<Title>Linha continua com um simbolo nos vertices</Title>
			<Abstract>Desenha uma linha continua, com um simbolo externo nos vertices, na cor, na espessura e no tamanho passados pelos parametros maplinecolor, maplinewidth, maplinesymbol, maplinesymbolcolor e maplinesymbolsize.</Abstract>
			<ogc:Filter>
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName>maplinestyle</ogc:PropertyName>
					<ogc:Literal>19</ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:LineSymbolizer>
				<sld:Geometry>
					<ogc:PropertyName>geom</ogc:PropertyName>
				</sld:Geometry>
				<sld:Stroke>
					<sld:CssParameter name="stroke">
						<ogc:PropertyName>maplinecolor</ogc:PropertyName>
					</sld:CssParameter>
					<sld:CssParameter name="stroke-width">
						<ogc:PropertyName>maplinewidth</ogc:PropertyName>
					</sld:CssParameter>
				</sld:Stroke>
			</sld:LineSymbolizer>
			<sld:PointSymbolizer>
				<sld:Geometry>
					<ogc:Function name="vertices">
						<ogc:PropertyName>geom</ogc:PropertyName>
					</ogc:Function>
				</sld:Geometry>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${maplinesymbol}&amp;color=${strReplace(maplinesymbolcolor, '#','_', true)}"/>
						<!--<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=100001"/>-->
						<sld:Format>image/svg+xml</sld:Format>
					</sld:ExternalGraphic>
					<sld:Size>
						<!--35-->
						<ogc:PropertyName>maplinesymbolsize</ogc:PropertyName>
					</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>  
	</sld:FeatureTypeStyle>
	
	<!-- MESCLADO DO ESTILO DE PONTO -->
	
	<sld:FeatureTypeStyle>
		<sld:Name>SiglmdEstilosPontos</sld:Name>
		<Title>SigLMD - Estilos de Pontos</Title>
		<Abstract>Estilos de Pontos usados no SigLMD, implementado a tabela de Simbolos do MD.</Abstract>
		<sld:Rule>
			<sld:Name>Extra_Large</sld:Name>
			<Title>S??mbolos Muito Grandes</Title>
			<Abstract>Desenha os simbolos com um tamanho muito grande, quando a escala m??xima for 10.000.000</Abstract>
			<sld:MaxScaleDenominator>10000000</sld:MaxScaleDenominator>       
			<sld:PointSymbolizer>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${mapsymbol}&amp;color=${strReplace(mapcolor, '#','_', true)}" />
						<Format>image/svg+xml</Format>
					</sld:ExternalGraphic>
					<sld:Size>60</sld:Size>          
				</sld:Graphic>
			</sld:PointSymbolizer>  
		</sld:Rule>
		<sld:Rule>
			<sld:Name>Large</sld:Name>
			<Title>S??mbolos Grandes</Title>
			<Abstract>Desenha os simbolos com um tamanho grande, quando a escala for entre 10.000.000 e 20.000.000</Abstract>
			<sld:MinScaleDenominator>10000000</sld:MinScaleDenominator>
			<sld:MaxScaleDenominator>20000000</sld:MaxScaleDenominator>       
			<sld:PointSymbolizer>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${mapsymbol}&amp;color=${strReplace(mapcolor, '#','_', true)}" />
						<Format>image/svg+xml</Format>
					</sld:ExternalGraphic>
					<sld:Size>40</sld:Size>          
				</sld:Graphic>
			</sld:PointSymbolizer>  
		</sld:Rule>
		<sld:Rule>
			<sld:Name>Medium</sld:Name>
			<Title>S??mbolos M??dios</Title>
			<Abstract>Desenha os simbolos com um tamanho m??dio, quando a escala for entre 20.000.000 e 40.000.000</Abstract>
			<sld:MinScaleDenominator>20000000</sld:MinScaleDenominator>
			<sld:MaxScaleDenominator>40000000</sld:MaxScaleDenominator>       
			<sld:PointSymbolizer>
				<sld:Graphic>
					<sld:ExternalGraphic>
						<sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="http://siglmd-app.defesa.mil.br/SvgService/symbol.svg?symbol=${mapsymbol}&amp;color=${strReplace(mapcolor, '#','_', true)}" />
						<Format>image/svg+xml</Format>
					</sld:ExternalGraphic>
					<sld:Size>20</sld:Size>          
				</sld:Graphic>
			</sld:PointSymbolizer>  
		</sld:Rule>
		<sld:Rule>
			<sld:Name>Small</sld:Name>
			<Title>S??mbolos Pequenos</Title>
			<Abstract>Desenha os pontos representados por um c??rculo, quando a escala for entre 40.000.000 e 100.000.000</Abstract>
			<sld:MinScaleDenominator>40000000</sld:MinScaleDenominator>
			<sld:MaxScaleDenominator>100000000</sld:MaxScaleDenominator>
			<sld:PointSymbolizer>
				<sld:Graphic>
					<sld:Mark>
						<sld:WellKnownName>circle</sld:WellKnownName>
						<sld:Fill>
							<sld:CssParameter name="sld:Fill">
								<ogc:PropertyName>mapcolor</ogc:PropertyName>
							</sld:CssParameter>                   
						</sld:Fill>
					</sld:Mark>
					<sld:Size>3</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
		<sld:Rule>
			<sld:Name>Tiny</sld:Name>
			<Title>S??mbolos Muito Pequenos</Title>
			<Abstract>Desenha os pontos representados por um c??rculo, quando a escala m??nima for 100.000.000</Abstract>
			<sld:MinScaleDenominator>100000000</sld:MinScaleDenominator>       
			<sld:PointSymbolizer>
				<sld:Graphic>
					<sld:Mark>
						<sld:WellKnownName>circle</sld:WellKnownName>
						<sld:Fill>
							<sld:CssParameter name="sld:Fill">
								<ogc:PropertyName>mapcolor</ogc:PropertyName>
							</sld:CssParameter>                    
						</sld:Fill>
					</sld:Mark>
					<sld:Size>2</sld:Size>
				</sld:Graphic>
			</sld:PointSymbolizer>
		</sld:Rule>
	</sld:FeatureTypeStyle>

	
	
	
</sld:UserStyle>
