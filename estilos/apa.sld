<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>Default Styler</sld:Name>
    <sld:UserStyle>
      <sld:Name>Default Styler</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Name>name</sld:Name>
        
        
        <sld:Rule>

         <sld:MaxScaleDenominator>3000000.0</sld:MaxScaleDenominator>
         <sld:TextSymbolizer>
           
           
			<sld:Geometry>
			  <ogc:Function name="centroid">
				<ogc:PropertyName>way</ogc:PropertyName>
			  </ogc:Function>
			</sld:Geometry>           
           
           <sld:Label>
             <ogc:PropertyName>name</ogc:PropertyName>
           </sld:Label>
           <sld:Font>
              <sld:CssParameter name="font-family">Dialog</sld:CssParameter>
              <sld:CssParameter name="font-size">8.0</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
           </sld:Font>
           <sld:LabelPlacement>
             <sld:PointPlacement>
               <sld:AnchorPoint>
                 <sld:AnchorPointX>0.5</sld:AnchorPointX>
                 <sld:AnchorPointY>0.5</sld:AnchorPointY>
               </sld:AnchorPoint>
             </sld:PointPlacement>
           </sld:LabelPlacement>
            <sld:Halo>
              <sld:Radius>1</sld:Radius>
              <sld:Fill>
                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>           
           <sld:Fill>
             <sld:CssParameter name="fill">#216620</sld:CssParameter>
           </sld:Fill>
           
           <VendorOption name="autoWrap">50</VendorOption>
           
         </sld:TextSymbolizer>
          
          
        </sld:Rule>		        

		<sld:Rule>
           <sld:MaxScaleDenominator>4000000.0</sld:MaxScaleDenominator>
			<sld:PolygonSymbolizer>
				<sld:Fill>
				  <sld:CssParameter name="fill">#a7d1a0</sld:CssParameter>
				  <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
				</sld:Fill>
			 <Stroke>
				  <sld:CssParameter name="stroke">#a7d1a0</sld:CssParameter>
				  <sld:CssParameter name="stroke-width">1</sld:CssParameter>
			 </Stroke>			
			</sld:PolygonSymbolizer>
        </sld:Rule>
        
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
