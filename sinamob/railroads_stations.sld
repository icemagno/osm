<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>railroads_stations</Name>
    <UserStyle>
      <Title>Estações de Trem</Title>
      <FeatureTypeStyle>
        <Rule>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>square</WellKnownName>
             <Fill>
               <CssParameter name="fill">#009900</CssParameter>
               <CssParameter name="fill-opacity">0.2</CssParameter>
             </Fill>
             <Stroke>
               <CssParameter name="stroke">#000000</CssParameter>
               <CssParameter name="stroke-width">1</CssParameter>
             </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>

        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
