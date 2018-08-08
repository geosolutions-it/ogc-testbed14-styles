<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>Default Styler</sld:Name>
    <sld:UserStyle>
      <sld:Name>Default Styler</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>5000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Cart Track</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>F_CODE</ogc:PropertyName>
              <ogc:Literal>AP010</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MinScaleDenominator>2500000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>2.5E7</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">1.14</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#f7ab82</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.9</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.9</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.8700000047683716 4.124000072479248 0.625 1.375</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Cart Track</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>F_CODE</ogc:PropertyName>
              <ogc:Literal>AP010</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MinScaleDenominator>500000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>2500000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#f7ab82</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1.14</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1.14</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">2.4149999618530273 5.322999954223633 0.8069999814033508 1.7740000486373901</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Cart Track</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>F_CODE</ogc:PropertyName>
              <ogc:Literal>AP010</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MinScaleDenominator>100000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>500000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">3</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#f7ab82</sld:CssParameter>
              <sld:CssParameter name="stroke-width">2.25</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">2.25</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">4.796999931335449 10.57699966430664 1.6030000448226929 3.5260000228881836</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Cart Track</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>F_CODE</ogc:PropertyName>
              <ogc:Literal>AP010</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MinScaleDenominator>50000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>100000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">6.3</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#f7ab82</sld:CssParameter>
              <sld:CssParameter name="stroke-width">4.655</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">4.655</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">10.0 22.0 3.3329999446868896 7.333000183105469</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Cart Track</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AP010</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>5000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">6.3</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#f7ab82</sld:CssParameter>
              <sld:CssParameter name="stroke-width">4.655</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">4.655</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">10.0 22.0 3.3329999446868896 7.333000183105469</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Cart Track</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AP010</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>100.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">12</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#f7ab82</sld:CssParameter>
              <sld:CssParameter name="stroke-width">8</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">8</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">18.100000381469727 39.81999969482422 6.0329999923706055 13.27299976348877</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Trail</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>F_CODE</ogc:PropertyName>
              <ogc:Literal>AP050</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MinScaleDenominator>50000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>100000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">2.363</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">2.363</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">5.0 9.0 1.5 2.5</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Trail</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AP050</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>5000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">2.363</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">2.363</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">5.0 9.0 1.5 2.5</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Trail</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AP050</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>100.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">4.5</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">1.0 0.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">4.5</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">10.0 18.0 3.0 5.0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:VendorOption name="ruleEvaluation">first</sld:VendorOption>
      </sld:FeatureTypeStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>5000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">12</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>100.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">20</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>50000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>100000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">12</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>5000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">12</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>100.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-width">20</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:VendorOption name="ruleEvaluation">first</sld:VendorOption>
      </sld:FeatureTypeStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>5000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">10</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>5</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:Not>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
              </ogc:Not>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>100.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">14</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>0.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="startPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="startAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Add>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Add>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
          <sld:PointSymbolizer>
            <sld:Geometry>
              <ogc:Function name="offset">
                <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="sin">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
                <ogc:Mul>
                  <ogc:Div>
                    <ogc:Function name="env">
                      <ogc:Literal>wms_scale_denominator</ogc:Literal>
                    </ogc:Function>
                    <ogc:Literal>-450</ogc:Literal>
                  </ogc:Div>
                  <ogc:Function name="cos">
                    <ogc:Function name="toRadians">
                      <ogc:Mul>
                        <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </ogc:Function>
                        <ogc:Literal>1</ogc:Literal>
                      </ogc:Mul>
                    </ogc:Function>
                  </ogc:Function>
                </ogc:Mul>
              </ogc:Function>
            </sld:Geometry>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke-width">2</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>
                <ogc:Sub>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                  <ogc:Literal>45</ogc:Literal>
                </ogc:Sub>
              </sld:Rotation>
              <sld:AnchorPoint>
                <sld:AnchorPointX>0.0</sld:AnchorPointX>
                <sld:AnchorPointY>1.0</sld:AnchorPointY>
              </sld:AnchorPoint>
            </sld:Graphic>
          </sld:PointSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>50000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>100000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">10</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>5000.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">10</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Bridge</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:Or>
                <ogc:PropertyIsNull>
                  <ogc:Function name="startAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNull>
                  <ogc:Function name="endAngle">
                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                  </ogc:Function>
                </ogc:PropertyIsNull>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>F_CODE</ogc:PropertyName>
                  <ogc:Literal>AQ040</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>TRS</ogc:PropertyName>
                  <ogc:Literal>13</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>F_CODE</ogc:PropertyName>
                <ogc:Literal>AQ040</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>TRS</ogc:PropertyName>
                <ogc:Literal>13</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MinScaleDenominator>100.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ffffff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">14</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:VendorOption name="ruleEvaluation">first</sld:VendorOption>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>

