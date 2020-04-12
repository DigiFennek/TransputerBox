<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_L">
<frame x1="0" y1="0" x2="264.16" y2="180.34" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="162.56" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-vg">
<description>&lt;b&gt;VG Connectors (DIN 41612/DIN 41617)&lt;/b&gt;&lt;p&gt;
The library contains devices which allow to place the contacts individually or 
in one or several blocks.&lt;p&gt;
This behavior is indicated by the key words &lt;i&gt;single&lt;/i&gt; and &lt;i&gt;block&lt;/i&gt; in
the respective device descriptions.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FAC64S">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
female, 64 pins, type C, rows AC, grid 5.08 mm</description>
<wire x1="-3.81" y1="-42.545" x2="-1.651" y2="-42.545" width="0.254" layer="21"/>
<wire x1="1.27" y1="-42.545" x2="1.27" y2="-41.275" width="0.254" layer="21"/>
<wire x1="1.27" y1="-41.275" x2="3.81" y2="-41.275" width="0.254" layer="21"/>
<wire x1="3.81" y1="41.275" x2="1.27" y2="41.275" width="0.254" layer="21"/>
<wire x1="1.27" y1="41.275" x2="1.27" y2="42.545" width="0.254" layer="21"/>
<wire x1="2.667" y1="47.244" x2="2.667" y2="44.45" width="0.254" layer="21"/>
<wire x1="2.667" y1="47.244" x2="-3.175" y2="47.244" width="0.254" layer="21"/>
<wire x1="-3.175" y1="47.244" x2="-3.175" y2="44.45" width="0.254" layer="21"/>
<wire x1="-1.651" y1="42.545" x2="-3.175" y2="44.45" width="0.254" layer="21"/>
<wire x1="-1.651" y1="42.545" x2="-3.81" y2="42.545" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-47.244" x2="-3.175" y2="-44.45" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-47.244" x2="2.667" y2="-47.244" width="0.254" layer="21"/>
<wire x1="-1.651" y1="-42.545" x2="-3.175" y2="-44.45" width="0.254" layer="21"/>
<wire x1="2.667" y1="-47.244" x2="2.667" y2="-44.45" width="0.254" layer="21"/>
<wire x1="2.667" y1="-47.244" x2="4.826" y2="-47.244" width="0.254" layer="21"/>
<wire x1="-3.429" y1="42.164" x2="-3.429" y2="-42.164" width="0.254" layer="51"/>
<wire x1="-3.429" y1="42.164" x2="0.889" y2="42.164" width="0.254" layer="51"/>
<wire x1="0.889" y1="42.164" x2="0.889" y2="40.894" width="0.254" layer="51"/>
<wire x1="0.889" y1="40.894" x2="3.429" y2="40.894" width="0.254" layer="51"/>
<wire x1="3.429" y1="40.894" x2="3.429" y2="-40.894" width="0.254" layer="51"/>
<wire x1="0.889" y1="-40.894" x2="3.429" y2="-40.894" width="0.254" layer="51"/>
<wire x1="-3.429" y1="-42.164" x2="0.889" y2="-42.164" width="0.254" layer="51"/>
<wire x1="0.889" y1="-42.164" x2="0.889" y2="-40.894" width="0.254" layer="51"/>
<wire x1="-4.826" y1="47.244" x2="-3.175" y2="47.244" width="0.254" layer="21"/>
<wire x1="4.826" y1="47.244" x2="2.667" y2="47.244" width="0.254" layer="21"/>
<wire x1="-5.334" y1="46.736" x2="-4.826" y2="47.244" width="0.254" layer="21" curve="-90"/>
<wire x1="4.826" y1="47.244" x2="5.334" y2="46.736" width="0.254" layer="21" curve="-90"/>
<wire x1="-4.826" y1="-47.244" x2="-3.175" y2="-47.244" width="0.254" layer="21"/>
<wire x1="-5.334" y1="-46.736" x2="-5.334" y2="46.736" width="0.254" layer="21"/>
<wire x1="5.334" y1="-46.736" x2="5.334" y2="46.736" width="0.254" layer="21"/>
<wire x1="-5.334" y1="-46.736" x2="-4.826" y2="-47.244" width="0.254" layer="21" curve="90"/>
<wire x1="4.826" y1="-47.244" x2="5.334" y2="-46.736" width="0.254" layer="21" curve="90"/>
<wire x1="-1.651" y1="-42.545" x2="1.143" y2="-42.545" width="0.254" layer="21"/>
<wire x1="1.143" y1="-42.545" x2="1.27" y2="-42.545" width="0.254" layer="21"/>
<wire x1="1.143" y1="-42.545" x2="2.667" y2="-44.45" width="0.254" layer="21"/>
<wire x1="1.27" y1="42.545" x2="1.143" y2="42.545" width="0.254" layer="21"/>
<wire x1="1.143" y1="42.545" x2="-1.651" y2="42.545" width="0.254" layer="21"/>
<wire x1="1.143" y1="42.545" x2="2.667" y2="44.45" width="0.254" layer="21"/>
<wire x1="3.81" y1="-41.275" x2="3.81" y2="41.275" width="0.254" layer="21"/>
<wire x1="-3.81" y1="42.545" x2="-3.81" y2="-42.545" width="0.254" layer="21"/>
<circle x="-0.3048" y="-45.0088" radius="1.27" width="0.254" layer="21"/>
<circle x="-0.3048" y="45.0088" radius="1.27" width="0.254" layer="21"/>
<circle x="-0.3048" y="45.0088" radius="2.286" width="1.778" layer="42"/>
<circle x="-0.3048" y="45.0088" radius="2.286" width="1.778" layer="43"/>
<circle x="-0.3048" y="-45.0088" radius="2.286" width="1.778" layer="42"/>
<circle x="-0.3048" y="-45.0088" radius="2.286" width="1.778" layer="43"/>
<pad name="A1" x="-2.54" y="39.37" drill="0.9144" shape="octagon"/>
<pad name="A2" x="-2.54" y="36.83" drill="0.9144" shape="octagon"/>
<pad name="A3" x="-2.54" y="34.29" drill="0.9144" shape="octagon"/>
<pad name="A4" x="-2.54" y="31.75" drill="0.9144" shape="octagon"/>
<pad name="A5" x="-2.54" y="29.21" drill="0.9144" shape="octagon"/>
<pad name="A6" x="-2.54" y="26.67" drill="0.9144" shape="octagon"/>
<pad name="A7" x="-2.54" y="24.13" drill="0.9144" shape="octagon"/>
<pad name="A8" x="-2.54" y="21.59" drill="0.9144" shape="octagon"/>
<pad name="A9" x="-2.54" y="19.05" drill="0.9144" shape="octagon"/>
<pad name="A10" x="-2.54" y="16.51" drill="0.9144" shape="octagon"/>
<pad name="A11" x="-2.54" y="13.97" drill="0.9144" shape="octagon"/>
<pad name="A12" x="-2.54" y="11.43" drill="0.9144" shape="octagon"/>
<pad name="A13" x="-2.54" y="8.89" drill="0.9144" shape="octagon"/>
<pad name="A14" x="-2.54" y="6.35" drill="0.9144" shape="octagon"/>
<pad name="A15" x="-2.54" y="3.81" drill="0.9144" shape="octagon"/>
<pad name="A16" x="-2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="A17" x="-2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="A18" x="-2.54" y="-3.81" drill="0.9144" shape="octagon"/>
<pad name="A19" x="-2.54" y="-6.35" drill="0.9144" shape="octagon"/>
<pad name="A20" x="-2.54" y="-8.89" drill="0.9144" shape="octagon"/>
<pad name="A21" x="-2.54" y="-11.43" drill="0.9144" shape="octagon"/>
<pad name="A22" x="-2.54" y="-13.97" drill="0.9144" shape="octagon"/>
<pad name="A23" x="-2.54" y="-16.51" drill="0.9144" shape="octagon"/>
<pad name="A24" x="-2.54" y="-19.05" drill="0.9144" shape="octagon"/>
<pad name="A25" x="-2.54" y="-21.59" drill="0.9144" shape="octagon"/>
<pad name="A26" x="-2.54" y="-24.13" drill="0.9144" shape="octagon"/>
<pad name="A27" x="-2.54" y="-26.67" drill="0.9144" shape="octagon"/>
<pad name="A28" x="-2.54" y="-29.21" drill="0.9144" shape="octagon"/>
<pad name="A29" x="-2.54" y="-31.75" drill="0.9144" shape="octagon"/>
<pad name="A30" x="-2.54" y="-34.29" drill="0.9144" shape="octagon"/>
<pad name="A31" x="-2.54" y="-36.83" drill="0.9144" shape="octagon"/>
<pad name="A32" x="-2.54" y="-39.37" drill="0.9144" shape="octagon"/>
<pad name="C1" x="2.54" y="39.37" drill="0.9144" shape="octagon"/>
<pad name="C2" x="2.54" y="36.83" drill="0.9144" shape="octagon"/>
<pad name="C3" x="2.54" y="34.29" drill="0.9144" shape="octagon"/>
<pad name="C4" x="2.54" y="31.75" drill="0.9144" shape="octagon"/>
<pad name="C5" x="2.54" y="29.21" drill="0.9144" shape="octagon"/>
<pad name="C6" x="2.54" y="26.67" drill="0.9144" shape="octagon"/>
<pad name="C7" x="2.54" y="24.13" drill="0.9144" shape="octagon"/>
<pad name="C8" x="2.54" y="21.59" drill="0.9144" shape="octagon"/>
<pad name="C9" x="2.54" y="19.05" drill="0.9144" shape="octagon"/>
<pad name="C10" x="2.54" y="16.51" drill="0.9144" shape="octagon"/>
<pad name="C11" x="2.54" y="13.97" drill="0.9144" shape="octagon"/>
<pad name="C12" x="2.54" y="11.43" drill="0.9144" shape="octagon"/>
<pad name="C13" x="2.54" y="8.89" drill="0.9144" shape="octagon"/>
<pad name="C14" x="2.54" y="6.35" drill="0.9144" shape="octagon"/>
<pad name="C15" x="2.54" y="3.81" drill="0.9144" shape="octagon"/>
<pad name="C16" x="2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="C17" x="2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="C18" x="2.54" y="-3.81" drill="0.9144" shape="octagon"/>
<pad name="C19" x="2.54" y="-6.35" drill="0.9144" shape="octagon"/>
<pad name="C20" x="2.54" y="-8.89" drill="0.9144" shape="octagon"/>
<pad name="C21" x="2.54" y="-11.43" drill="0.9144" shape="octagon"/>
<pad name="C22" x="2.54" y="-13.97" drill="0.9144" shape="octagon"/>
<pad name="C23" x="2.54" y="-16.51" drill="0.9144" shape="octagon"/>
<pad name="C24" x="2.54" y="-19.05" drill="0.9144" shape="octagon"/>
<pad name="C25" x="2.54" y="-21.59" drill="0.9144" shape="octagon"/>
<pad name="C26" x="2.54" y="-24.13" drill="0.9144" shape="octagon"/>
<pad name="C27" x="2.54" y="-26.67" drill="0.9144" shape="octagon"/>
<pad name="C28" x="2.54" y="-29.21" drill="0.9144" shape="octagon"/>
<pad name="C29" x="2.54" y="-31.75" drill="0.9144" shape="octagon"/>
<pad name="C30" x="2.54" y="-34.29" drill="0.9144" shape="octagon"/>
<pad name="C31" x="2.54" y="-36.83" drill="0.9144" shape="octagon"/>
<pad name="C32" x="2.54" y="-39.37" drill="0.9144" shape="octagon"/>
<text x="2.667" y="41.91" size="1.27" layer="21" ratio="10">C</text>
<text x="-5.842" y="-46.736" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-1.778" y="-41.783" size="1.27" layer="21" ratio="10">32</text>
<text x="-5.842" y="-36.83" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-1.143" y="40.64" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.048" y="40.64" size="1.27" layer="21" ratio="10">A</text>
<text x="0.635" y="-33.02" size="1.27" layer="21" ratio="10" rot="R90">DIN41612 -C</text>
<text x="-3.048" y="-41.783" size="1.27" layer="21" ratio="10">a</text>
<text x="2.667" y="-43.053" size="1.27" layer="21" ratio="10">c</text>
<rectangle x1="2.159" y1="13.335" x2="2.921" y2="14.605" layer="51"/>
<rectangle x1="2.159" y1="18.415" x2="2.921" y2="19.685" layer="51"/>
<rectangle x1="-2.921" y1="13.335" x2="-2.159" y2="14.605" layer="51"/>
<rectangle x1="-2.921" y1="18.415" x2="-2.159" y2="19.685" layer="51"/>
<rectangle x1="-2.921" y1="23.495" x2="-2.159" y2="24.765" layer="51"/>
<rectangle x1="-2.921" y1="28.575" x2="-2.159" y2="29.845" layer="51"/>
<rectangle x1="-2.921" y1="33.655" x2="-2.159" y2="34.925" layer="51"/>
<rectangle x1="-2.921" y1="38.735" x2="-2.159" y2="40.005" layer="51"/>
<rectangle x1="2.159" y1="23.495" x2="2.921" y2="24.765" layer="51"/>
<rectangle x1="2.159" y1="28.575" x2="2.921" y2="29.845" layer="51"/>
<rectangle x1="2.159" y1="33.655" x2="2.921" y2="34.925" layer="51"/>
<rectangle x1="2.159" y1="38.735" x2="2.921" y2="40.005" layer="51"/>
<rectangle x1="2.159" y1="10.795" x2="2.921" y2="12.065" layer="51"/>
<rectangle x1="2.159" y1="15.875" x2="2.921" y2="17.145" layer="51"/>
<rectangle x1="-2.921" y1="10.795" x2="-2.159" y2="12.065" layer="51"/>
<rectangle x1="-2.921" y1="15.875" x2="-2.159" y2="17.145" layer="51"/>
<rectangle x1="-2.921" y1="20.955" x2="-2.159" y2="22.225" layer="51"/>
<rectangle x1="-2.921" y1="26.035" x2="-2.159" y2="27.305" layer="51"/>
<rectangle x1="-2.921" y1="31.115" x2="-2.159" y2="32.385" layer="51"/>
<rectangle x1="-2.921" y1="36.195" x2="-2.159" y2="37.465" layer="51"/>
<rectangle x1="2.159" y1="20.955" x2="2.921" y2="22.225" layer="51"/>
<rectangle x1="2.159" y1="26.035" x2="2.921" y2="27.305" layer="51"/>
<rectangle x1="2.159" y1="31.115" x2="2.921" y2="32.385" layer="51"/>
<rectangle x1="2.159" y1="36.195" x2="2.921" y2="37.465" layer="51"/>
<rectangle x1="2.159" y1="-17.145" x2="2.921" y2="-15.875" layer="51"/>
<rectangle x1="2.159" y1="-12.065" x2="2.921" y2="-10.795" layer="51"/>
<rectangle x1="-2.921" y1="-17.145" x2="-2.159" y2="-15.875" layer="51"/>
<rectangle x1="-2.921" y1="-12.065" x2="-2.159" y2="-10.795" layer="51"/>
<rectangle x1="-2.921" y1="-6.985" x2="-2.159" y2="-5.715" layer="51"/>
<rectangle x1="-2.921" y1="-1.905" x2="-2.159" y2="-0.635" layer="51"/>
<rectangle x1="-2.921" y1="3.175" x2="-2.159" y2="4.445" layer="51"/>
<rectangle x1="-2.921" y1="8.255" x2="-2.159" y2="9.525" layer="51"/>
<rectangle x1="2.159" y1="-6.985" x2="2.921" y2="-5.715" layer="51"/>
<rectangle x1="2.159" y1="-1.905" x2="2.921" y2="-0.635" layer="51"/>
<rectangle x1="2.159" y1="3.175" x2="2.921" y2="4.445" layer="51"/>
<rectangle x1="2.159" y1="8.255" x2="2.921" y2="9.525" layer="51"/>
<rectangle x1="2.159" y1="-19.685" x2="2.921" y2="-18.415" layer="51"/>
<rectangle x1="2.159" y1="-14.605" x2="2.921" y2="-13.335" layer="51"/>
<rectangle x1="-2.921" y1="-19.685" x2="-2.159" y2="-18.415" layer="51"/>
<rectangle x1="-2.921" y1="-14.605" x2="-2.159" y2="-13.335" layer="51"/>
<rectangle x1="-2.921" y1="-9.525" x2="-2.159" y2="-8.255" layer="51"/>
<rectangle x1="-2.921" y1="-4.445" x2="-2.159" y2="-3.175" layer="51"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.905" layer="51"/>
<rectangle x1="-2.921" y1="5.715" x2="-2.159" y2="6.985" layer="51"/>
<rectangle x1="2.159" y1="-9.525" x2="2.921" y2="-8.255" layer="51"/>
<rectangle x1="2.159" y1="-4.445" x2="2.921" y2="-3.175" layer="51"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.905" layer="51"/>
<rectangle x1="2.159" y1="5.715" x2="2.921" y2="6.985" layer="51"/>
<rectangle x1="-2.921" y1="-37.465" x2="-2.159" y2="-36.195" layer="51"/>
<rectangle x1="-2.921" y1="-32.385" x2="-2.159" y2="-31.115" layer="51"/>
<rectangle x1="-2.921" y1="-27.305" x2="-2.159" y2="-26.035" layer="51"/>
<rectangle x1="-2.921" y1="-22.225" x2="-2.159" y2="-20.955" layer="51"/>
<rectangle x1="2.159" y1="-37.465" x2="2.921" y2="-36.195" layer="51"/>
<rectangle x1="2.159" y1="-32.385" x2="2.921" y2="-31.115" layer="51"/>
<rectangle x1="2.159" y1="-27.305" x2="2.921" y2="-26.035" layer="51"/>
<rectangle x1="2.159" y1="-22.225" x2="2.921" y2="-20.955" layer="51"/>
<rectangle x1="-2.921" y1="-40.005" x2="-2.159" y2="-38.735" layer="51"/>
<rectangle x1="-2.921" y1="-34.925" x2="-2.159" y2="-33.655" layer="51"/>
<rectangle x1="-2.921" y1="-29.845" x2="-2.159" y2="-28.575" layer="51"/>
<rectangle x1="-2.921" y1="-24.765" x2="-2.159" y2="-23.495" layer="51"/>
<rectangle x1="2.159" y1="-40.005" x2="2.921" y2="-38.735" layer="51"/>
<rectangle x1="2.159" y1="-34.925" x2="2.921" y2="-33.655" layer="51"/>
<rectangle x1="2.159" y1="-29.845" x2="2.921" y2="-28.575" layer="51"/>
<rectangle x1="2.159" y1="-24.765" x2="2.921" y2="-23.495" layer="51"/>
<hole x="-0.3048" y="45.0088" drill="2.794"/>
<hole x="-0.3048" y="-45.0088" drill="2.794"/>
</package>
</packages>
<symbols>
<symbol name="F32AC">
<wire x1="3.81" y1="-43.18" x2="-3.81" y2="-43.18" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="40.64" x2="-3.81" y2="-43.18" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="40.64" x2="3.81" y2="40.64" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-43.18" x2="3.81" y2="40.64" width="0.4064" layer="94"/>
<wire x1="1.651" y1="-41.529" x2="1.651" y2="-39.751" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-38.989" x2="1.651" y2="-37.211" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-36.449" x2="1.651" y2="-34.671" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-33.909" x2="1.651" y2="-32.131" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-39.751" x2="-1.651" y2="-41.529" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-37.211" x2="-1.651" y2="-38.989" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-34.671" x2="-1.651" y2="-36.449" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-32.131" x2="-1.651" y2="-33.909" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-29.591" x2="-1.651" y2="-31.369" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-27.051" x2="-1.651" y2="-28.829" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-24.511" x2="-1.651" y2="-26.289" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-21.971" x2="-1.651" y2="-23.749" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-19.431" x2="-1.651" y2="-21.209" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-16.891" x2="-1.651" y2="-18.669" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-31.369" x2="1.651" y2="-29.591" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-28.829" x2="1.651" y2="-27.051" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-26.289" x2="1.651" y2="-24.511" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-23.749" x2="1.651" y2="-21.971" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-21.209" x2="1.651" y2="-19.431" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-18.669" x2="1.651" y2="-16.891" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-16.129" x2="1.651" y2="-14.351" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-13.589" x2="1.651" y2="-11.811" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-11.049" x2="1.651" y2="-9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-8.509" x2="1.651" y2="-6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-5.969" x2="1.651" y2="-4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-14.351" x2="-1.651" y2="-16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-11.811" x2="-1.651" y2="-13.589" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-9.271" x2="-1.651" y2="-11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-6.731" x2="-1.651" y2="-8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-4.191" x2="-1.651" y2="-5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-1.651" x2="-1.651" y2="-3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="-0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="3.429" x2="-1.651" y2="1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="5.969" x2="-1.651" y2="4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="8.509" x2="-1.651" y2="6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="11.049" x2="-1.651" y2="9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-3.429" x2="1.651" y2="-1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="-0.889" x2="1.651" y2="0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="1.651" x2="1.651" y2="3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="4.191" x2="1.651" y2="5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="6.731" x2="1.651" y2="8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="9.271" x2="1.651" y2="11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="11.811" x2="1.651" y2="13.589" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="14.351" x2="1.651" y2="16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="16.891" x2="1.651" y2="18.669" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="19.431" x2="1.651" y2="21.209" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="21.971" x2="1.651" y2="23.749" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="13.589" x2="-1.651" y2="11.811" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="16.129" x2="-1.651" y2="14.351" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="18.669" x2="-1.651" y2="16.891" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="21.209" x2="-1.651" y2="19.431" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="23.749" x2="-1.651" y2="21.971" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="24.511" x2="1.651" y2="26.289" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="27.051" x2="1.651" y2="28.829" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="29.591" x2="1.651" y2="31.369" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="32.131" x2="1.651" y2="33.909" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="34.671" x2="1.651" y2="36.449" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="26.289" x2="-1.651" y2="24.511" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="28.829" x2="-1.651" y2="27.051" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="31.369" x2="-1.651" y2="29.591" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="33.909" x2="-1.651" y2="32.131" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="36.449" x2="-1.651" y2="34.671" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="38.989" x2="-1.651" y2="37.211" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.651" y1="37.211" x2="1.651" y2="38.989" width="0.254" layer="94" curve="180" cap="flat"/>
<text x="-3.81" y="-45.72" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="41.402" size="1.778" layer="95">&gt;NAME</text>
<pin name="C1" x="7.62" y="38.1" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C2" x="7.62" y="35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C3" x="7.62" y="33.02" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C4" x="7.62" y="30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C5" x="7.62" y="27.94" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C6" x="7.62" y="25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C7" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C8" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C9" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C10" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C11" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C12" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C13" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C14" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C15" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C16" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C17" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C18" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C19" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C20" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C21" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C22" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C23" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C24" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C25" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C26" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C27" x="7.62" y="-27.94" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C28" x="7.62" y="-30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C29" x="7.62" y="-33.02" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C30" x="7.62" y="-35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C31" x="7.62" y="-38.1" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="C32" x="7.62" y="-40.64" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="A1" x="-7.62" y="38.1" visible="pad" length="middle" direction="pas"/>
<pin name="A2" x="-7.62" y="35.56" visible="pad" length="middle" direction="pas"/>
<pin name="A3" x="-7.62" y="33.02" visible="pad" length="middle" direction="pas"/>
<pin name="A4" x="-7.62" y="30.48" visible="pad" length="middle" direction="pas"/>
<pin name="A5" x="-7.62" y="27.94" visible="pad" length="middle" direction="pas"/>
<pin name="A6" x="-7.62" y="25.4" visible="pad" length="middle" direction="pas"/>
<pin name="A7" x="-7.62" y="22.86" visible="pad" length="middle" direction="pas"/>
<pin name="A8" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas"/>
<pin name="A9" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas"/>
<pin name="A10" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas"/>
<pin name="A11" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas"/>
<pin name="A12" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas"/>
<pin name="A13" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="A14" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="A15" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="A16" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="A17" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="A18" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="A19" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="A20" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="A21" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas"/>
<pin name="A22" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas"/>
<pin name="A23" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas"/>
<pin name="A24" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas"/>
<pin name="A25" x="-7.62" y="-22.86" visible="pad" length="middle" direction="pas"/>
<pin name="A26" x="-7.62" y="-25.4" visible="pad" length="middle" direction="pas"/>
<pin name="A27" x="-7.62" y="-27.94" visible="pad" length="middle" direction="pas"/>
<pin name="A28" x="-7.62" y="-30.48" visible="pad" length="middle" direction="pas"/>
<pin name="A29" x="-7.62" y="-33.02" visible="pad" length="middle" direction="pas"/>
<pin name="A30" x="-7.62" y="-35.56" visible="pad" length="middle" direction="pas"/>
<pin name="A31" x="-7.62" y="-38.1" visible="pad" length="middle" direction="pas"/>
<pin name="A32" x="-7.62" y="-40.64" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FAC64S" prefix="X">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
female, 64 pins, block, type C, rows AC, grid 5.08 mm</description>
<gates>
<gate name="G$1" symbol="F32AC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FAC64S">
<connects>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A16" pad="A16"/>
<connect gate="G$1" pin="A17" pad="A17"/>
<connect gate="G$1" pin="A18" pad="A18"/>
<connect gate="G$1" pin="A19" pad="A19"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A20" pad="A20"/>
<connect gate="G$1" pin="A21" pad="A21"/>
<connect gate="G$1" pin="A22" pad="A22"/>
<connect gate="G$1" pin="A23" pad="A23"/>
<connect gate="G$1" pin="A24" pad="A24"/>
<connect gate="G$1" pin="A25" pad="A25"/>
<connect gate="G$1" pin="A26" pad="A26"/>
<connect gate="G$1" pin="A27" pad="A27"/>
<connect gate="G$1" pin="A28" pad="A28"/>
<connect gate="G$1" pin="A29" pad="A29"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A30" pad="A30"/>
<connect gate="G$1" pin="A31" pad="A31"/>
<connect gate="G$1" pin="A32" pad="A32"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="C1" pad="C1"/>
<connect gate="G$1" pin="C10" pad="C10"/>
<connect gate="G$1" pin="C11" pad="C11"/>
<connect gate="G$1" pin="C12" pad="C12"/>
<connect gate="G$1" pin="C13" pad="C13"/>
<connect gate="G$1" pin="C14" pad="C14"/>
<connect gate="G$1" pin="C15" pad="C15"/>
<connect gate="G$1" pin="C16" pad="C16"/>
<connect gate="G$1" pin="C17" pad="C17"/>
<connect gate="G$1" pin="C18" pad="C18"/>
<connect gate="G$1" pin="C19" pad="C19"/>
<connect gate="G$1" pin="C2" pad="C2"/>
<connect gate="G$1" pin="C20" pad="C20"/>
<connect gate="G$1" pin="C21" pad="C21"/>
<connect gate="G$1" pin="C22" pad="C22"/>
<connect gate="G$1" pin="C23" pad="C23"/>
<connect gate="G$1" pin="C24" pad="C24"/>
<connect gate="G$1" pin="C25" pad="C25"/>
<connect gate="G$1" pin="C26" pad="C26"/>
<connect gate="G$1" pin="C27" pad="C27"/>
<connect gate="G$1" pin="C28" pad="C28"/>
<connect gate="G$1" pin="C29" pad="C29"/>
<connect gate="G$1" pin="C3" pad="C3"/>
<connect gate="G$1" pin="C30" pad="C30"/>
<connect gate="G$1" pin="C31" pad="C31"/>
<connect gate="G$1" pin="C32" pad="C32"/>
<connect gate="G$1" pin="C4" pad="C4"/>
<connect gate="G$1" pin="C5" pad="C5"/>
<connect gate="G$1" pin="C6" pad="C6"/>
<connect gate="G$1" pin="C7" pad="C7"/>
<connect gate="G$1" pin="C8" pad="C8"/>
<connect gate="G$1" pin="C9" pad="C9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Transputer">
<packages>
<package name="POWERPAD">
<pad name="P$1" x="0" y="0" drill="3.2" diameter="6.4516"/>
</package>
</packages>
<symbols>
<symbol name="POWERPAD">
<pin name="P$1" x="0" y="-2.54" visible="off" length="short" rot="R90"/>
<circle x="0" y="1.905" radius="2.00804375" width="0.254" layer="94"/>
<circle x="0" y="1.905" radius="1.27" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="POWERPAD">
<gates>
<gate name="G$1" symbol="POWERPAD" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="POWERPAD">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA20-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-24.765" y1="2.54" x2="-23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="2.54" x2="-22.86" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.905" x2="-22.225" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="2.54" x2="-20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="2.54" x2="-20.32" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="2.54" x2="-25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="1.905" x2="-19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="2.54" x2="-18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="2.54" x2="-17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="2.54" x2="-15.24" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.905" x2="-14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-1.905" x2="-23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-2.54" x2="-22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-2.54" x2="-22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="1.905" x2="-25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-1.905" x2="-24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="-2.54" x2="-24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-2.54" x2="-19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-2.54" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-2.54" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.905" x2="13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="2.54" x2="15.24" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="1.905" x2="15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="2.54" x2="17.145" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="2.54" x2="17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="18.415" y1="2.54" x2="19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="2.54" x2="20.32" y2="1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="1.905" x2="20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="20.955" y1="2.54" x2="22.225" y2="2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="2.54" x2="22.86" y2="1.905" width="0.1524" layer="21"/>
<wire x1="18.415" y1="2.54" x2="17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="1.905" x2="23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="23.495" y1="2.54" x2="24.765" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-2.54" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-2.54" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-2.54" x2="15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-2.54" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-2.54" x2="20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-2.54" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-2.54" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-2.54" x2="23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-2.54" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="1.905" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="24.765" y1="2.54" x2="25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="24.765" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="-11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-24.13" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="-11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="-8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="-6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="23" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="25" x="6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="-6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="24" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="26" x="6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="27" x="8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="28" x="8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="29" x="11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="31" x="13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="33" x="16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="35" x="19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="37" x="21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="39" x="24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="30" x="11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="32" x="13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="34" x="16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="36" x="19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="38" x="21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="40" x="24.13" y="1.27" drill="1.016" shape="octagon"/>
<text x="-24.638" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-25.4" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="12.7" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="22.86" y="2.921" size="1.27" layer="21" ratio="10">40</text>
<rectangle x1="-21.844" y1="-1.524" x2="-21.336" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="-1.524" x2="-23.876" y2="-1.016" layer="51"/>
<rectangle x1="-19.304" y1="-1.524" x2="-18.796" y2="-1.016" layer="51"/>
<rectangle x1="-14.224" y1="-1.524" x2="-13.716" y2="-1.016" layer="51"/>
<rectangle x1="-16.764" y1="-1.524" x2="-16.256" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="-1.524" x2="-11.176" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="1.016" x2="-23.876" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="1.016" x2="-21.336" y2="1.524" layer="51"/>
<rectangle x1="-19.304" y1="1.016" x2="-18.796" y2="1.524" layer="51"/>
<rectangle x1="-16.764" y1="1.016" x2="-16.256" y2="1.524" layer="51"/>
<rectangle x1="-14.224" y1="1.016" x2="-13.716" y2="1.524" layer="51"/>
<rectangle x1="-11.684" y1="1.016" x2="-11.176" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="13.716" y1="-1.524" x2="14.224" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="-1.524" x2="11.684" y2="-1.016" layer="51"/>
<rectangle x1="16.256" y1="-1.524" x2="16.764" y2="-1.016" layer="51"/>
<rectangle x1="21.336" y1="-1.524" x2="21.844" y2="-1.016" layer="51"/>
<rectangle x1="18.796" y1="-1.524" x2="19.304" y2="-1.016" layer="51"/>
<rectangle x1="23.876" y1="-1.524" x2="24.384" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="1.016" x2="11.684" y2="1.524" layer="51"/>
<rectangle x1="13.716" y1="1.016" x2="14.224" y2="1.524" layer="51"/>
<rectangle x1="16.256" y1="1.016" x2="16.764" y2="1.524" layer="51"/>
<rectangle x1="18.796" y1="1.016" x2="19.304" y2="1.524" layer="51"/>
<rectangle x1="21.336" y1="1.016" x2="21.844" y2="1.524" layer="51"/>
<rectangle x1="23.876" y1="1.016" x2="24.384" y2="1.524" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA20-2">
<wire x1="3.81" y1="-27.94" x2="-3.81" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="2.54" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-25.4" x2="2.54" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-1.27" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-22.86" x2="-1.27" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-25.4" x2="-1.27" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-15.24" x2="-1.27" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="-1.27" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="-1.27" y2="15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-1.27" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="25.4" x2="-3.81" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-27.94" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="25.4" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-1.27" y2="17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="-1.27" y2="20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="22.86" x2="-1.27" y2="22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="22.86" x2="2.54" y2="22.86" width="0.6096" layer="94"/>
<text x="-3.81" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="26.162" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="17" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="20" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="21" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="23" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="25" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="22" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="24" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="26" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="27" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="29" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="28" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="30" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="31" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="33" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="32" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="34" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="36" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="38" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="40" x="-7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="35" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="37" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="39" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA20-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA20-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA20-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="DINA4_L" device=""/>
<part name="X1" library="con-vg" deviceset="FAC64S" device=""/>
<part name="X2" library="con-vg" deviceset="FAC64S" device=""/>
<part name="X3" library="con-vg" deviceset="FAC64S" device=""/>
<part name="X4" library="con-vg" deviceset="FAC64S" device=""/>
<part name="X5" library="con-vg" deviceset="FAC64S" device=""/>
<part name="X6" library="con-vg" deviceset="FAC64S" device=""/>
<part name="X7" library="con-vg" deviceset="FAC64S" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="U$3" library="Transputer" deviceset="POWERPAD" device=""/>
<part name="U$4" library="Transputer" deviceset="POWERPAD" device=""/>
<part name="U$5" library="Transputer" deviceset="POWERPAD" device=""/>
<part name="U$6" library="Transputer" deviceset="POWERPAD" device=""/>
<part name="SV1" library="con-lstb" deviceset="MA20-2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="162.56" y="0"/>
<instance part="X1" gate="G$1" x="27.94" y="111.76"/>
<instance part="X2" gate="G$1" x="60.96" y="111.76"/>
<instance part="X3" gate="G$1" x="93.98" y="111.76"/>
<instance part="X4" gate="G$1" x="127" y="111.76"/>
<instance part="X5" gate="G$1" x="160.02" y="111.76"/>
<instance part="X6" gate="G$1" x="193.04" y="111.76"/>
<instance part="X7" gate="G$1" x="226.06" y="111.76"/>
<instance part="GND1" gate="1" x="17.78" y="58.42"/>
<instance part="P+1" gate="VCC" x="17.78" y="162.56"/>
<instance part="P+2" gate="VCC" x="55.88" y="48.26"/>
<instance part="GND2" gate="1" x="55.88" y="12.7"/>
<instance part="P+3" gate="VCC" x="86.36" y="43.18"/>
<instance part="GND3" gate="1" x="134.62" y="12.7"/>
<instance part="U$3" gate="G$1" x="55.88" y="22.86"/>
<instance part="U$4" gate="G$1" x="63.5" y="22.86"/>
<instance part="U$5" gate="G$1" x="55.88" y="38.1" rot="R180"/>
<instance part="U$6" gate="G$1" x="63.5" y="38.1" rot="R180"/>
<instance part="SV1" gate="G$1" x="109.22" y="27.94" rot="R90"/>
</instances>
<busses>
<bus name="IN[0..1],OUT[0..1],ERRIN,ERROUT,ANLIN,RESIN,LSPINA,LSPINB,TEST">
<segment>
<wire x1="256.54" y1="132.08" x2="256.54" y2="55.88" width="0.762" layer="92"/>
<wire x1="256.54" y1="55.88" x2="254" y2="53.34" width="0.762" layer="92"/>
<wire x1="254" y1="53.34" x2="101.6" y2="53.34" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="IO[0..2],OI[0..2]">
<segment>
<wire x1="246.38" y1="119.38" x2="246.38" y2="165.1" width="0.762" layer="92"/>
<wire x1="246.38" y1="165.1" x2="243.84" y2="167.64" width="0.762" layer="92"/>
<wire x1="243.84" y1="167.64" x2="10.16" y2="167.64" width="0.762" layer="92"/>
<wire x1="10.16" y1="167.64" x2="7.62" y2="165.1" width="0.762" layer="92"/>
<wire x1="7.62" y1="165.1" x2="7.62" y2="124.46" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="N$7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C7"/>
<pinref part="X2" gate="G$1" pin="A7"/>
<wire x1="53.34" y1="134.62" x2="35.56" y2="134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C8"/>
<pinref part="X2" gate="G$1" pin="A8"/>
<wire x1="53.34" y1="132.08" x2="35.56" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C9"/>
<pinref part="X2" gate="G$1" pin="A9"/>
<wire x1="53.34" y1="129.54" x2="35.56" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C10"/>
<pinref part="X2" gate="G$1" pin="A10"/>
<wire x1="53.34" y1="127" x2="35.56" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C11"/>
<pinref part="X2" gate="G$1" pin="A11"/>
<wire x1="53.34" y1="124.46" x2="35.56" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C12"/>
<pinref part="X2" gate="G$1" pin="A12"/>
<wire x1="53.34" y1="121.92" x2="35.56" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C13"/>
<pinref part="X2" gate="G$1" pin="A13"/>
<wire x1="53.34" y1="119.38" x2="35.56" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C14"/>
<pinref part="X2" gate="G$1" pin="A14"/>
<wire x1="53.34" y1="116.84" x2="35.56" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C15"/>
<pinref part="X2" gate="G$1" pin="A15"/>
<wire x1="53.34" y1="114.3" x2="35.56" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C16"/>
<pinref part="X2" gate="G$1" pin="A16"/>
<wire x1="53.34" y1="111.76" x2="35.56" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C21"/>
<pinref part="X2" gate="G$1" pin="A21"/>
<wire x1="53.34" y1="99.06" x2="35.56" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C22"/>
<pinref part="X2" gate="G$1" pin="A22"/>
<wire x1="53.34" y1="96.52" x2="35.56" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C23"/>
<pinref part="X2" gate="G$1" pin="A23"/>
<wire x1="53.34" y1="93.98" x2="35.56" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C24"/>
<pinref part="X2" gate="G$1" pin="A24"/>
<wire x1="53.34" y1="91.44" x2="35.56" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C25"/>
<pinref part="X2" gate="G$1" pin="A25"/>
<wire x1="53.34" y1="88.9" x2="35.56" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C26"/>
<pinref part="X2" gate="G$1" pin="A26"/>
<wire x1="53.34" y1="86.36" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A7"/>
<wire x1="86.36" y1="134.62" x2="68.58" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C7"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A8"/>
<wire x1="86.36" y1="132.08" x2="68.58" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C8"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A9"/>
<wire x1="86.36" y1="129.54" x2="68.58" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C9"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A10"/>
<wire x1="86.36" y1="127" x2="68.58" y2="127" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C10"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A11"/>
<wire x1="86.36" y1="124.46" x2="68.58" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C11"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A12"/>
<wire x1="86.36" y1="121.92" x2="68.58" y2="121.92" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C12"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A13"/>
<wire x1="86.36" y1="119.38" x2="68.58" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C13"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A14"/>
<wire x1="86.36" y1="116.84" x2="68.58" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C14"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A15"/>
<wire x1="86.36" y1="114.3" x2="68.58" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C15"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A16"/>
<wire x1="86.36" y1="111.76" x2="68.58" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C16"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A21"/>
<wire x1="86.36" y1="99.06" x2="68.58" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C21"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A22"/>
<wire x1="86.36" y1="96.52" x2="68.58" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C22"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A23"/>
<wire x1="86.36" y1="93.98" x2="68.58" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C23"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A24"/>
<wire x1="86.36" y1="91.44" x2="68.58" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C24"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A25"/>
<wire x1="86.36" y1="88.9" x2="68.58" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C25"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A26"/>
<wire x1="86.36" y1="86.36" x2="68.58" y2="86.36" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C26"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A7"/>
<wire x1="119.38" y1="134.62" x2="101.6" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C7"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A8"/>
<wire x1="119.38" y1="132.08" x2="101.6" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C8"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A9"/>
<wire x1="119.38" y1="129.54" x2="101.6" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C9"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A10"/>
<wire x1="119.38" y1="127" x2="101.6" y2="127" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C10"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A11"/>
<wire x1="119.38" y1="124.46" x2="101.6" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C11"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A12"/>
<wire x1="119.38" y1="121.92" x2="101.6" y2="121.92" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C12"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A13"/>
<wire x1="119.38" y1="119.38" x2="101.6" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C13"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A14"/>
<wire x1="119.38" y1="116.84" x2="101.6" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C14"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A15"/>
<wire x1="119.38" y1="114.3" x2="101.6" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C15"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A16"/>
<wire x1="119.38" y1="111.76" x2="101.6" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C16"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A21"/>
<wire x1="119.38" y1="99.06" x2="101.6" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C21"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A22"/>
<wire x1="119.38" y1="96.52" x2="101.6" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C22"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A23"/>
<wire x1="119.38" y1="93.98" x2="101.6" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C23"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A24"/>
<wire x1="119.38" y1="91.44" x2="101.6" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C24"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A25"/>
<wire x1="119.38" y1="88.9" x2="101.6" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C25"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="A26"/>
<wire x1="119.38" y1="86.36" x2="101.6" y2="86.36" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C26"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A7"/>
<wire x1="152.4" y1="134.62" x2="134.62" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C7"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A8"/>
<wire x1="152.4" y1="132.08" x2="134.62" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C8"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A9"/>
<wire x1="152.4" y1="129.54" x2="134.62" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C9"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A10"/>
<wire x1="152.4" y1="127" x2="134.62" y2="127" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C10"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A11"/>
<wire x1="152.4" y1="124.46" x2="134.62" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C11"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A12"/>
<wire x1="152.4" y1="121.92" x2="134.62" y2="121.92" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C12"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A13"/>
<wire x1="152.4" y1="119.38" x2="134.62" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C13"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A14"/>
<wire x1="152.4" y1="116.84" x2="134.62" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C14"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A15"/>
<wire x1="152.4" y1="114.3" x2="134.62" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C15"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A16"/>
<wire x1="152.4" y1="111.76" x2="134.62" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C16"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A21"/>
<wire x1="152.4" y1="99.06" x2="134.62" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C21"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A22"/>
<wire x1="152.4" y1="96.52" x2="134.62" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C22"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A23"/>
<wire x1="152.4" y1="93.98" x2="134.62" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C23"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A24"/>
<wire x1="152.4" y1="91.44" x2="134.62" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C24"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A25"/>
<wire x1="152.4" y1="88.9" x2="134.62" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C25"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="A26"/>
<wire x1="152.4" y1="86.36" x2="134.62" y2="86.36" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C26"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A7"/>
<wire x1="185.42" y1="134.62" x2="167.64" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C7"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A8"/>
<wire x1="185.42" y1="132.08" x2="167.64" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C8"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A9"/>
<wire x1="185.42" y1="129.54" x2="167.64" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C9"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A10"/>
<wire x1="185.42" y1="127" x2="167.64" y2="127" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C10"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A11"/>
<wire x1="185.42" y1="124.46" x2="167.64" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C11"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A12"/>
<wire x1="185.42" y1="121.92" x2="167.64" y2="121.92" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C12"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A13"/>
<wire x1="185.42" y1="119.38" x2="167.64" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C13"/>
</segment>
</net>
<net name="N$76" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A14"/>
<wire x1="185.42" y1="116.84" x2="167.64" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C14"/>
</segment>
</net>
<net name="N$77" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A15"/>
<wire x1="185.42" y1="114.3" x2="167.64" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C15"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A16"/>
<wire x1="185.42" y1="111.76" x2="167.64" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C16"/>
</segment>
</net>
<net name="N$79" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A21"/>
<wire x1="185.42" y1="99.06" x2="167.64" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C21"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A22"/>
<wire x1="185.42" y1="96.52" x2="167.64" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C22"/>
</segment>
</net>
<net name="N$81" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A23"/>
<wire x1="185.42" y1="93.98" x2="167.64" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C23"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A24"/>
<wire x1="185.42" y1="91.44" x2="167.64" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C24"/>
</segment>
</net>
<net name="N$83" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A25"/>
<wire x1="185.42" y1="88.9" x2="167.64" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C25"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="A26"/>
<wire x1="185.42" y1="86.36" x2="167.64" y2="86.36" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C26"/>
</segment>
</net>
<net name="N$85" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A7"/>
<wire x1="218.44" y1="134.62" x2="200.66" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C7"/>
</segment>
</net>
<net name="N$86" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A8"/>
<wire x1="218.44" y1="132.08" x2="200.66" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C8"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A9"/>
<wire x1="218.44" y1="129.54" x2="200.66" y2="129.54" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C9"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A10"/>
<wire x1="218.44" y1="127" x2="200.66" y2="127" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C10"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A11"/>
<wire x1="218.44" y1="124.46" x2="200.66" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C11"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A12"/>
<wire x1="218.44" y1="121.92" x2="200.66" y2="121.92" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C12"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A13"/>
<wire x1="218.44" y1="119.38" x2="200.66" y2="119.38" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C13"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A14"/>
<wire x1="218.44" y1="116.84" x2="200.66" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C14"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A15"/>
<wire x1="218.44" y1="114.3" x2="200.66" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C15"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A16"/>
<wire x1="218.44" y1="111.76" x2="200.66" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C16"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A21"/>
<wire x1="218.44" y1="99.06" x2="200.66" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C21"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A22"/>
<wire x1="218.44" y1="96.52" x2="200.66" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C22"/>
</segment>
</net>
<net name="N$97" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A23"/>
<wire x1="218.44" y1="93.98" x2="200.66" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C23"/>
</segment>
</net>
<net name="N$98" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A24"/>
<wire x1="218.44" y1="91.44" x2="200.66" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C24"/>
</segment>
</net>
<net name="N$99" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A25"/>
<wire x1="218.44" y1="88.9" x2="200.66" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C25"/>
</segment>
</net>
<net name="N$100" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="A26"/>
<wire x1="218.44" y1="86.36" x2="200.66" y2="86.36" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C26"/>
</segment>
</net>
<net name="IN0" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C7"/>
<wire x1="256.54" y1="132.08" x2="254" y2="134.62" width="0.1524" layer="91"/>
<wire x1="254" y1="134.62" x2="233.68" y2="134.62" width="0.1524" layer="91"/>
<label x="254" y="134.62" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="101.6" y1="53.34" x2="99.06" y2="50.8" width="0.1524" layer="91"/>
<wire x1="99.06" y1="35.56" x2="99.06" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="29"/>
<label x="99.06" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="OUT0" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C8"/>
<wire x1="256.54" y1="129.54" x2="254" y2="132.08" width="0.1524" layer="91"/>
<wire x1="254" y1="132.08" x2="233.68" y2="132.08" width="0.1524" layer="91"/>
<label x="254" y="132.08" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="104.14" y1="53.34" x2="101.6" y2="50.8" width="0.1524" layer="91"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="27"/>
<label x="101.6" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="IN1" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C15"/>
<wire x1="256.54" y1="111.76" x2="254" y2="114.3" width="0.1524" layer="91"/>
<wire x1="254" y1="114.3" x2="233.68" y2="114.3" width="0.1524" layer="91"/>
<label x="254" y="114.3" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="106.68" y1="53.34" x2="104.14" y2="50.8" width="0.1524" layer="91"/>
<wire x1="104.14" y1="35.56" x2="104.14" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="25"/>
<label x="104.14" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="OUT1" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C16"/>
<wire x1="256.54" y1="109.22" x2="254" y2="111.76" width="0.1524" layer="91"/>
<wire x1="254" y1="111.76" x2="233.68" y2="111.76" width="0.1524" layer="91"/>
<label x="254" y="111.76" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="109.22" y1="53.34" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<wire x1="106.68" y1="35.56" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="23"/>
<label x="106.68" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="ERROUT" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C21"/>
<wire x1="256.54" y1="96.52" x2="254" y2="99.06" width="0.1524" layer="91"/>
<wire x1="254" y1="99.06" x2="233.68" y2="99.06" width="0.1524" layer="91"/>
<label x="254" y="99.06" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="111.76" y1="53.34" x2="109.22" y2="50.8" width="0.1524" layer="91"/>
<wire x1="109.22" y1="50.8" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="21"/>
<label x="109.22" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="ANLIN" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C22"/>
<wire x1="256.54" y1="93.98" x2="254" y2="96.52" width="0.1524" layer="91"/>
<wire x1="254" y1="96.52" x2="233.68" y2="96.52" width="0.1524" layer="91"/>
<label x="254" y="96.52" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="114.3" y1="53.34" x2="111.76" y2="50.8" width="0.1524" layer="91"/>
<wire x1="111.76" y1="50.8" x2="111.76" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="19"/>
<label x="111.76" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="RESIN" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C23"/>
<wire x1="256.54" y1="91.44" x2="254" y2="93.98" width="0.1524" layer="91"/>
<wire x1="254" y1="93.98" x2="233.68" y2="93.98" width="0.1524" layer="91"/>
<label x="254" y="93.98" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="116.84" y1="53.34" x2="114.3" y2="50.8" width="0.1524" layer="91"/>
<wire x1="114.3" y1="50.8" x2="114.3" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="17"/>
<label x="114.3" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="LSPINA" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C24"/>
<wire x1="256.54" y1="88.9" x2="254" y2="91.44" width="0.1524" layer="91"/>
<wire x1="254" y1="91.44" x2="233.68" y2="91.44" width="0.1524" layer="91"/>
<label x="254" y="91.44" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="119.38" y1="53.34" x2="116.84" y2="50.8" width="0.1524" layer="91"/>
<wire x1="116.84" y1="50.8" x2="116.84" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="15"/>
<label x="116.84" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="LSPINB" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C25"/>
<wire x1="256.54" y1="86.36" x2="254" y2="88.9" width="0.1524" layer="91"/>
<wire x1="254" y1="88.9" x2="233.68" y2="88.9" width="0.1524" layer="91"/>
<label x="254" y="88.9" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="121.92" y1="53.34" x2="119.38" y2="50.8" width="0.1524" layer="91"/>
<wire x1="119.38" y1="50.8" x2="119.38" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="13"/>
<label x="119.38" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="TEST" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="C26"/>
<wire x1="256.54" y1="83.82" x2="254" y2="86.36" width="0.1524" layer="91"/>
<wire x1="254" y1="86.36" x2="233.68" y2="86.36" width="0.1524" layer="91"/>
<label x="254" y="86.36" size="1.27" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="124.46" y1="53.34" x2="121.92" y2="50.8" width="0.1524" layer="91"/>
<wire x1="121.92" y1="50.8" x2="121.92" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="11"/>
<label x="121.92" y="50.8" size="1.27" layer="95" rot="MR270"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C2"/>
<pinref part="X1" gate="G$1" pin="C1"/>
<wire x1="38.1" y1="147.32" x2="35.56" y2="147.32" width="0.1524" layer="91"/>
<wire x1="38.1" y1="149.86" x2="35.56" y2="149.86" width="0.1524" layer="91"/>
<wire x1="38.1" y1="147.32" x2="38.1" y2="149.86" width="0.1524" layer="91"/>
<junction x="38.1" y="149.86"/>
<wire x1="38.1" y1="149.86" x2="38.1" y2="157.48" width="0.1524" layer="91"/>
<wire x1="38.1" y1="157.48" x2="17.78" y2="157.48" width="0.1524" layer="91"/>
<wire x1="17.78" y1="157.48" x2="17.78" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="A2"/>
<wire x1="17.78" y1="149.86" x2="17.78" y2="147.32" width="0.1524" layer="91"/>
<wire x1="17.78" y1="147.32" x2="20.32" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="A1"/>
<wire x1="17.78" y1="149.86" x2="20.32" y2="149.86" width="0.1524" layer="91"/>
<junction x="17.78" y="149.86"/>
<wire x1="38.1" y1="157.48" x2="50.8" y2="157.48" width="0.1524" layer="91"/>
<junction x="38.1" y="157.48"/>
<pinref part="X2" gate="G$1" pin="A2"/>
<wire x1="53.34" y1="147.32" x2="50.8" y2="147.32" width="0.1524" layer="91"/>
<wire x1="50.8" y1="147.32" x2="50.8" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A1"/>
<wire x1="50.8" y1="149.86" x2="50.8" y2="157.48" width="0.1524" layer="91"/>
<wire x1="53.34" y1="149.86" x2="50.8" y2="149.86" width="0.1524" layer="91"/>
<junction x="50.8" y="149.86"/>
<wire x1="50.8" y1="157.48" x2="71.12" y2="157.48" width="0.1524" layer="91"/>
<junction x="50.8" y="157.48"/>
<wire x1="71.12" y1="157.48" x2="71.12" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C2"/>
<wire x1="71.12" y1="149.86" x2="71.12" y2="147.32" width="0.1524" layer="91"/>
<wire x1="71.12" y1="147.32" x2="68.58" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C1"/>
<wire x1="71.12" y1="149.86" x2="68.58" y2="149.86" width="0.1524" layer="91"/>
<junction x="71.12" y="149.86"/>
<wire x1="71.12" y1="157.48" x2="83.82" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A2"/>
<wire x1="86.36" y1="147.32" x2="83.82" y2="147.32" width="0.1524" layer="91"/>
<wire x1="83.82" y1="147.32" x2="83.82" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A1"/>
<wire x1="83.82" y1="149.86" x2="83.82" y2="157.48" width="0.1524" layer="91"/>
<wire x1="86.36" y1="149.86" x2="83.82" y2="149.86" width="0.1524" layer="91"/>
<junction x="83.82" y="149.86"/>
<wire x1="83.82" y1="157.48" x2="104.14" y2="157.48" width="0.1524" layer="91"/>
<junction x="83.82" y="157.48"/>
<wire x1="104.14" y1="157.48" x2="104.14" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C2"/>
<wire x1="104.14" y1="149.86" x2="104.14" y2="147.32" width="0.1524" layer="91"/>
<wire x1="104.14" y1="147.32" x2="101.6" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C1"/>
<wire x1="104.14" y1="149.86" x2="101.6" y2="149.86" width="0.1524" layer="91"/>
<junction x="104.14" y="149.86"/>
<junction x="71.12" y="157.48"/>
<wire x1="104.14" y1="157.48" x2="116.84" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A2"/>
<wire x1="119.38" y1="147.32" x2="116.84" y2="147.32" width="0.1524" layer="91"/>
<wire x1="116.84" y1="147.32" x2="116.84" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A1"/>
<wire x1="116.84" y1="149.86" x2="116.84" y2="157.48" width="0.1524" layer="91"/>
<wire x1="119.38" y1="149.86" x2="116.84" y2="149.86" width="0.1524" layer="91"/>
<junction x="116.84" y="149.86"/>
<wire x1="116.84" y1="157.48" x2="137.16" y2="157.48" width="0.1524" layer="91"/>
<junction x="116.84" y="157.48"/>
<wire x1="137.16" y1="157.48" x2="137.16" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C2"/>
<wire x1="137.16" y1="149.86" x2="137.16" y2="147.32" width="0.1524" layer="91"/>
<wire x1="137.16" y1="147.32" x2="134.62" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C1"/>
<wire x1="137.16" y1="149.86" x2="134.62" y2="149.86" width="0.1524" layer="91"/>
<junction x="137.16" y="149.86"/>
<junction x="104.14" y="157.48"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="17.78" y1="160.02" x2="17.78" y2="157.48" width="0.1524" layer="91"/>
<junction x="17.78" y="157.48"/>
<wire x1="137.16" y1="157.48" x2="149.86" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="A2"/>
<wire x1="152.4" y1="147.32" x2="149.86" y2="147.32" width="0.1524" layer="91"/>
<wire x1="149.86" y1="147.32" x2="149.86" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="A1"/>
<wire x1="149.86" y1="149.86" x2="149.86" y2="157.48" width="0.1524" layer="91"/>
<wire x1="152.4" y1="149.86" x2="149.86" y2="149.86" width="0.1524" layer="91"/>
<junction x="149.86" y="149.86"/>
<wire x1="149.86" y1="157.48" x2="170.18" y2="157.48" width="0.1524" layer="91"/>
<junction x="149.86" y="157.48"/>
<wire x1="170.18" y1="157.48" x2="170.18" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C2"/>
<wire x1="170.18" y1="149.86" x2="170.18" y2="147.32" width="0.1524" layer="91"/>
<wire x1="170.18" y1="147.32" x2="167.64" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C1"/>
<wire x1="170.18" y1="149.86" x2="167.64" y2="149.86" width="0.1524" layer="91"/>
<junction x="170.18" y="149.86"/>
<wire x1="170.18" y1="157.48" x2="182.88" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A2"/>
<wire x1="185.42" y1="147.32" x2="182.88" y2="147.32" width="0.1524" layer="91"/>
<wire x1="182.88" y1="147.32" x2="182.88" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A1"/>
<wire x1="182.88" y1="149.86" x2="182.88" y2="157.48" width="0.1524" layer="91"/>
<wire x1="185.42" y1="149.86" x2="182.88" y2="149.86" width="0.1524" layer="91"/>
<junction x="182.88" y="149.86"/>
<wire x1="182.88" y1="157.48" x2="203.2" y2="157.48" width="0.1524" layer="91"/>
<junction x="182.88" y="157.48"/>
<wire x1="203.2" y1="157.48" x2="203.2" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C2"/>
<wire x1="203.2" y1="149.86" x2="203.2" y2="147.32" width="0.1524" layer="91"/>
<wire x1="203.2" y1="147.32" x2="200.66" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C1"/>
<wire x1="203.2" y1="149.86" x2="200.66" y2="149.86" width="0.1524" layer="91"/>
<junction x="203.2" y="149.86"/>
<junction x="170.18" y="157.48"/>
<wire x1="203.2" y1="157.48" x2="215.9" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A2"/>
<wire x1="218.44" y1="147.32" x2="215.9" y2="147.32" width="0.1524" layer="91"/>
<wire x1="215.9" y1="147.32" x2="215.9" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A1"/>
<wire x1="215.9" y1="149.86" x2="215.9" y2="157.48" width="0.1524" layer="91"/>
<wire x1="218.44" y1="149.86" x2="215.9" y2="149.86" width="0.1524" layer="91"/>
<junction x="215.9" y="149.86"/>
<wire x1="215.9" y1="157.48" x2="236.22" y2="157.48" width="0.1524" layer="91"/>
<junction x="215.9" y="157.48"/>
<wire x1="236.22" y1="157.48" x2="236.22" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="C2"/>
<wire x1="236.22" y1="149.86" x2="236.22" y2="147.32" width="0.1524" layer="91"/>
<wire x1="236.22" y1="147.32" x2="233.68" y2="147.32" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="C1"/>
<wire x1="236.22" y1="149.86" x2="233.68" y2="149.86" width="0.1524" layer="91"/>
<junction x="236.22" y="149.86"/>
<junction x="203.2" y="157.48"/>
<junction x="137.16" y="157.48"/>
</segment>
<segment>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="55.88" y1="40.64" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="P$1"/>
<pinref part="U$6" gate="G$1" pin="P$1"/>
<wire x1="55.88" y1="43.18" x2="55.88" y2="45.72" width="0.1524" layer="91"/>
<wire x1="55.88" y1="43.18" x2="63.5" y2="43.18" width="0.1524" layer="91"/>
<wire x1="63.5" y1="43.18" x2="63.5" y2="40.64" width="0.1524" layer="91"/>
<junction x="55.88" y="43.18"/>
</segment>
<segment>
<wire x1="96.52" y1="35.56" x2="96.52" y2="38.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="38.1" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<wire x1="93.98" y1="38.1" x2="91.44" y2="38.1" width="0.1524" layer="91"/>
<wire x1="91.44" y1="38.1" x2="88.9" y2="38.1" width="0.1524" layer="91"/>
<wire x1="88.9" y1="38.1" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<wire x1="86.36" y1="38.1" x2="86.36" y2="40.64" width="0.1524" layer="91"/>
<wire x1="86.36" y1="35.56" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<junction x="86.36" y="38.1"/>
<wire x1="88.9" y1="35.56" x2="88.9" y2="38.1" width="0.1524" layer="91"/>
<junction x="88.9" y="38.1"/>
<wire x1="91.44" y1="35.56" x2="91.44" y2="38.1" width="0.1524" layer="91"/>
<junction x="91.44" y="38.1"/>
<wire x1="93.98" y1="35.56" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<junction x="93.98" y="38.1"/>
<wire x1="96.52" y1="20.32" x2="96.52" y2="17.78" width="0.1524" layer="91"/>
<wire x1="96.52" y1="17.78" x2="93.98" y2="17.78" width="0.1524" layer="91"/>
<wire x1="93.98" y1="17.78" x2="91.44" y2="17.78" width="0.1524" layer="91"/>
<wire x1="91.44" y1="17.78" x2="88.9" y2="17.78" width="0.1524" layer="91"/>
<wire x1="88.9" y1="17.78" x2="86.36" y2="17.78" width="0.1524" layer="91"/>
<wire x1="86.36" y1="17.78" x2="86.36" y2="20.32" width="0.1524" layer="91"/>
<wire x1="88.9" y1="17.78" x2="88.9" y2="20.32" width="0.1524" layer="91"/>
<junction x="88.9" y="17.78"/>
<wire x1="91.44" y1="17.78" x2="91.44" y2="20.32" width="0.1524" layer="91"/>
<junction x="91.44" y="17.78"/>
<wire x1="93.98" y1="17.78" x2="93.98" y2="20.32" width="0.1524" layer="91"/>
<junction x="93.98" y="17.78"/>
<wire x1="86.36" y1="17.78" x2="78.74" y2="17.78" width="0.1524" layer="91"/>
<junction x="86.36" y="17.78"/>
<wire x1="78.74" y1="17.78" x2="78.74" y2="38.1" width="0.1524" layer="91"/>
<wire x1="78.74" y1="38.1" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="17.78" x2="99.06" y2="17.78" width="0.1524" layer="91"/>
<wire x1="99.06" y1="17.78" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<junction x="96.52" y="17.78"/>
<wire x1="99.06" y1="17.78" x2="101.6" y2="17.78" width="0.1524" layer="91"/>
<wire x1="101.6" y1="17.78" x2="101.6" y2="20.32" width="0.1524" layer="91"/>
<junction x="99.06" y="17.78"/>
<wire x1="101.6" y1="17.78" x2="104.14" y2="17.78" width="0.1524" layer="91"/>
<wire x1="104.14" y1="17.78" x2="104.14" y2="20.32" width="0.1524" layer="91"/>
<junction x="101.6" y="17.78"/>
<wire x1="104.14" y1="17.78" x2="106.68" y2="17.78" width="0.1524" layer="91"/>
<wire x1="106.68" y1="17.78" x2="106.68" y2="20.32" width="0.1524" layer="91"/>
<junction x="104.14" y="17.78"/>
<wire x1="106.68" y1="17.78" x2="109.22" y2="17.78" width="0.1524" layer="91"/>
<wire x1="109.22" y1="17.78" x2="109.22" y2="20.32" width="0.1524" layer="91"/>
<junction x="106.68" y="17.78"/>
<pinref part="SV1" gate="G$1" pin="22"/>
<pinref part="SV1" gate="G$1" pin="24"/>
<pinref part="SV1" gate="G$1" pin="26"/>
<pinref part="SV1" gate="G$1" pin="28"/>
<pinref part="SV1" gate="G$1" pin="30"/>
<pinref part="SV1" gate="G$1" pin="31"/>
<pinref part="SV1" gate="G$1" pin="33"/>
<pinref part="SV1" gate="G$1" pin="32"/>
<pinref part="SV1" gate="G$1" pin="34"/>
<pinref part="SV1" gate="G$1" pin="36"/>
<pinref part="SV1" gate="G$1" pin="38"/>
<pinref part="SV1" gate="G$1" pin="40"/>
<pinref part="SV1" gate="G$1" pin="35"/>
<pinref part="SV1" gate="G$1" pin="37"/>
<pinref part="SV1" gate="G$1" pin="39"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="C31"/>
<pinref part="X1" gate="G$1" pin="A31"/>
<wire x1="38.1" y1="73.66" x2="35.56" y2="73.66" width="0.1524" layer="91"/>
<wire x1="20.32" y1="73.66" x2="17.78" y2="73.66" width="0.1524" layer="91"/>
<wire x1="17.78" y1="73.66" x2="17.78" y2="71.12" width="0.1524" layer="91"/>
<wire x1="17.78" y1="71.12" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<wire x1="17.78" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<wire x1="38.1" y1="63.5" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="C32"/>
<wire x1="38.1" y1="71.12" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
<junction x="38.1" y="71.12"/>
<wire x1="38.1" y1="71.12" x2="35.56" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="A32"/>
<wire x1="20.32" y1="71.12" x2="17.78" y2="71.12" width="0.1524" layer="91"/>
<junction x="17.78" y="71.12"/>
<wire x1="38.1" y1="63.5" x2="50.8" y2="63.5" width="0.1524" layer="91"/>
<junction x="38.1" y="63.5"/>
<wire x1="50.8" y1="63.5" x2="50.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A31"/>
<wire x1="50.8" y1="71.12" x2="50.8" y2="73.66" width="0.1524" layer="91"/>
<wire x1="50.8" y1="73.66" x2="53.34" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A32"/>
<wire x1="50.8" y1="71.12" x2="53.34" y2="71.12" width="0.1524" layer="91"/>
<junction x="50.8" y="71.12"/>
<wire x1="50.8" y1="63.5" x2="71.12" y2="63.5" width="0.1524" layer="91"/>
<wire x1="71.12" y1="63.5" x2="71.12" y2="71.12" width="0.1524" layer="91"/>
<junction x="50.8" y="63.5"/>
<pinref part="X2" gate="G$1" pin="C31"/>
<wire x1="71.12" y1="71.12" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
<wire x1="71.12" y1="73.66" x2="68.58" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="C32"/>
<wire x1="71.12" y1="71.12" x2="68.58" y2="71.12" width="0.1524" layer="91"/>
<junction x="71.12" y="71.12"/>
<wire x1="71.12" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="63.5" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A31"/>
<wire x1="83.82" y1="71.12" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<wire x1="83.82" y1="73.66" x2="86.36" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="A32"/>
<wire x1="83.82" y1="71.12" x2="86.36" y2="71.12" width="0.1524" layer="91"/>
<junction x="83.82" y="71.12"/>
<wire x1="83.82" y1="63.5" x2="104.14" y2="63.5" width="0.1524" layer="91"/>
<wire x1="104.14" y1="63.5" x2="104.14" y2="71.12" width="0.1524" layer="91"/>
<junction x="83.82" y="63.5"/>
<pinref part="X3" gate="G$1" pin="C31"/>
<wire x1="104.14" y1="71.12" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<wire x1="104.14" y1="73.66" x2="101.6" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="C32"/>
<wire x1="104.14" y1="71.12" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
<junction x="104.14" y="71.12"/>
<junction x="71.12" y="63.5"/>
<wire x1="104.14" y1="63.5" x2="116.84" y2="63.5" width="0.1524" layer="91"/>
<wire x1="116.84" y1="63.5" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A31"/>
<wire x1="116.84" y1="71.12" x2="116.84" y2="73.66" width="0.1524" layer="91"/>
<wire x1="116.84" y1="73.66" x2="119.38" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A32"/>
<wire x1="116.84" y1="71.12" x2="119.38" y2="71.12" width="0.1524" layer="91"/>
<junction x="116.84" y="71.12"/>
<wire x1="116.84" y1="63.5" x2="137.16" y2="63.5" width="0.1524" layer="91"/>
<wire x1="137.16" y1="63.5" x2="137.16" y2="71.12" width="0.1524" layer="91"/>
<junction x="116.84" y="63.5"/>
<pinref part="X4" gate="G$1" pin="C31"/>
<wire x1="137.16" y1="71.12" x2="137.16" y2="73.66" width="0.1524" layer="91"/>
<wire x1="137.16" y1="73.66" x2="134.62" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="C32"/>
<wire x1="137.16" y1="71.12" x2="134.62" y2="71.12" width="0.1524" layer="91"/>
<junction x="137.16" y="71.12"/>
<junction x="104.14" y="63.5"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="17.78" y1="60.96" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<junction x="17.78" y="63.5"/>
<wire x1="137.16" y1="63.5" x2="149.86" y2="63.5" width="0.1524" layer="91"/>
<wire x1="149.86" y1="63.5" x2="149.86" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="A31"/>
<wire x1="149.86" y1="71.12" x2="149.86" y2="73.66" width="0.1524" layer="91"/>
<wire x1="149.86" y1="73.66" x2="152.4" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="A32"/>
<wire x1="149.86" y1="71.12" x2="152.4" y2="71.12" width="0.1524" layer="91"/>
<junction x="149.86" y="71.12"/>
<wire x1="149.86" y1="63.5" x2="170.18" y2="63.5" width="0.1524" layer="91"/>
<wire x1="170.18" y1="63.5" x2="170.18" y2="71.12" width="0.1524" layer="91"/>
<junction x="149.86" y="63.5"/>
<pinref part="X5" gate="G$1" pin="C31"/>
<wire x1="170.18" y1="71.12" x2="170.18" y2="73.66" width="0.1524" layer="91"/>
<wire x1="170.18" y1="73.66" x2="167.64" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="C32"/>
<wire x1="170.18" y1="71.12" x2="167.64" y2="71.12" width="0.1524" layer="91"/>
<junction x="170.18" y="71.12"/>
<wire x1="170.18" y1="63.5" x2="182.88" y2="63.5" width="0.1524" layer="91"/>
<wire x1="182.88" y1="63.5" x2="182.88" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A31"/>
<wire x1="182.88" y1="71.12" x2="182.88" y2="73.66" width="0.1524" layer="91"/>
<wire x1="182.88" y1="73.66" x2="185.42" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A32"/>
<wire x1="182.88" y1="71.12" x2="185.42" y2="71.12" width="0.1524" layer="91"/>
<junction x="182.88" y="71.12"/>
<wire x1="182.88" y1="63.5" x2="203.2" y2="63.5" width="0.1524" layer="91"/>
<wire x1="203.2" y1="63.5" x2="203.2" y2="71.12" width="0.1524" layer="91"/>
<junction x="182.88" y="63.5"/>
<pinref part="X6" gate="G$1" pin="C31"/>
<wire x1="203.2" y1="71.12" x2="203.2" y2="73.66" width="0.1524" layer="91"/>
<wire x1="203.2" y1="73.66" x2="200.66" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="C32"/>
<wire x1="203.2" y1="71.12" x2="200.66" y2="71.12" width="0.1524" layer="91"/>
<junction x="203.2" y="71.12"/>
<junction x="170.18" y="63.5"/>
<wire x1="203.2" y1="63.5" x2="215.9" y2="63.5" width="0.1524" layer="91"/>
<wire x1="215.9" y1="63.5" x2="215.9" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A31"/>
<wire x1="215.9" y1="71.12" x2="215.9" y2="73.66" width="0.1524" layer="91"/>
<wire x1="215.9" y1="73.66" x2="218.44" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="A32"/>
<wire x1="215.9" y1="71.12" x2="218.44" y2="71.12" width="0.1524" layer="91"/>
<junction x="215.9" y="71.12"/>
<wire x1="215.9" y1="63.5" x2="236.22" y2="63.5" width="0.1524" layer="91"/>
<wire x1="236.22" y1="63.5" x2="236.22" y2="71.12" width="0.1524" layer="91"/>
<junction x="215.9" y="63.5"/>
<pinref part="X7" gate="G$1" pin="C31"/>
<wire x1="236.22" y1="71.12" x2="236.22" y2="73.66" width="0.1524" layer="91"/>
<wire x1="236.22" y1="73.66" x2="233.68" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="C32"/>
<wire x1="236.22" y1="71.12" x2="233.68" y2="71.12" width="0.1524" layer="91"/>
<junction x="236.22" y="71.12"/>
<junction x="203.2" y="63.5"/>
<junction x="137.16" y="63.5"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="55.88" y1="20.32" x2="55.88" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P$1"/>
<pinref part="U$4" gate="G$1" pin="P$1"/>
<wire x1="55.88" y1="17.78" x2="55.88" y2="15.24" width="0.1524" layer="91"/>
<wire x1="55.88" y1="17.78" x2="63.5" y2="17.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="17.78" x2="63.5" y2="20.32" width="0.1524" layer="91"/>
<junction x="55.88" y="17.78"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="111.76" y1="17.78" x2="114.3" y2="17.78" width="0.1524" layer="91"/>
<wire x1="114.3" y1="17.78" x2="116.84" y2="17.78" width="0.1524" layer="91"/>
<wire x1="116.84" y1="17.78" x2="119.38" y2="17.78" width="0.1524" layer="91"/>
<wire x1="119.38" y1="17.78" x2="121.92" y2="17.78" width="0.1524" layer="91"/>
<wire x1="121.92" y1="17.78" x2="124.46" y2="17.78" width="0.1524" layer="91"/>
<wire x1="124.46" y1="17.78" x2="127" y2="17.78" width="0.1524" layer="91"/>
<wire x1="127" y1="17.78" x2="129.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="129.54" y1="17.78" x2="132.08" y2="17.78" width="0.1524" layer="91"/>
<wire x1="132.08" y1="17.78" x2="134.62" y2="17.78" width="0.1524" layer="91"/>
<wire x1="134.62" y1="17.78" x2="134.62" y2="15.24" width="0.1524" layer="91"/>
<wire x1="124.46" y1="35.56" x2="124.46" y2="38.1" width="0.1524" layer="91"/>
<wire x1="124.46" y1="38.1" x2="127" y2="38.1" width="0.1524" layer="91"/>
<wire x1="127" y1="38.1" x2="129.54" y2="38.1" width="0.1524" layer="91"/>
<wire x1="129.54" y1="38.1" x2="132.08" y2="38.1" width="0.1524" layer="91"/>
<wire x1="132.08" y1="38.1" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
<wire x1="134.62" y1="38.1" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
<wire x1="142.24" y1="38.1" x2="142.24" y2="17.78" width="0.1524" layer="91"/>
<wire x1="142.24" y1="17.78" x2="134.62" y2="17.78" width="0.1524" layer="91"/>
<junction x="134.62" y="17.78"/>
<wire x1="127" y1="35.56" x2="127" y2="38.1" width="0.1524" layer="91"/>
<junction x="127" y="38.1"/>
<wire x1="129.54" y1="35.56" x2="129.54" y2="38.1" width="0.1524" layer="91"/>
<junction x="129.54" y="38.1"/>
<wire x1="132.08" y1="35.56" x2="132.08" y2="38.1" width="0.1524" layer="91"/>
<junction x="132.08" y="38.1"/>
<wire x1="134.62" y1="35.56" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
<junction x="134.62" y="38.1"/>
<wire x1="134.62" y1="17.78" x2="134.62" y2="20.32" width="0.1524" layer="91"/>
<wire x1="132.08" y1="17.78" x2="132.08" y2="20.32" width="0.1524" layer="91"/>
<junction x="132.08" y="17.78"/>
<wire x1="129.54" y1="17.78" x2="129.54" y2="20.32" width="0.1524" layer="91"/>
<junction x="129.54" y="17.78"/>
<wire x1="127" y1="17.78" x2="127" y2="20.32" width="0.1524" layer="91"/>
<junction x="127" y="17.78"/>
<wire x1="124.46" y1="17.78" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<junction x="124.46" y="17.78"/>
<wire x1="121.92" y1="17.78" x2="121.92" y2="20.32" width="0.1524" layer="91"/>
<junction x="121.92" y="17.78"/>
<wire x1="119.38" y1="17.78" x2="119.38" y2="20.32" width="0.1524" layer="91"/>
<junction x="119.38" y="17.78"/>
<wire x1="116.84" y1="17.78" x2="116.84" y2="20.32" width="0.1524" layer="91"/>
<junction x="116.84" y="17.78"/>
<wire x1="114.3" y1="17.78" x2="114.3" y2="20.32" width="0.1524" layer="91"/>
<junction x="114.3" y="17.78"/>
<wire x1="111.76" y1="17.78" x2="111.76" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="1"/>
<pinref part="SV1" gate="G$1" pin="3"/>
<pinref part="SV1" gate="G$1" pin="5"/>
<pinref part="SV1" gate="G$1" pin="2"/>
<pinref part="SV1" gate="G$1" pin="4"/>
<pinref part="SV1" gate="G$1" pin="6"/>
<pinref part="SV1" gate="G$1" pin="7"/>
<pinref part="SV1" gate="G$1" pin="9"/>
<pinref part="SV1" gate="G$1" pin="8"/>
<pinref part="SV1" gate="G$1" pin="10"/>
<pinref part="SV1" gate="G$1" pin="12"/>
<pinref part="SV1" gate="G$1" pin="14"/>
<pinref part="SV1" gate="G$1" pin="16"/>
<pinref part="SV1" gate="G$1" pin="18"/>
<pinref part="SV1" gate="G$1" pin="20"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A13"/>
<wire x1="20.32" y1="119.38" x2="12.7" y2="119.38" width="0.1524" layer="91"/>
<wire x1="12.7" y1="119.38" x2="12.7" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="A16"/>
<wire x1="12.7" y1="111.76" x2="20.32" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A14"/>
<wire x1="20.32" y1="116.84" x2="15.24" y2="116.84" width="0.1524" layer="91"/>
<wire x1="15.24" y1="116.84" x2="15.24" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="A15"/>
<wire x1="15.24" y1="114.3" x2="20.32" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OI0" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A7"/>
<wire x1="7.62" y1="137.16" x2="10.16" y2="134.62" width="0.1524" layer="91"/>
<wire x1="10.16" y1="134.62" x2="20.32" y2="134.62" width="0.1524" layer="91"/>
<label x="10.16" y="134.62" size="1.27" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="C9"/>
<wire x1="246.38" y1="132.08" x2="243.84" y2="129.54" width="0.1524" layer="91"/>
<wire x1="243.84" y1="129.54" x2="233.68" y2="129.54" width="0.1524" layer="91"/>
<label x="243.84" y="129.54" size="1.27" layer="95" rot="MR0"/>
</segment>
</net>
<net name="IO0" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A8"/>
<wire x1="7.62" y1="134.62" x2="10.16" y2="132.08" width="0.1524" layer="91"/>
<wire x1="10.16" y1="132.08" x2="20.32" y2="132.08" width="0.1524" layer="91"/>
<label x="10.16" y="132.08" size="1.27" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="C10"/>
<wire x1="246.38" y1="129.54" x2="243.84" y2="127" width="0.1524" layer="91"/>
<wire x1="243.84" y1="127" x2="233.68" y2="127" width="0.1524" layer="91"/>
<label x="243.84" y="127" size="1.27" layer="95" rot="MR0"/>
</segment>
</net>
<net name="OI1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A9"/>
<wire x1="7.62" y1="132.08" x2="10.16" y2="129.54" width="0.1524" layer="91"/>
<wire x1="10.16" y1="129.54" x2="20.32" y2="129.54" width="0.1524" layer="91"/>
<label x="10.16" y="129.54" size="1.27" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="C11"/>
<wire x1="246.38" y1="127" x2="243.84" y2="124.46" width="0.1524" layer="91"/>
<wire x1="243.84" y1="124.46" x2="233.68" y2="124.46" width="0.1524" layer="91"/>
<label x="243.84" y="124.46" size="1.27" layer="95" rot="MR0"/>
</segment>
</net>
<net name="IO1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A10"/>
<wire x1="7.62" y1="129.54" x2="10.16" y2="127" width="0.1524" layer="91"/>
<wire x1="10.16" y1="127" x2="20.32" y2="127" width="0.1524" layer="91"/>
<label x="10.16" y="127" size="1.27" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="C12"/>
<wire x1="246.38" y1="124.46" x2="243.84" y2="121.92" width="0.1524" layer="91"/>
<wire x1="243.84" y1="121.92" x2="233.68" y2="121.92" width="0.1524" layer="91"/>
<label x="243.84" y="121.92" size="1.27" layer="95" rot="MR0"/>
</segment>
</net>
<net name="OI2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A11"/>
<wire x1="7.62" y1="127" x2="10.16" y2="124.46" width="0.1524" layer="91"/>
<wire x1="10.16" y1="124.46" x2="20.32" y2="124.46" width="0.1524" layer="91"/>
<label x="10.16" y="124.46" size="1.27" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="C13"/>
<wire x1="246.38" y1="121.92" x2="243.84" y2="119.38" width="0.1524" layer="91"/>
<wire x1="243.84" y1="119.38" x2="233.68" y2="119.38" width="0.1524" layer="91"/>
<label x="243.84" y="119.38" size="1.27" layer="95" rot="MR0"/>
</segment>
</net>
<net name="IO2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A12"/>
<wire x1="7.62" y1="124.46" x2="10.16" y2="121.92" width="0.1524" layer="91"/>
<wire x1="10.16" y1="121.92" x2="20.32" y2="121.92" width="0.1524" layer="91"/>
<label x="10.16" y="121.92" size="1.27" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="C14"/>
<wire x1="246.38" y1="119.38" x2="243.84" y2="116.84" width="0.1524" layer="91"/>
<wire x1="243.84" y1="116.84" x2="233.68" y2="116.84" width="0.1524" layer="91"/>
<label x="243.84" y="116.84" size="1.27" layer="95" rot="MR0"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
