<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<NamedLayer>
		<Name>stations</Name>
		<UserStyle>
		  <Title>Estilos para Estações de Transporte</Title>
			<FeatureTypeStyle>

				<Rule>
					 <PointSymbolizer>
					   <Graphic>
						 <Mark>
						   <WellKnownName>square</WellKnownName>
						   <Fill>
							 <CssParameter name="fill">#7981b0</CssParameter>
                             <CssParameter name="stroke">#5a6396</CssParameter>
                             <CssParameter name="stroke-width">0.5</CssParameter>
						   </Fill>
						 </Mark>
						 <Size>8</Size>
					   </Graphic>
					 </PointSymbolizer>
				</Rule>
              
              
              	<Rule>
                  
                  
				   <TextSymbolizer>
					 <Label>
					   <ogc:PropertyName>name</ogc:PropertyName>
					 </Label>
					 <Font>
					   <CssParameter name="font-family">Dialog</CssParameter>
					   <CssParameter name="font-size">13</CssParameter>
					   <CssParameter name="font-style">normal</CssParameter>
					 </Font>
					 <LabelPlacement>
					   <PointPlacement>
						 <AnchorPoint>
						   <AnchorPointX>0.5</AnchorPointX>
						   <AnchorPointY>0.0</AnchorPointY>
						 </AnchorPoint>
						 <Displacement>
						   <DisplacementX>0</DisplacementX>
						   <DisplacementY>-18</DisplacementY>
						 </Displacement>
					   </PointPlacement>
					 </LabelPlacement>
					 <Fill>
					   <CssParameter name="fill">#5a6396</CssParameter>
					 </Fill>
				   </TextSymbolizer>                  
                  
                  
                </Rule> 
              
              

			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
	
</StyledLayerDescriptor>
