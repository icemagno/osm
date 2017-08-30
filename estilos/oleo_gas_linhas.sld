<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>oleo_gas_linhas</Name>
    <UserStyle>
      <Title>Estilo Para Linhas de Oleo e Gas</Title>

      <FeatureTypeStyle>
        
     
       
        <Rule>
			<Name>Zonas Contíguas</Name>
			<Filter>
				<PropertyIsEqualTo>
				   <PropertyName>border_type</PropertyName>
				   <Literal>contiguous</Literal>
				</PropertyIsEqualTo>		
			</Filter>	          

			<LineSymbolizer>
				<Stroke>
					<CssParameter name="stroke">#999797</CssParameter>
					<CssParameter name="stroke-width">0.1</CssParameter>
                    <CssParameter name="stroke-dasharray">5 2</CssParameter>
				</Stroke>
			</LineSymbolizer>
		
            <TextSymbolizer>
              <Label>
                <ogc:PropertyName>name</ogc:PropertyName>
              </Label>
              <Font>
                <CssParameter name="font-family">Dialog</CssParameter>
                <CssParameter name="font-style">Normal</CssParameter>
                <CssParameter name="font-size">8</CssParameter>
              </Font>
              <LabelPlacement>
				  <LinePlacement>
					<PerpendicularOffset>
					   10
					</PerpendicularOffset>
				  </LinePlacement>
              </LabelPlacement>
              <Halo>
                <Radius>
                  <ogc:Literal>1</ogc:Literal>
                </Radius>
                <Fill>
                  <CssParameter name="fill">#FFFFFF</CssParameter>
                  <CssParameter name="fill-opacity">0.7</CssParameter>
                </Fill>
              </Halo>
              <Fill>
                <CssParameter name="fill">#000000</CssParameter>
                <CssParameter name="fill-opacity">0.6</CssParameter>
              </Fill>
              <Priority>2000</Priority>
              <VendorOption name="followLine">true</VendorOption>
              <VendorOption name="repeat">130</VendorOption>
              <VendorOption name="maxDisplacement">50</VendorOption>
              <VendorOption name="maxAngleDelta">30</VendorOption>
            </TextSymbolizer>
          
        </Rule>        
        
        
        
        
        
        
        <Rule>
			<Name>Cabos Submarinos</Name>
		  
			<Filter>
				<PropertyIsEqualTo>
				   <PropertyName>man_made</PropertyName>
				   <Literal>submarine_cable</Literal>
				</PropertyIsEqualTo>		
			</Filter>		  
		  
			<LineSymbolizer>
				<Stroke>
					<CssParameter name="stroke">#adadad</CssParameter>
					<CssParameter name="stroke-width">0.1</CssParameter>
				</Stroke>
			</LineSymbolizer>
			
        </Rule>
		
		
        <Rule>
			<Name>Tubulações</Name>
			
			<Filter>
				<PropertyIsEqualTo>
				   <PropertyName>man_made</PropertyName>
				   <Literal>pipeline</Literal>
				</PropertyIsEqualTo>		
			</Filter>	
			
			<LineSymbolizer>
				<Stroke>
					<CssParameter name="stroke">#f77979</CssParameter>
					<CssParameter name="stroke-width">0.1</CssParameter>
                    <CssParameter name="stroke-dasharray">5 2</CssParameter>
				</Stroke>
			</LineSymbolizer>
		
            <TextSymbolizer>
              <Label>
                <ogc:PropertyName>name</ogc:PropertyName>
              </Label>
              <Font>
                <CssParameter name="font-family">Dialog</CssParameter>
                <CssParameter name="font-style">Normal</CssParameter>
                <CssParameter name="font-size">8</CssParameter>
              </Font>
              <LabelPlacement>
				  <LinePlacement>
					<PerpendicularOffset>
					   10
					</PerpendicularOffset>
				  </LinePlacement>
              </LabelPlacement>
              <Halo>
                <Radius>
                  <ogc:Literal>1</ogc:Literal>
                </Radius>
                <Fill>
                  <CssParameter name="fill">#FFFFFF</CssParameter>
                  <CssParameter name="fill-opacity">0.7</CssParameter>
                </Fill>
              </Halo>
              <Fill>
                <CssParameter name="fill">#000000</CssParameter>
                <CssParameter name="fill-opacity">0.6</CssParameter>
              </Fill>
              <Priority>2000</Priority>
              <VendorOption name="followLine">true</VendorOption>
              <VendorOption name="repeat">100</VendorOption>
              <VendorOption name="maxDisplacement">50</VendorOption>
              <VendorOption name="maxAngleDelta">30</VendorOption>
            </TextSymbolizer>

		</Rule>
		
		
      </FeatureTypeStyle>
	  
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

