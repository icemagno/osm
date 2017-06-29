<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>railroads</Name>
    <UserStyle>
      <Title>Linha Férrea</Title>
      <FeatureTypeStyle>

		  <Rule>
			<LineSymbolizer>
				<Stroke>
					<CssParameter name="stroke">#3d3d3d</CssParameter>
					<CssParameter name="stroke-width">1.0</CssParameter>
				</Stroke>
			</LineSymbolizer>
			<LineSymbolizer>
				<Stroke>
					<GraphicStroke>
						<Graphic>
							<Mark>
								<WellKnownName>shape://vertline</WellKnownName>
								<Stroke>
									<CssParameter name="stroke">#3d3d3d</CssParameter>
									<CssParameter name="stroke-width">0.4</CssParameter>
								</Stroke>
							</Mark>
							<Size>9</Size>
						</Graphic>
					</GraphicStroke>
				</Stroke>
			</LineSymbolizer>
		</Rule>	  
	  

    </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
