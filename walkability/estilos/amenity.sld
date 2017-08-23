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
                          
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>gambling</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	                          
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>bbq</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	                             
                          
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>gym</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	                              
                          
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>waste_disposal</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	   
                          
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>vending_machine</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	  
                          
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>marketplace</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	                            
							
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>dojo</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	  
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>animal_shelter</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	  
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>animal_boarding</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>shower</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	  							

							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>baby_hatch</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	  
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>nursing_home</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	  
							
							<ogc:PropertyIsNotEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>social_facility</ogc:Literal>
							</ogc:PropertyIsNotEqualTo>	  	
							
						</ogc:And>
					</ogc:Filter>                  
                
					<PointSymbolizer>
						<Graphic>
                            <ExternalGraphic>
                                <OnlineResource xlink:type="simple" xlink:href="symbols/${amenity}.png" />
                                <Format>image/png</Format>
                            </ExternalGraphic>
                            <Size>13</Size>
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
							
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>gambling</ogc:Literal>
							</ogc:PropertyIsEqualTo>
                          
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>bbq</ogc:Literal>
							</ogc:PropertyIsEqualTo>                          
                          
                          
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>gym</ogc:Literal>
							</ogc:PropertyIsEqualTo>  
                          
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>waste_disposal</ogc:Literal>
							</ogc:PropertyIsEqualTo>   
                          
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>vending_machine</ogc:Literal>
							</ogc:PropertyIsEqualTo>    
                          
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>marketplace</ogc:Literal>
							</ogc:PropertyIsEqualTo>                              
							
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>dojo</ogc:Literal>
							</ogc:PropertyIsEqualTo>   							
                          
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>animal_shelter</ogc:Literal>
							</ogc:PropertyIsEqualTo>   
							
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>animal_boarding</ogc:Literal>
							</ogc:PropertyIsEqualTo>   							

                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>shower</ogc:Literal>
							</ogc:PropertyIsEqualTo>   
							
                          	<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>baby_hatch</ogc:Literal>
							</ogc:PropertyIsEqualTo>   

							<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>nursing_home</ogc:Literal>
							</ogc:PropertyIsEqualTo>  
							
							<ogc:PropertyIsEqualTo>
							  <ogc:PropertyName>amenity</ogc:PropertyName>
							  <ogc:Literal>social_facility</ogc:Literal>
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
			              
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
	
</StyledLayerDescriptor>
