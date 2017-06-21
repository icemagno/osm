<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name></Name>
    <UserStyle>
      <Title>Buoy Lateral</Title>
      <FeatureTypeStyle>
        <Rule>
          <Title>Buoy Lateral</Title>
          
             <ogc:Filter>
               <ogc:Not>
               <ogc:PropertyIsNull>
                 <ogc:PropertyName>topmark_colour</ogc:PropertyName>
				</ogc:PropertyIsNull>
               </ogc:Not>  
             </ogc:Filter>          
          
          
             <PointSymbolizer>
               <Graphic>
                 
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple" xlink:href="seamarks/Q/Q9/cylinder/${topmark_colour}.svg" />
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
				  <Size>16</Size>
				  
                 </Graphic>
             </PointSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
