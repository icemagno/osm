<sld:StyledLayerDescriptor version="1.0.0" xmlns:gml="http://www.opengis.net/gml"
        xmlns:ows="http://www.opengis.net/ows" xmlns:sld="http://www.opengis.net/sld"
        xmlns:wms="http://www.opengis.net/ows" xmlns:xlink="http://www.w3.org/1999/xlink"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.opengis.net/ows http://giswebservices.massgis.state.ma.us/geoserver/schemas/sld/GetMap.xsd">
        <sld:NamedLayer>
            <sld:Name>area_sigilosa_forcas</sld:Name>
            <UserStyle xmlns="http://www.opengis.net/sld">
                <FeatureTypeStyle>                
                    <Rule>
                        <PolygonSymbolizer>
                         <Fill>
                           <CssParameter name="fill">#00a035</CssParameter>
                           <CssParameter name="fill-opacity">0.2</CssParameter>
                         </Fill>
                        </PolygonSymbolizer>
                    </Rule>                                   
                    <Rule>
                        <PolygonSymbolizer>
                         <Fill>
                           <GraphicFill>
                              <Graphic>
                                   <Mark>
                                       <WellKnownName>shape://backslash</WellKnownName>
                                     <Stroke>
                                       <CssParameter name="stroke">#d10404</CssParameter>
                                       <CssParameter name="stroke-width">0.5</CssParameter>
                                    </Stroke>
                                    </Mark>
                                 <Size>16</Size>
                              </Graphic>
                            </GraphicFill>
                         </Fill>
                         <Stroke>
                           <CssParameter name="stroke">#d10404</CssParameter>
                           <CssParameter name="stroke-width">1</CssParameter>
                         </Stroke>
                        </PolygonSymbolizer>
                    </Rule>
                </FeatureTypeStyle>
            </UserStyle>
        </sld:NamedLayer>
    </sld:StyledLayerDescriptor>
