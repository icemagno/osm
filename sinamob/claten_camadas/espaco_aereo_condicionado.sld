<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>espaco_aereo_condicionado</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>E A C</Title>
      <Abstract>linha do espaco aereo condicionado</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering lines -->
      <FeatureTypeStyle>
        <Rule>
          <Name>rule1</Name>
          <Title>Linha Azul Claro</Title>
          <Abstract>A solid blue line with a 6 pixel width</Abstract>
          <LineSymbolizer>
            <Stroke>
                <CssParameter name="stroke">#b3ffff</CssParameter>
                <CssParameter name="stroke-width">6</CssParameter>
            </Stroke>
          </LineSymbolizer>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>id</ogc:PropertyName>
            </Label>
			<!-- <sld:Geometry> -->
				<!-- <ogc:Function name="startPoint"> -->
					<!-- <ogc:PropertyName>geom</ogc:PropertyName> -->
				<!-- </ogc:Function> -->
			<!-- </sld:Geometry> -->
            <Font>
               <CssParameter name="font-family">Arial</CssParameter>
               <!-- <CssParameter name="font-size">8</CssParameter> -->
               <CssParameter name="font-style">normal</CssParameter>
               <CssParameter name="font-weight">normal</CssParameter>
              
                     <CssParameter name="font-size">
         <ogc:Function name="Categorize">
           <!-- Value to transform -->
           <ogc:Function name="env">
             <ogc:Literal>wms_scale_denominator</ogc:Literal>
           </ogc:Function>
           <!-- Output values and thresholds -->
           <!-- Ranges: -->
           <!-- [scale <= 300, font 12] -->
           <!-- [scale 300 - 2500, font 10] -->
           <!-- [scale > 2500, font 8] -->
           <ogc:Literal>12</ogc:Literal>
           <ogc:Literal>300</ogc:Literal>
           <ogc:Literal>10</ogc:Literal>
           <ogc:Literal>2500</ogc:Literal>
           <ogc:Literal>8</ogc:Literal>
         </ogc:Function>
       </CssParameter>
              
            </Font>
            <LabelPlacement>
				<PointPlacement>
					<AnchorPoint>
					  <AnchorPointX>
						0.5
					  </AnchorPointX>
					  <AnchorPointY>
						0.5
					  </AnchorPointY>
					</AnchorPoint>
					<Displacement>
					  <DisplacementX>
						 0
					  </DisplacementX>
					  <DisplacementY>
						 0
					  </DisplacementY>
					</Displacement>
				</PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#00000</CssParameter>
            </Fill>
          </TextSymbolizer>        
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
