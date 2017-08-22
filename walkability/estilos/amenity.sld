<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<NamedLayer>
		<Name>amenity</Name>
		<UserStyle>
		  <Title>Estilos para Amenities</Title>
			<FeatureTypeStyle>

				<Rule>
                  
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>studio</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>

							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>casino</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>

							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>brothel</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>social_centre</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>		

							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>swingerclub</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	
							
						</ogc:And>
					</ogc:Filter>                  
                
					<PointSymbolizer>
						<Graphic>
                            <ExternalGraphic>
                                <OnlineResource xlink:type="simple" xlink:href="symbols/${amenity}.png" />
                                <Format>image/png</Format>
                            </ExternalGraphic>
                            <Size>11</Size>
						</Graphic>
					</PointSymbolizer>
				</Rule>

              
				<Rule>
                  
					<ogc:Filter>
						<ogc:Or>
							<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>studio</ogc:Literal>
							</ogc:PropertyIsEqualTo>

							<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>casino</ogc:Literal>
							</ogc:PropertyIsEqualTo>

							<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>brothel</ogc:Literal>
							</ogc:PropertyIsEqualTo>
							
							<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>social_centre</ogc:Literal>
							</ogc:PropertyIsEqualTo>		

							<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>swingerclub</ogc:Literal>
							</ogc:PropertyIsEqualTo>	
							
						</ogc:Or>
					</ogc:Filter>                  
                
					<PointSymbolizer>
						<Graphic>
							<Mark>
								<WellKnownName>circle</WellKnownName>
								<Fill>
									<CssParameter name="fill">#a36a00</CssParameter>
								</Fill>
							</Mark>
							<Size>6</Size>
						</Graphic>
					</PointSymbolizer>				
				</Rule>
			              
				<Rule>
					<TextSymbolizer>
                        <VendorOption name="spaceAround">10</VendorOption>
						<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
							<CssParameter name="font-family">Dialog</CssParameter>
							<CssParameter name="font-size">9</CssParameter>
						</Font>
						<LabelPlacement>
							<PointPlacement>
								<AnchorPoint>
									<AnchorPointX>0.5</AnchorPointX>
									<AnchorPointY>0.0</AnchorPointY>
								</AnchorPoint>
								<Displacement>
									<DisplacementX>0</DisplacementX>
									<DisplacementY>-17</DisplacementY>
								</Displacement>
							</PointPlacement>
						</LabelPlacement>
						<Fill>
							<CssParameter name="fill">#990099</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
		 
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
	
</StyledLayerDescriptor>
