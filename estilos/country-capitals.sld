<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>country-capitals</Name>
    <UserStyle>
      <Title>Style for country capitals</Title>
      <FeatureTypeStyle>

		<Rule>
			<MaxScaleDenominator>70000000.0</MaxScaleDenominator>
			<PointSymbolizer>

						<Graphic>
							<ExternalGraphic>
								<OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="symbols/place-capital-8.png" />
								<Format>image/png</Format>
							</ExternalGraphic>
							<Size>9</Size>
						</Graphic>

			</PointSymbolizer>
		</Rule>        
        
        
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
