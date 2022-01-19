<?xml version="1.0" encoding="UTF-8"?>
<core:CityModel xmlns:brid="http://www.opengis.net/citygml/bridge/2.0" xmlns:tran="http://www.opengis.net/citygml/transportation/2.0" xmlns:frn="http://www.opengis.net/citygml/cityfurniture/2.0" xmlns:wtr="http://www.opengis.net/citygml/waterbody/2.0" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns:veg="http://www.opengis.net/citygml/vegetation/2.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:tun="http://www.opengis.net/citygml/tunnel/2.0" xmlns:tex="http://www.opengis.net/citygml/texturedsurface/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:gen="http://www.opengis.net/citygml/generics/2.0" xmlns:dem="http://www.opengis.net/citygml/relief/2.0" xmlns:app="http://www.opengis.net/citygml/appearance/2.0" xmlns:luse="http://www.opengis.net/citygml/landuse/2.0" xmlns:xAL="urn:oasis:names:tc:ciq:xsdschema:xAL:2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:smil20lang="http://www.w3.org/2001/SMIL20/Language" xmlns:pbase="http://www.opengis.net/citygml/profiles/base/2.0" xmlns:smil20="http://www.w3.org/2001/SMIL20/" xmlns:bldg="http://www.opengis.net/citygml/building/2.0" xmlns:core="http://www.opengis.net/citygml/2.0" xmlns:grp="http://www.opengis.net/citygml/cityobjectgroup/2.0">
	<gml:description>This city model contains a set of "fantasy" buildings</gml:description>
	<gml:name>CityGML city of Alderaan</gml:name>
	<gml:boundedBy>
		<gml:Envelope srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
			<gml:lowerCorner>-30 -50 -5</gml:lowerCorner>
			<gml:upperCorner>100 40 50</gml:upperCorner>
		</gml:Envelope>
	</gml:boundedBy>
	<core:cityObjectMember>
		<grp:CityObjectGroup gml:id="id_group_1">
			<gml:description>This group contains all ancillary buildings of CityGML city Alderaan</gml:description>
			<gml:name>Ancillary buildings group</gml:name>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_20">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 20</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_20" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_20">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>-20 5 0 -10 5 0 -10 15 0 -20 15 0 -20 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_20" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_20">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_1">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 5 0 -20 15 0 -10 15 0 -10 5 0 -20 5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_2">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 5 0 -10 5 0 -10 5 10 -20 5 10 -20 5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_3">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 5 0 -10 15 0 -10 15 10 -10 5 10 -10 5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_4">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 15 0 -20 15 0 -20 15 10 -10 15 10 -10 15 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_5">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 15 0 -20 5 0 -20 5 10 -20 15 10 -20 15 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_6">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 5 10 -10 5 10 -10 15 10 -20 15 10 -20 5 10</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_21">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 21</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_21" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_21">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>-20 -10 0 -10 -10 0 -10 0 0 -20 0 0 -20 -10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_21" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_21">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_7">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 -10 0 -20 0 0 -10 0 0 -10 -10 0 -20 -10 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_8">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 -10 0 -10 -10 0 -10 -10 20 -20 -10 20 -20 -10 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_9">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 -10 0 -10 0 0 -10 0 20 -10 -10 20 -10 -10 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_10">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 0 0 -20 0 0 -20 0 20 -10 0 20 -10 0 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_11">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 0 0 -20 -10 0 -20 -10 20 -20 0 20 -20 0 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_12">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 -10 20 -10 -10 20 -10 0 20 -20 0 20 -20 -10 20</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_22">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 22</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_22" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_22">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>-30 -30 0 -20 -30 0 -20 -20 0 -30 -20 0 -30 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_22" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_22">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_13">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -30 0 -30 -20 0 -20 -20 0 -20 -30 0 -30 -30 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_14">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -30 0 -20 -30 0 -20 -30 10 -30 -30 10 -30 -30 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_15">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 -30 0 -20 -20 0 -20 -20 10 -20 -30 10 -20 -30 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_16">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 -20 0 -30 -20 0 -30 -20 10 -20 -20 10 -20 -20 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_17">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -20 0 -30 -30 0 -30 -30 10 -30 -20 10 -30 -20 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_18">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -30 10 -20 -30 10 -20 -20 10 -30 -20 10 -30 -30 10</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_23">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 23</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_23" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_23">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>-30 -45 0 -20 -45 0 -20 -35 0 -30 -35 0 -30 -45 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_23" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_23">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_19">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -45 0 -30 -35 0 -20 -35 0 -20 -45 0 -30 -45 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_20">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -45 0 -20 -45 0 -20 -45 30 -30 -45 30 -30 -45 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_21">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 -45 0 -20 -35 0 -20 -35 30 -20 -45 30 -20 -45 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_22">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-20 -35 0 -30 -35 0 -30 -35 30 -20 -35 30 -20 -35 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_23">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -35 0 -30 -45 0 -30 -45 30 -30 -35 30 -30 -35 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_24">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-30 -45 30 -20 -45 30 -20 -35 30 -30 -35 30 -30 -45 30</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_24">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 24</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_24" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_24">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 -50 0 70 -50 0 70 -40 0 60 -40 0 60 -50 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_24" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_24">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_25">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>60 -50 0 60 -40 0 70 -40 0 70 -50 0 60 -50 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_26">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>60 -50 0 70 -50 0 70 -50 10 60 -50 10 60 -50 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_27">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>70 -50 0 70 -40 0 70 -40 10 70 -50 10 70 -50 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_28">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>70 -40 0 60 -40 0 60 -40 10 70 -40 10 70 -40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_29">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>60 -40 0 60 -50 0 60 -50 10 60 -40 10 60 -40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_30">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>60 -50 10 70 -50 10 70 -40 10 60 -40 10 60 -50 10</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_25">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 25</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_25" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_25">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>45 -50 0 55 -50 0 55 -40 0 45 -40 0 45 -50 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_25" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_25">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_31">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>45 -50 0 45 -40 0 55 -40 0 55 -50 0 45 -50 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_32">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>45 -50 0 55 -50 0 55 -50 15 45 -50 15 45 -50 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_33">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>55 -50 0 55 -40 0 55 -40 15 55 -50 15 55 -50 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_34">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>55 -40 0 45 -40 0 45 -40 15 55 -40 15 55 -40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_35">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>45 -40 0 45 -50 0 45 -50 15 45 -40 15 45 -40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_36">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>45 -50 15 55 -50 15 55 -40 15 45 -40 15 45 -50 15</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_26">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 26</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_26" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_26">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>80 -5 0 90 -5 0 90 5 0 80 5 0 80 -5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_26" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_26">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_37">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>80 -5 0 80 5 0 90 5 0 90 -5 0 80 -5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_38">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>80 -5 0 90 -5 0 90 -5 10 80 -5 10 80 -5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_39">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>90 -5 0 90 5 0 90 5 10 90 -5 10 90 -5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_40">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>90 5 0 80 5 0 80 5 10 90 5 10 90 5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_41">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>80 5 0 80 -5 0 80 -5 10 80 5 10 80 5 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_42">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>80 -5 10 90 -5 10 90 5 10 80 5 10 80 -5 10</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_27">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 27</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_27" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_27">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>-10 20 -5 10 20 -5 10 30 -5 -10 30 -5 -10 20 -5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_27" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_27">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_43">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 20 -5 -10 30 -5 10 30 -5 10 20 -5 -10 20 -5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_44">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 20 -5 10 20 -5 10 20 15 -10 20 15 -10 20 -5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_45">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>10 20 -5 10 30 -5 10 30 15 10 20 15 10 20 -5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_46">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>10 30 -5 -10 30 -5 -10 30 15 10 30 15 10 30 -5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_47">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 30 -5 -10 20 -5 -10 20 15 -10 30 15 -10 30 -5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_48">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>-10 20 15 10 20 15 10 30 15 -10 30 15 -10 20 15</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_28">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 28</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_28" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_28">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 30 0 60 30 0 60 40 0 40 40 0 40 30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_28" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_28">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_49">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>40 30 0 40 40 0 60 40 0 60 30 0 40 30 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_50">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>40 30 0 60 30 0 60 30 30 40 30 30 40 30 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_51">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>60 30 0 60 40 0 60 40 30 60 30 30 60 30 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_52">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>60 40 0 40 40 0 40 40 30 60 40 30 60 40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_53">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>40 40 0 40 30 0 40 30 30 40 40 30 40 40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_54">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>40 30 30 60 30 30 60 40 30 40 40 30 40 30 30</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_29">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 29</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_29" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_29">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -50 5 40 -50 5 40 -40 5 20 -40 5 20 -50 5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_29" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_29">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_55">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>20 -50 5 20 -40 5 40 -40 5 40 -50 5 20 -50 5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_56">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>20 -50 5 40 -50 5 40 -50 25 20 -50 25 20 -50 5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_57">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>40 -50 5 40 -40 5 40 -40 25 40 -50 25 40 -50 5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_58">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>40 -40 5 20 -40 5 20 -40 25 40 -40 25 40 -40 5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_59">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>20 -40 5 20 -50 5 20 -50 25 20 -40 25 20 -40 5</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_60">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>20 -50 25 40 -50 25 40 -40 25 20 -40 25 20 -50 25</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
			<grp:groupMember>
				<bldg:Building gml:id="id_box_building_30">
					<gml:description>This is a simple, primastic building meant to provide shadowing and occlusions</gml:description>
					<gml:name>Box building 30</gml:name>
					<bldg:lod0FootPrint>
						<gml:MultiSurface gml:id="id_lod0_MultiSurf_30" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_lod0_Polygon_30">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>90 -40 0 100 -40 0 100 -20 0 90 -20 0 90 -40 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod0FootPrint>
					<bldg:lod1Solid>
						<gml:Solid gml:id="id_lod1_Solid_30" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:exterior>
								<gml:CompositeSurface gml:id="id_lod1_CompSurf_30">
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_61">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>90 -40 0 90 -20 0 100 -20 0 100 -40 0 90 -40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_62">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>90 -40 0 100 -40 0 100 -40 50 90 -40 50 90 -40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_63">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>100 -40 0 100 -20 0 100 -20 50 100 -40 50 100 -40 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_64">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>100 -20 0 90 -20 0 90 -20 50 100 -20 50 100 -20 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_65">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>90 -20 0 90 -40 0 90 -40 50 90 -20 50 90 -20 0</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
									<gml:surfaceMember>
										<gml:Polygon gml:id="id_lod1_Polygon_66">
											<gml:exterior>
												<gml:LinearRing>
													<gml:posList>90 -40 50 100 -40 50 100 -20 50 90 -20 50 90 -40 50</gml:posList>
												</gml:LinearRing>
											</gml:exterior>
										</gml:Polygon>
									</gml:surfaceMember>
								</gml:CompositeSurface>
							</gml:exterior>
						</gml:Solid>
					</bldg:lod1Solid>
				</bldg:Building>
			</grp:groupMember>
		</grp:CityObjectGroup>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_01">
			<gml:description>This is Building 1</gml:description>
			<gml:name>Snoke's Palace</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1955</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_1_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_1_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_01_lod1_Solid_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_01_lod1_CompSurf_1">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_01_lod1_Polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 0 0 0 10 0 10 10 0 10 0 0 0 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_01_lod1_Polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 0 0 10 0 0 10 0 12.5 0 0 12.5 0 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_01_lod1_Polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 0 0 10 10 0 10 10 12.5 10 0 12.5 10 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_01_lod1_Polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 10 0 0 10 0 0 10 12.5 10 10 12.5 10 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_01_lod1_Polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 10 0 0 0 0 0 0 12.5 0 10 12.5 0 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_01_lod1_Polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 0 12.5 10 0 12.5 10 10 12.5 0 10 12.5 0 0 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_1_wallsurface_2">
					<gml:description>This is WallSurface 2 (North) (Building 1)</gml:description>
					<gml:name>WallSurface 2 (Building 1)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_1_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_1_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 10 0 0 10 10 5 10 15 10 10 10 10 10 0 0 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_1_wallsurface_1">
					<gml:description>This is WallSurface 1 (South) (Building 1)</gml:description>
					<gml:name>WallSurface 1 (Building 1)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_1_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_1_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 0 0 10 0 0 10 0 10 5 0 15 0 0 10 0 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_1_wallsurface_4">
					<gml:description>This is WallSurface 4 (East) (Building 1)</gml:description>
					<gml:name>WallSurface 4 (Building 1)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_1_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_1_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 0 0 10 10 0 10 10 10 10 0 10 10 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_1_wallsurface_3">
					<gml:description>This is WallSurface 1 (West) (Building 1)</gml:description>
					<gml:name>WallSurface 3 (Building 1)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_1_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_1_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 0 0 0 0 10 0 10 10 0 10 0 0 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_1_roofsurface_1">
					<gml:description>This is Roofsurface 1 (West) (Building 1)</gml:description>
					<gml:name>RoofSurface 1 (Building 1)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_1_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_1_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 0 10 5 0 15 5 10 15 0 10 10 0 0 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_1_roofsurface_2">
					<gml:description>This is Roofsurface 2 (East) (Building 1)</gml:description>
					<gml:name>RoofSurface 2 (Building 1)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_1_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_1_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>5 0 15 10 0 10 10 10 10 5 10 15 5 0 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_1_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 1)</gml:description>
					<gml:name>GroundSurface 1 (Building 1)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_1_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_1_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 0 0 0 10 0 10 10 0 10 0 0 0 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_02">
			<gml:description>This is Building 2</gml:description>
			<gml:name>Rey's Hut</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1955</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_2_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_2_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_02_lod1_Solid_2" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_02_lod1_CompSurf_2">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_02_lod1_Polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 10 0 0 10 10 0 20 10 0 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_02_lod1_Polygon_8">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 20 10 0 20 10 12.5 20 0 12.5 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_02_lod1_Polygon_9">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 10 0 10 10 0 10 10 12.5 20 10 12.5 20 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_02_lod1_Polygon_10">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 10 0 10 0 0 10 0 12.5 10 10 12.5 10 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_02_lod1_Polygon_11">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 0 0 20 0 0 20 0 12.5 10 0 12.5 10 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_02_lod1_Polygon_12">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 12.5 20 10 12.5 10 10 12.5 10 0 12.5 20 0 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_2_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 2)</gml:description>
					<gml:name>WallSurface 2 (Building 2)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_2_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_2_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 0 0 10 0 10 10 5 15 10 10 10 10 10 0 10 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_2_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 2)</gml:description>
					<gml:name>WallSurface 1 (Building 2)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_2_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_2_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 20 10 0 20 10 10 20 5 15 20 0 10 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_2_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 2)</gml:description>
					<gml:name>WallSurface 4 (Building 2)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_2_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_2_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 10 0 10 10 0 10 10 10 20 10 10 20 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_2_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 2)</gml:description>
					<gml:name>WallSurface 3 (Building 2)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_2_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_2_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 20 0 10 10 0 10 10 0 0 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_2_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 2)</gml:description>
					<gml:name>RoofSurface 1 (Building 2)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_2_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_2_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 10 20 5 15 10 5 15 10 0 10 20 0 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_2_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 2)</gml:description>
					<gml:name>RoofSurface 2 (Building 2)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_2_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_2_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 5 15 20 10 10 10 10 10 10 5 15 20 5 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_2_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 2)</gml:description>
					<gml:name>GroundSurface 1 (Building 2)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_2_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_2_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 10 0 0 10 10 0 20 10 0 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_03">
			<gml:description>This is Building 3</gml:description>
			<gml:name>Poe's Hangar</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1955</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_3_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_3_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_03_lod1_Solid_3" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_03_lod1_CompSurf_3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_03_lod1_Polygon_13">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 20 10 0 30 10 0 30 0 0 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_03_lod1_Polygon_14">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 30 0 0 30 0 12.5 20 0 12.5 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_03_lod1_Polygon_15">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 0 0 30 10 0 30 10 12.5 30 0 12.5 30 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_03_lod1_Polygon_16">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 10 0 20 10 0 20 10 12.5 30 10 12.5 30 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_03_lod1_Polygon_17">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 10 0 20 0 0 20 0 12.5 20 10 12.5 20 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_03_lod1_Polygon_18">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 12.5 30 0 12.5 30 10 12.5 20 10 12.5 20 0 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_3_wallsurface_2">
					<gml:description>This is WallSurface 2 (North) (Building 3)</gml:description>
					<gml:name>WallSurface 2 (Building 3)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_3_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_3_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 10 0 20 10 10 25 10 15 30 10 10 30 10 0 20 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_3_wallsurface_1">
					<gml:description>This is WallSurface 1 (South) (Building 3)</gml:description>
					<gml:name>WallSurface 1 (Building 3)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_3_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_3_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 30 0 0 30 0 10 25 0 15 20 0 10 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_3_wallsurface_4">
					<gml:description>This is WallSurface 4 (East) (Building 3)</gml:description>
					<gml:name>WallSurface 4 (Building 3)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_3_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_3_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 0 0 30 10 0 30 10 10 30 0 10 30 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_3_wallsurface_3">
					<gml:description>This is WallSurface 1 (West) (Building 3)</gml:description>
					<gml:name>WallSurface 3 (Building 3)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_3_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_3_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 20 0 10 20 10 10 20 10 0 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_3_roofsurface_1">
					<gml:description>This is Roofsurface 1 (West) (Building 3)</gml:description>
					<gml:name>RoofSurface 1 (Building 3)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_3_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_3_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 10 25 0 15 25 10 15 20 10 10 20 0 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_3_roofsurface_2">
					<gml:description>This is Roofsurface 2 (East) (Building 3)</gml:description>
					<gml:name>RoofSurface 2 (Building 3)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_3_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_3_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>25 0 15 30 0 10 30 10 10 25 10 15 25 0 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_3_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 3)</gml:description>
					<gml:name>GroundSurface 1 (Building 3)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_3_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_3_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 0 0 20 10 0 30 10 0 30 0 0 20 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_04">
			<gml:description>This is Building 4</gml:description>
			<gml:name>Fin's Cabin</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1955</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_4_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_4_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_04_lod1_Solid_4" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_04_lod1_CompSurf_4">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_04_lod1_Polygon_19">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 0 0 30 0 0 30 10 0 40 10 0 40 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_04_lod1_Polygon_20">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 0 0 40 10 0 40 10 12.5 40 0 12.5 40 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_04_lod1_Polygon_21">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 10 0 30 10 0 30 10 12.5 40 10 12.5 40 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_04_lod1_Polygon_22">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 10 0 30 0 0 30 0 12.5 30 10 12.5 30 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_04_lod1_Polygon_23">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 0 0 40 0 0 40 0 12.5 30 0 12.5 30 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_04_lod1_Polygon_24">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 0 12.5 40 10 12.5 30 10 12.5 30 0 12.5 40 0 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_4_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 4)</gml:description>
					<gml:name>WallSurface 2 (Building 4)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_4_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_4_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 0 0 30 0 10 30 5 15 30 10 10 30 10 0 30 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_4_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 4)</gml:description>
					<gml:name>WallSurface 1 (Building 4)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_4_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_4_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 0 0 40 10 0 40 10 10 40 5 15 40 0 10 40 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_4_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 4)</gml:description>
					<gml:name>WallSurface 4 (Building 4)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_4_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_4_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 10 0 30 10 0 30 10 10 40 10 10 40 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_4_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 4)</gml:description>
					<gml:name>WallSurface 3 (Building 4)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_4_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_4_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 0 0 40 0 10 30 0 10 30 0 0 40 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_4_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 4)</gml:description>
					<gml:name>RoofSurface 1 (Building 4)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_4_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_4_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 0 10 40 5 15 30 5 15 30 0 10 40 0 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_4_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 4)</gml:description>
					<gml:name>RoofSurface 2 (Building 4)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_4_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_4_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 5 15 40 10 10 30 10 10 30 5 15 40 5 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_4_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 4)</gml:description>
					<gml:name>GroundSurface 1 (Building 4)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_4_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_4_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 0 0 30 0 0 30 10 0 40 10 0 40 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_05">
			<gml:description>This is Building 5</gml:description>
			<gml:name>Yoda's Hut</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1980</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>1</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_5_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_5_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_05_lod1_Solid_5" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_05_lod1_CompSurf_5">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_05_lod1_Polygon_25">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 0 0 50 0 0 50 10 0 60 10 0 60 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_05_lod1_Polygon_26">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 0 0 60 10 0 60 10 12.5 60 0 12.5 60 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_05_lod1_Polygon_27">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 10 0 50 10 0 50 10 12.5 60 10 12.5 60 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_05_lod1_Polygon_28">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 10 0 50 0 0 50 0 12.5 50 10 12.5 50 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_05_lod1_Polygon_29">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 0 0 60 0 0 60 0 12.5 50 0 12.5 50 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_05_lod1_Polygon_30">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 0 12.5 60 10 12.5 50 10 12.5 50 0 12.5 60 0 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_5_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 5)</gml:description>
					<gml:name>WallSurface 2 (Building 5)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_5_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_5_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 0 0 50 0 10 50 5 15 50 10 10 50 10 0 50 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_5_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 5)</gml:description>
					<gml:name>WallSurface 1 (Building 5)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_5_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_5_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 0 0 60 10 0 60 10 10 60 5 15 60 0 10 60 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_5_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 5)</gml:description>
					<gml:name>WallSurface 4 (Building 5)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_5_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_5_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 10 0 50 10 0 50 10 10 60 10 10 60 10 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_5_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 5)</gml:description>
					<gml:name>WallSurface 3 (Building 5)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_5_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_5_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 0 0 60 0 10 50 0 10 50 0 0 60 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_5_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 5)</gml:description>
					<gml:name>RoofSurface 1 (Building 5)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_5_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_5_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 0 10 60 5 15 50 5 15 50 0 10 60 0 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_5_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 5)</gml:description>
					<gml:name>RoofSurface 2 (Building 5)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_5_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_5_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 15 60 10 10 50 10 10 50 5 15 60 5 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_5_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 5)</gml:description>
					<gml:name>GroundSurface 1 (Building 5)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_5_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_5_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 0 0 50 0 0 50 10 0 60 10 0 60 0 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_06">
			<gml:description>This is Building 6</gml:description>
			<gml:name>Amidala's Palace</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1997</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>2</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_6_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_6_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_06_lod1_Solid_6" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_06_lod1_CompSurf_6">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_06_lod1_Polygon_31">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 0 60 15 0 70 15 0 70 5 0 60 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_06_lod1_Polygon_32">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 0 70 5 0 70 5 12.5 60 5 12.5 60 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_06_lod1_Polygon_33">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 5 0 70 15 0 70 15 12.5 70 5 12.5 70 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_06_lod1_Polygon_34">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 15 0 60 15 0 60 15 12.5 70 15 12.5 70 15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_06_lod1_Polygon_35">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 15 0 60 5 0 60 5 12.5 60 15 12.5 60 15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_06_lod1_Polygon_36">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 12.5 70 5 12.5 70 15 12.5 60 15 12.5 60 5 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_6_wallsurface_2">
					<gml:description>This is WallSurface 2 (North) (Building 6)</gml:description>
					<gml:name>WallSurface 2 (Building 6)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_6_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_6_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 15 0 60 15 10 65 15 15 70 15 10 70 15 0 60 15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_6_wallsurface_1">
					<gml:description>This is WallSurface 1 (South) (Building 6)</gml:description>
					<gml:name>WallSurface 1 (Building 6)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_6_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_6_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 0 70 5 0 70 5 10 65 5 15 60 5 10 60 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_6_wallsurface_4">
					<gml:description>This is WallSurface 4 (East) (Building 6)</gml:description>
					<gml:name>WallSurface 4 (Building 6)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_6_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_6_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 5 0 70 15 0 70 15 10 70 5 10 70 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_6_wallsurface_3">
					<gml:description>This is WallSurface 1 (West) (Building 6)</gml:description>
					<gml:name>WallSurface 3 (Building 6)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_6_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_6_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 0 60 5 10 60 15 10 60 15 0 60 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_6_roofsurface_1">
					<gml:description>This is Roofsurface 1 (West) (Building 6)</gml:description>
					<gml:name>RoofSurface 1 (Building 6)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_6_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_6_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 10 65 5 15 65 15 15 60 15 10 60 5 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_6_roofsurface_2">
					<gml:description>This is Roofsurface 2 (East) (Building 6)</gml:description>
					<gml:name>RoofSurface 2 (Building 6)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_6_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_6_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>65 5 15 70 5 10 70 15 10 65 15 15 65 5 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_6_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 6)</gml:description>
					<gml:name>GroundSurface 1 (Building 6)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_6_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_6_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 5 0 60 15 0 70 15 0 70 5 0 60 5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_07">
			<gml:description>This is Building 7</gml:description>
			<gml:name>Palapatine's Residence</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>2005</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_7_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_7_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_07_lod1_Solid_7" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_07_lod1_CompSurf_7">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_07_lod1_Polygon_37">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -30 0 0 -20 0 10 -20 0 10 -30 0 0 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_07_lod1_Polygon_38">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -30 0 10 -30 0 10 -30 12.5 0 -30 12.5 0 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_07_lod1_Polygon_39">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 -30 0 10 -20 0 10 -20 12.5 10 -30 12.5 10 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_07_lod1_Polygon_40">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 -20 0 0 -20 0 0 -20 12.5 10 -20 12.5 10 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_07_lod1_Polygon_41">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -20 0 0 -30 0 0 -30 12.5 0 -20 12.5 0 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_07_lod1_Polygon_42">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -30 12.5 10 -30 12.5 10 -20 12.5 0 -20 12.5 0 -30 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_7_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 7)</gml:description>
					<gml:name>WallSurface 2 (Building 7)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_7_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_7_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -20 0 0 -20 10 5 -20 15 10 -20 10 10 -20 0 0 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_7_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 7)</gml:description>
					<gml:name>WallSurface 1 (Building 7)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_7_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_7_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -30 0 10 -30 0 10 -30 10 5 -30 15 0 -30 10 0 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_7_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 7)</gml:description>
					<gml:name>WallSurface 4 (Building 7)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_7_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_7_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 -30 0 10 -20 0 10 -20 10 10 -30 10 10 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_7_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 7)</gml:description>
					<gml:name>WallSurface 3 (Building 7)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_7_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_7_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -30 0 0 -30 10 0 -20 10 0 -20 0 0 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_7_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 7)</gml:description>
					<gml:name>RoofSurface 1 (Building 7)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_7_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_7_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -30 10 5 -30 15 5 -20 15 0 -20 10 0 -30 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_7_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 7)</gml:description>
					<gml:name>RoofSurface 2 (Building 7)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_7_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_7_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>5 -30 15 10 -30 10 10 -20 10 5 -20 15 5 -30 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_7_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 7)</gml:description>
					<gml:name>GroundSurface 1 (Building 7)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_7_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_7_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>0 -30 0 0 -20 0 10 -20 0 10 -30 0 0 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_08">
			<gml:description>This is Building 8</gml:description>
			<gml:name>Darth Vader's Palace</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1920</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_8_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_8_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_08_lod1_Solid_8" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_08_lod1_CompSurf_8">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_08_lod1_Polygon_43">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -25 0 10 -25 0 10 -15 0 20 -15 0 20 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_08_lod1_Polygon_44">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -25 0 20 -15 0 20 -15 12.5 20 -25 12.5 20 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_08_lod1_Polygon_45">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -15 0 10 -15 0 10 -15 12.5 20 -15 12.5 20 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_08_lod1_Polygon_46">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 -15 0 10 -25 0 10 -25 12.5 10 -15 12.5 10 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_08_lod1_Polygon_47">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 -25 0 20 -25 0 20 -25 12.5 10 -25 12.5 10 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_08_lod1_Polygon_48">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -25 12.5 20 -15 12.5 10 -15 12.5 10 -25 12.5 20 -25 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_8_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 8)</gml:description>
					<gml:name>WallSurface 2 (Building 8)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_8_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_8_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>10 -25 0 10 -25 10 10 -20 15 10 -15 10 10 -15 0 10 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_8_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 8)</gml:description>
					<gml:name>WallSurface 1 (Building 8)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_8_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_8_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -25 0 20 -15 0 20 -15 10 20 -20 15 20 -25 10 20 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_8_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 8)</gml:description>
					<gml:name>WallSurface 4 (Building 8)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_8_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_8_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -15 0 10 -15 0 10 -15 10 20 -15 10 20 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_8_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 8)</gml:description>
					<gml:name>WallSurface 3 (Building 8)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_8_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_8_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -25 0 20 -25 10 10 -25 10 10 -25 0 20 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_8_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 8)</gml:description>
					<gml:name>RoofSurface 1 (Building 8)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_8_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_8_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -25 10 20 -20 15 10 -20 15 10 -25 10 20 -25 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_8_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 8)</gml:description>
					<gml:name>RoofSurface 2 (Building 8)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_8_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_8_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -20 15 20 -15 10 10 -15 10 10 -20 15 20 -20 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_8_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 8)</gml:description>
					<gml:name>GroundSurface 1 (Building 8)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_8_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_8_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>20 -25 0 10 -25 0 10 -15 0 20 -15 0 20 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_09">
			<gml:description>This is Building 9</gml:description>
			<gml:name>Jabba's Palace</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1965</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>5</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_9_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_9_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_09_lod1_Solid_9" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_09_lod1_CompSurf_9">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_09_lod1_Polygon_49">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -25 0 30 -25 0 30 -15 0 40 -15 0 40 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_09_lod1_Polygon_50">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -25 0 40 -15 0 40 -15 12.5 40 -25 12.5 40 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_09_lod1_Polygon_51">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -15 0 30 -15 0 30 -15 12.5 40 -15 12.5 40 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_09_lod1_Polygon_52">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 -15 0 30 -25 0 30 -25 12.5 30 -15 12.5 30 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_09_lod1_Polygon_53">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 -25 0 40 -25 0 40 -25 12.5 30 -25 12.5 30 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_09_lod1_Polygon_54">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -25 12.5 40 -15 12.5 30 -15 12.5 30 -25 12.5 40 -25 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_9_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 9)</gml:description>
					<gml:name>WallSurface 2 (Building 9)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_9_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_9_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>30 -25 0 30 -25 10 30 -20 15 30 -15 10 30 -15 0 30 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_9_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 9)</gml:description>
					<gml:name>WallSurface 1 (Building 9)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_9_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_9_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -25 0 40 -15 0 40 -15 10 40 -20 15 40 -25 10 40 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_9_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 9)</gml:description>
					<gml:name>WallSurface 4 (Building 9)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_9_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_9_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -15 0 30 -15 0 30 -15 10 40 -15 10 40 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_9_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 9)</gml:description>
					<gml:name>WallSurface 3 (Building 9)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_9_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_9_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -25 0 40 -25 10 30 -25 10 30 -25 0 40 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_9_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 9)</gml:description>
					<gml:name>RoofSurface 1 (Building 9)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_9_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_9_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -25 10 40 -20 15 30 -20 15 30 -25 10 40 -25 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_9_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 9)</gml:description>
					<gml:name>RoofSurface 2 (Building 9)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_9_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_9_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -20 15 40 -15 10 30 -15 10 30 -20 15 40 -20 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_9_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 9)</gml:description>
					<gml:name>GroundSurface 1 (Building 9)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_9_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_9_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -25 0 30 -25 0 30 -15 0 40 -15 0 40 -25 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_10">
			<gml:description>This is Building 10</gml:description>
			<gml:name>Boba Fett's Lair</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1940</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_10_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_10_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_10_lod1_Solid_10" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_10_lod1_CompSurf_10">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_lod1_Polygon_55">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -30 0 40 -30 0 40 -20 0 50 -20 0 50 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_lod1_Polygon_56">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -30 0 50 -20 0 50 -20 12.5 50 -30 12.5 50 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_lod1_Polygon_57">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -20 0 40 -20 0 40 -20 12.5 50 -20 12.5 50 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_lod1_Polygon_58">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -20 0 40 -30 0 40 -30 12.5 40 -20 12.5 40 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_lod1_Polygon_59">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -30 0 50 -30 0 50 -30 12.5 40 -30 12.5 40 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_lod1_Polygon_60">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -30 12.5 50 -20 12.5 40 -20 12.5 40 -30 12.5 50 -30 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_10_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 10)</gml:description>
					<gml:name>WallSurface 2 (Building 10)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_10_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>40 -30 0 40 -30 10 40 -25 15 40 -20 10 40 -20 0 40 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_10_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 10)</gml:description>
					<gml:name>WallSurface 1 (Building 10)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_10_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -30 0 50 -20 0 50 -20 10 50 -25 15 50 -30 10 50 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_10_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 10)</gml:description>
					<gml:name>WallSurface 4 (Building 10)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_10_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -20 0 40 -20 0 40 -20 10 50 -20 10 50 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_10_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 10)</gml:description>
					<gml:name>WallSurface 3 (Building 10)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_10_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -30 0 50 -30 10 40 -30 10 40 -30 0 50 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_10_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 10)</gml:description>
					<gml:name>RoofSurface 1 (Building 10)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_10_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -30 10 50 -25 15 40 -25 15 40 -30 10 50 -30 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_10_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 10)</gml:description>
					<gml:name>RoofSurface 2 (Building 10)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_10_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -25 15 50 -20 10 40 -20 10 40 -25 15 50 -25 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_10_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 10)</gml:description>
					<gml:name>GroundSurface 1 (Building 10)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_10_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_10_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>50 -30 0 40 -30 0 40 -20 0 50 -20 0 50 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_11">
			<gml:description>This is Building 11</gml:description>
			<gml:name>Death Star I</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1920</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>1</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_11_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_11_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_11_lod1_Solid_11" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_11_lod1_CompSurf_11">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_lod1_Polygon_61">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -30 0 60 -30 0 60 -20 0 70 -20 0 70 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_lod1_Polygon_62">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -30 0 70 -20 0 70 -20 12.5 70 -30 12.5 70 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_lod1_Polygon_63">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -20 0 60 -20 0 60 -20 12.5 70 -20 12.5 70 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_lod1_Polygon_64">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 -20 0 60 -30 0 60 -30 12.5 60 -20 12.5 60 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_lod1_Polygon_65">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 -30 0 70 -30 0 70 -30 12.5 60 -30 12.5 60 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_lod1_Polygon_66">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -30 12.5 70 -20 12.5 60 -20 12.5 60 -30 12.5 70 -30 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_11_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 11)</gml:description>
					<gml:name>WallSurface 2 (Building 11)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_11_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 -30 0 60 -30 10 60 -25 15 60 -20 10 60 -20 0 60 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_11_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 11)</gml:description>
					<gml:name>WallSurface 1 (Building 11)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_11_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -30 0 70 -20 0 70 -20 10 70 -25 15 70 -30 10 70 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_11_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 11)</gml:description>
					<gml:name>WallSurface 4 (Building 11)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_11_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -20 0 60 -20 0 60 -20 10 70 -20 10 70 -20 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_11_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 11)</gml:description>
					<gml:name>WallSurface 3 (Building 11)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_11_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -30 0 70 -30 10 60 -30 10 60 -30 0 70 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_11_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 11)</gml:description>
					<gml:name>RoofSurface 1 (Building 11)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_11_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -30 10 70 -25 15 60 -25 15 60 -30 10 70 -30 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_11_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 11)</gml:description>
					<gml:name>RoofSurface 2 (Building 11)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_11_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -25 15 70 -20 10 60 -20 10 60 -25 15 70 -25 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_11_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 11)</gml:description>
					<gml:name>GroundSurface 1 (Building 11)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_11_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_11_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -30 0 60 -30 0 60 -20 0 70 -20 0 70 -30 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<core:cityObjectMember>
		<bldg:Building gml:id="id_building_12">
			<gml:description>This is Building 12</gml:description>
			<gml:name>Death Star II</gml:name>
			<core:creationDate>2019-11-17</core:creationDate>
			<bldg:class codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_class.xml">habitation</bldg:class>
			<bldg:function codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_function.xml">residential building</bldg:function>
			<bldg:yearOfConstruction>1964</bldg:yearOfConstruction>
			<bldg:roofType codeSpace="http://www.sig3d.org/codelists/standard/building/2.0/_AbstractBuilding_roofType.xml">gabled roof</bldg:roofType>
			<bldg:measuredHeight uom="m">15</bldg:measuredHeight>
			<bldg:storeysAboveGround>3</bldg:storeysAboveGround>
			<bldg:storeysBelowGround>0</bldg:storeysBelowGround>
			<bldg:storeyHeightsAboveGround uom="m">3</bldg:storeyHeightsAboveGround>
			<bldg:lod0FootPrint>
				<gml:MultiSurface gml:id="id_building_12_footprint_multisurf_1" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:surfaceMember>
						<gml:OrientableSurface orientation="-">
							<gml:baseSurface xlink:href="#id_building_12_polygon_3"/>
						</gml:OrientableSurface>
					</gml:surfaceMember>
				</gml:MultiSurface>
			</bldg:lod0FootPrint>
			<bldg:lod1Solid>
				<gml:Solid gml:id="id_building_12_lod1_Solid_12" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
					<gml:exterior>
						<gml:CompositeSurface gml:id="id_building_12_lod1_CompSurf_12">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_lod1_Polygon_67">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -15 0 60 -15 0 60 -5 0 70 -5 0 70 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_lod1_Polygon_68">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -15 0 70 -5 0 70 -5 12.5 70 -15 12.5 70 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_lod1_Polygon_69">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -5 0 60 -5 0 60 -5 12.5 70 -5 12.5 70 -5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_lod1_Polygon_70">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 -5 0 60 -15 0 60 -15 12.5 60 -5 12.5 60 -5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_lod1_Polygon_71">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 -15 0 70 -15 0 70 -15 12.5 60 -15 12.5 60 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_lod1_Polygon_72">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -15 12.5 70 -5 12.5 60 -5 12.5 60 -15 12.5 70 -15 12.5</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:CompositeSurface>
					</gml:exterior>
				</gml:Solid>
			</bldg:lod1Solid>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_12_wallsurface_2">
					<gml:description>This is WallSurface 2 (West) (Building 12)</gml:description>
					<gml:name>WallSurface 2 (Building 12)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_12_wallsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_polygon_4">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>60 -15 0 60 -15 10 60 -10 15 60 -5 10 60 -5 0 60 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_12_wallsurface_1">
					<gml:description>This is WallSurface 1 (East) (Building 12)</gml:description>
					<gml:name>WallSurface 1 (Building 12)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_12_wallsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_polygon_5">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -15 0 70 -5 0 70 -5 10 70 -10 15 70 -15 10 70 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_12_wallsurface_4">
					<gml:description>This is WallSurface 4 (North) (Building 12)</gml:description>
					<gml:name>WallSurface 4 (Building 12)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_12_wallsurface_4_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_polygon_6">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -5 0 60 -5 0 60 -5 10 70 -5 10 70 -5 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:WallSurface gml:id="id_building_12_wallsurface_3">
					<gml:description>This is WallSurface 1 (South) (Building 12)</gml:description>
					<gml:name>WallSurface 3 (Building 12)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_12_wallsurface_3_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_polygon_7">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -15 0 70 -15 10 60 -15 10 60 -15 0 70 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:WallSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_12_roofsurface_1">
					<gml:description>This is Roofsurface 1 (South) (Building 12)</gml:description>
					<gml:name>RoofSurface 1 (Building 12)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_12_roofsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_polygon_1">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -15 10 70 -10 15 60 -10 15 60 -15 10 70 -15 10</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:RoofSurface gml:id="id_building_12_roofsurface_2">
					<gml:description>This is Roofsurface 2 (North) (Building 12)</gml:description>
					<gml:name>RoofSurface 2 (Building 12)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_12_roofsurface_2_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_polygon_2">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -10 15 70 -5 10 60 -5 10 60 -10 15 70 -10 15</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:RoofSurface>
			</bldg:boundedBy>
			<bldg:boundedBy>
				<bldg:GroundSurface gml:id="id_building_12_groundsurface_1">
					<gml:description>This is GroundSurface 1 (Building 12)</gml:description>
					<gml:name>GroundSurface 1 (Building 12)</gml:name>
					<bldg:lod2MultiSurface>
						<gml:MultiSurface gml:id="id_building_12_groundsurface_1_lod2_geom" srsName="urn:ogc:def:crs,crs:EPSG::28992,crs:EPSG::5109" srsDimension="3">
							<gml:surfaceMember>
								<gml:Polygon gml:id="id_building_12_polygon_3">
									<gml:exterior>
										<gml:LinearRing>
											<gml:posList>70 -15 0 60 -15 0 60 -5 0 70 -5 0 70 -15 0</gml:posList>
										</gml:LinearRing>
									</gml:exterior>
								</gml:Polygon>
							</gml:surfaceMember>
						</gml:MultiSurface>
					</bldg:lod2MultiSurface>
				</bldg:GroundSurface>
			</bldg:boundedBy>
		</bldg:Building>
	</core:cityObjectMember>
	<app:appearanceMember>
		<app:Appearance>
			<app:theme>FMETheme</app:theme>
			<app:surfaceDataMember>
				<app:X3DMaterial>
					<app:diffuseColor>0.854 0.854 0.854</app:diffuseColor>
					<app:target>#id_building_1_polygon_3</app:target>
					<app:target>#id_building_2_polygon_3</app:target>
					<app:target>#id_building_3_polygon_3</app:target>
					<app:target>#id_building_4_polygon_3</app:target>
					<app:target>#id_building_5_polygon_3</app:target>
					<app:target>#id_building_6_polygon_3</app:target>
					<app:target>#id_building_7_polygon_3</app:target>
					<app:target>#id_building_8_polygon_3</app:target>
					<app:target>#id_building_9_polygon_3</app:target>
					<app:target>#id_building_10_polygon_3</app:target>
					<app:target>#id_building_11_polygon_3</app:target>
					<app:target>#id_building_12_polygon_3</app:target>
				</app:X3DMaterial>
			</app:surfaceDataMember>
			<app:surfaceDataMember>
				<app:X3DMaterial>
					<app:isFront>false</app:isFront>
					<app:diffuseColor>0.854 0.854 0.854</app:diffuseColor>
					<app:target>#id_building_1_polygon_3</app:target>
					<app:target>#id_building_2_polygon_3</app:target>
					<app:target>#id_building_3_polygon_3</app:target>
					<app:target>#id_building_4_polygon_3</app:target>
					<app:target>#id_building_5_polygon_3</app:target>
					<app:target>#id_building_6_polygon_3</app:target>
					<app:target>#id_building_7_polygon_3</app:target>
					<app:target>#id_building_8_polygon_3</app:target>
					<app:target>#id_building_9_polygon_3</app:target>
					<app:target>#id_building_10_polygon_3</app:target>
					<app:target>#id_building_11_polygon_3</app:target>
					<app:target>#id_building_12_polygon_3</app:target>
				</app:X3DMaterial>
			</app:surfaceDataMember>
		</app:Appearance>
	</app:appearanceMember>
</core:CityModel>