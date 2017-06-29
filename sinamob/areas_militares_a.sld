<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>heliporto_a</Name>
    <UserStyle>
      <Title>Heliporto</Title>
      <FeatureTypeStyle>
        <Rule>
          <PolygonSymbolizer>
			 <Fill>
			   <GraphicFill>
				 <Graphic>
				   <Mark>
					 <WellKnownName>shape://times</WellKnownName>
					 <Stroke>
					   <CssParameter name="stroke">#e00606</CssParameter>
					   <CssParameter name="stroke-width">0.5</CssParameter>
					 </Stroke>
				   </Mark>
				   <Size>16</Size>
				 </Graphic>
			   </GraphicFill>
			 </Fill>
            <Stroke>
              <CssParameter name="stroke">#f71b1b</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
            </Stroke>
          </PolygonSymbolizer>

        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
