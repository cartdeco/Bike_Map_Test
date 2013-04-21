Map {
  background-color: @white;
}

/* -----------------------------------------------
                      AREAS
   ----------------------------------------------- */

/* Background fill to provide a figure-ground relaionship. Subtle colours
   used to emphasise foreground information, i.e. bike routes and POI. */

/* land fill */

#areas [admin_level='10']{
  polygon-fill:lighten(@background,4%);
  }
  
/* ocean fill */

#coastline {
  ::coastline_blur {
    line-color:#85c5d3;
    line-width:6;
    line-gamma:0.5;
    image-filters:agg-stack-blur(30,30);
    }
  polygon-comp-op:overlay;
  }

/* parks */

#areas [zoom>=13][leisure='park']{
  polygon-fill:lighten(@park,5%);
  }

#areas [zoom>=13][leisure='garden']{
  polygon-fill:lighten(@park,5%);
  }

#areas [zoom>=13][leisure='golf_course']{
  polygon-fill:lighten(@park,5%);
  }

#areas [zoom>=13][leisure='nature_reserve']{
  polygon-fill:lighten(@park,5%);
  }

#areas [zoom>=13][leisure='playground']{
  polygon-fill:lighten(@park,5%);
  }

#areas [zoom>=13][leisure='pitch']{
  polygon-fill:lighten(@oval,5%);
  }

#areas [zoom>=13][leisure='track']{
  polygon-fill:lighten(@park,5%);
  }

#areas [zoom>=13][landuse='recreation_ground']{
  polygon-fill:lighten(@park,5%);
  }

#areas [zoom>=13][sport='australian_football']{
  polygon-fill:lighten(@oval,5%);
  }

#areas [zoom>=13][sport='tennis']{
  polygon-fill:lighten(@oval,5%);
  }
/* parking */

#areas [zoom>=15][amenity='parking']{
  polygon-fill:lighten(@beach,10%);
  }

/* lakes */

#areas [zoom>=13][natural='water']{
  polygon-fill:lighten(#85c5d3,25%);
  }

/* rivers */

#riverbodies {
  polygon-fill:lighten(#85c5d3,25%);
  }

/* piers */

#manmade [zoom>=14][man_made='pier']{
  polygon-fill:lighten(@railway_platform,20%);
  }

/* buildings */

#areas [zoom=15][building!='undefined']{
  building-fill:lighten(@building,15%);
  building-height:2;
  }

#areas [zoom=16][building!='undefined']{
  building-fill:lighten(@building,15%);
  building-height:4;
  }

#areas [zoom>=13][leisure='stadium']{
  polygon-fill:lighten(@building,15%);
  }

#areas [zoom>=13][leisure='marina']{
  polygon-fill:lighten(@building,15%);
  }

#areas [zoom>=13][leisure='sports_center']{
  polygon-fill:lighten(@building,15%);
  }

/* university */

#areas [zoom>=13][amenity='university']{
  polygon-fill:lighten(@beach,10%);
  }

/* -----------------------------------------------
                      LINES
   ----------------------------------------------- */

/* ---- rivers ---- */

#rivers [zoom>=12]{
  line-color:@lake;
  line-width:1.5;
  }

/* ---- roads ---- */

/* motorways */

#ways [zoom>=10][zoom<=11][highway='motorway']{
  ::casement{
    line-color:@motorway;
    line-width:3;
    line-smooth:0.5;
    }
  ::fill{
    line-color:lighten(@motorway,25%);
    line-width:1.5;
    line-smooth:0.5;
    }
  }

#ways [zoom=12][highway='motorway']{
  ::casement{
    line-color:lighten(@motorway,5%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:lighten(@motorway,30%);
    line-width:2;
    line-smooth:0.5;
    }
  }

#ways [zoom=13][highway='motorway']{
  ::casement{
    line-color:lighten(@motorway,10%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:lighten(@motorway,35%);
    line-width:2;
    line-smooth:0.5;
    }
  }

#ways [zoom>=14][zoom<=15][highway='motorway']{
  ::casement{
    line-color:lighten(@motorway,12%);
    line-width:4.5;
    line-smooth:0.5;
    }
  ::fill{
    line-color:lighten(@motorway,38%);
    line-width:3.5;
    line-smooth:0.5;
    }
  }

#ways [zoom=16][highway='motorway']{
  ::casement{
    line-color:lighten(@motorway,12%);
    line-width:6;
    line-smooth:0.5;
    }
  ::fill{
    line-color:lighten(@motorway,38%);
    line-width:4.5;
    line-smooth:0.5;
    }
  }

/* trunk */

#ways [zoom>=10][zoom<=11][highway='trunk']{
  ::casement{
    line-color:@primary;
    line-width:3;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:1.5;
    line-smooth:0.5;
    }
  }

#ways [zoom>=12][zoom<=13][highway='trunk']{
  ::casement{
    line-color:lighten(@primary,5%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:2;
    line-smooth:0.5;
    }
  }

#ways [zoom>=14][zoom<=15][highway='trunk']{
  ::casement{
    line-color:lighten(@primary,5%);
    line-width:3;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:1.5;
    line-smooth:0.5;
    }
  }

#ways [zoom=16][highway='trunk']{
  ::casement{
    line-color:lighten(@primary,5%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:2.5;
    line-smooth:0.5;
    }
  }

/* primary roads */

#ways [zoom>=10][zoom<=11][highway='primary']{
  ::casement{
    line-color:@primary;
    line-width:3;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:1.5;
    line-smooth:0.5;
    }
  }

#ways [zoom>=12][zoom<=13][highway='primary']{
  ::casement{
    line-color:lighten(@primary,5%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:2;
    line-smooth:0.5;
    }
  }

#ways [zoom>=14][zoom<=15][highway='primary']{
  ::casement{
    line-color:lighten(@primary,5%);
    line-width:3;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:1.5;
    line-smooth:0.5;
    }
  }

#ways [zoom=16][highway='primary']{
  ::casement{
    line-color:lighten(@primary,5%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:2.5;
    line-smooth:0.5;
    }
  }

/* secondary roads */

#ways [zoom=11][highway='secondary']{
  line-color:lighten(@railway_platform,20%);
  line-width:1.5;
  }

#ways [zoom=12][highway='secondary']{
  line-color:lighten(@railway_platform,20%);
  line-width:2;
  }

#ways [zoom=13][highway='secondary']{
  line-color:lighten(@railway_platform,20%);
  line-width:2.5;
  }

#ways [zoom=14][highway='secondary']{
  ::casement{
    line-color:lighten(@railway_platform,20%);
    line-width:3;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:1.5;
    }
  }

#ways [zoom=15][highway='secondary']{
  ::casement{
    line-color:lighten(@railway_platform,20%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:2;
    }
  }

#ways [zoom=16][highway='secondary']{
  ::casement{
    line-color:lighten(@railway_platform,20%);
    line-width:4;
    line-smooth:0.5;
    }
  ::fill{
    line-color:@white;
    line-width:2.5;
    }
  }

/* tertiary roads */

#ways [zoom=12][highway='tertiary']{
  line-color:lighten(@building,15%);
  line-width:1.5;
  }

#ways [zoom=13][highway='tertiary']{
  line-color:lighten(@building,15%);
  line-width:2;
  }

#ways [zoom=13][name='Swanston Street']{
  line-color:lighten(@building,15%);
  line-width:2;
  }

#ways [zoom=14][highway='tertiary']{
  ::casement{
    line-color:lighten(@building,10%);
    line-width:2.5;
    }
  ::fill{
    line-color:@white;
    line-width:1;
    }
  }

#ways [zoom=14][name='Swanston Street']{
  ::casement{
    line-color:lighten(@building,10%);
    line-width:2.5;
    }
  ::fill{
    line-color:@white;
    line-width:1;
    }
  }

#ways [zoom=15][highway='tertiary']{
  ::casement{
    line-color:lighten(@building,10%);
    line-width:3;
    }
  ::fill{
    line-color:@white;
    line-width:1.5;
    }
  }

#ways [zoom=15][name='Swanston Street']{
  ::casement{
    line-color:lighten(@building,10%);
    line-width:3;
    }
  ::fill{
    line-color:@white;
    line-width:1.5;
    }
  }

#ways [zoom=16][highway='tertiary']{
  ::casement{
    line-color:lighten(@building,10%);
    line-width:4;
    }
  ::fill{
    line-color:@white;
    line-width:2.5;
    }
  }

#ways [zoom=15][name='Swanston Street']{
  ::casement{
    line-color:lighten(@building,10%);
    line-width:4;
    }
  ::fill{
    line-color:@white;
    line-width:2.5;
    }
  }

/* motorway link */

#ways [zoom>=14][zoom<=16][highway='motorway_link']{
  line-color:lighten(@motorway,12%);
  line-width:1;
  }

/* trunk link */

#ways [zoom>=14][zoom<=16][highway='trunk_link']{
  line-color:lighten(@primary,5%);
  line-width:1;
  }

/* primary link */

#ways [zoom>=14][zoom<=16][highway='primary_link']{
  line-color:lighten(@primary,5%);
  line-width:1;
  }

/* secondary link */

#ways [zoom>=14][zoom<=16][highway='secondary_link']{
  line-color:lighten(@railway_platform,20%);
  line-width:1;
  }

/* tertiary link */

#ways [zoom>=14][zoom<=16][highway='tertiary_link']{
  line-color:lighten(@railway_platform,20%);
  line-width:0.7;
  }

/* residential */

#ways [zoom=14][highway='residential']{
  line-color:lighten(@railway_platform,25%);
  line-width:1;
  }

#ways [zoom=15][highway='residential']{
  line-color:lighten(@railway_platform,25%);
  line-width:2;
  }

#ways [zoom=16][highway='residential']{
  line-color:lighten(@railway_platform,25%);
  line-width:3;
  }

/* unclassified */

#ways [zoom=14][highway='unclassifed']{
  line-color:lighten(@railway_platform,25%);
  line-width:1;
  }

#ways [zoom=15][highway='unclassifed']{
  line-color:lighten(@railway_platform,25%);
  line-width:2;
  }

#ways [zoom=16][highway='unclassifed']{
  line-color:lighten(@railway_platform,25%);
  line-width:3;
  }

/* road */

#ways [zoom=14][highway='road']{
  line-color:lighten(@railway_platform,25%);
  line-width:1;
  }

#ways [zoom=15][highway='road']{
  line-color:lighten(@railway_platform,25%);
  line-width:2;
  }

#ways [zoom=16][highway='road']{
  line-color:lighten(@railway_platform,25%);
  line-width:3;
  }

/* service */

#ways [zoom=14][highway='service']{
  line-color:lighten(@railway_platform,25%);
  line-width:0.5;
  }

#ways [zoom=15][highway='service']{
  line-color:lighten(@railway_platform,25%);
  line-width:0.75;
  }

#ways [zoom=16][highway='service']{
  line-color:lighten(@railway_platform,25%);
  line-width:1;
  }

/* pedestrian */

#ways [zoom=15][highway='pedestrian']{
  line-color:lighten(@railway_platform,10%);
  line-width:1;
  line-dasharray:5,2;
  }

#ways [zoom=16][highway='pedestrian']{
  line-color:lighten(@railway_platform,10%);
  line-width:1;
  line-dasharray:5,2;
  }

/* track */

#ways [zoom=14][highway='track']{
  ::casement{
    line-color:lighten(@railway_platform,20%);
    line-width:1;
    line-dasharray:10,3;
    }
  ::fill{
    line-color:lighten(@background,4%);
    line-width:0.5;
    }
  }

#ways [zoom=15][highway='track']{
  ::casement{
    line-color:lighten(@railway_platform,20%);
    line-width:2;
    line-dasharray:10,3;
    }
  ::fill{
    line-color:lighten(@background,4%);
    line-width:1;
    }
  }

#ways [zoom=16][highway='track']{
  ::casement{
    line-color:lighten(@railway_platform,20%);
    line-width:3;
    line-dasharray:10,3;
    }
  ::fill{
    line-color:lighten(@background,4%);
    line-width:2;
    }
  }

/* ---- cycleways ---- */

#cycleways [zoom>=13][zoom<=16][horse='yes']{
  line-color:lighten(@yellow,10%);
  line-cap:round;
  [zoom=13]{line-width:1.5;}
  [zoom=14]{line-width:2;}
  [zoom=15]{line-width:2.5;}
  [zoom=16]{line-width:3;}
  }

#cycleways [zoom>=13][zoom<=16][bicycle='yes']{
  line-color:lighten(@red,10%);
  line-cap:round;
  [zoom=13]{line-width:1.5;}
  [zoom=14]{line-width:2;}
  [zoom=15]{line-width:2.5;}
  [zoom=16]{line-width:3;}
  }

#cycleways [zoom>=13][zoom<=16][bicycle='designated']{
  line-color:lighten(@purple,10%);
  line-cap:round;
  [zoom=13]{line-width:1.5;}
  [zoom=14]{line-width:2;}
  [zoom=15]{line-width:2.5;}
  [zoom=16]{line-width:3;}
  }
/*
#cycleways [zoom>=13][zoom<=16][foot='yes']{
  line-color:lighten(@green,10%);
  line-width:1.5;
  line-cap:round;
  }
*/

/* ---- railways ---- */

#ways [route='train'][zoom>=12][zoom<=16]{
  line-width:0.6;
  [zoom=12]{line-color:lighten(@black,70%);}
  [zoom=13]{line-color:lighten(@black,65%);}
  [zoom=14]{line-color:lighten(@black,60%);}
  [zoom=15]{line-color:lighten(@black,55%);}
  [zoom=16]{line-color:lighten(@black,50%);}
  }

/* ---- trams ---- */

#tramline [zoom>=13][zoom<=16]{
  ::casement{
    line-width:1.2;
    line-color:@railway_platform;
    }
  ::fill{
    line-width:0.6;
    line-color:@white;
    line-dasharray:8,4;
    }
  }

/* -----------------------------------------------
                      POINTS
   ----------------------------------------------- */

/* ---- tourism points ---- */

#tourismpoint [zoom>=14]{
  ::blur{
    marker-fill:@yellow;
    marker-type:ellipse;
    marker-width:8;
    marker-height:8;
    marker-max-error:4;
    marker-line-width:0;
    image-filters:agg-stack-blur(4,4);
    }
  }

#nodes [zoom>=15][amenity='bbq']{
  marker-type:ellipse;
  marker-width:6;
  marker-height:6;
  marker-fill:@purple;
  }

#nodes [zoom>=15][amenity='drinking_water']{
  marker-type:ellipse;
  marker-width:6;
  marker-height:6;
  marker-fill:@blue;
  }

#nodes [zoom>=15][amenity='bicycle_parking']{
  marker-type:ellipse;
  marker-width:6;
  marker-height:6;
  marker-fill:@orange;
  }

#nodes [zoom>=14][amenity='bicycle_rental']{
  marker-type:ellipse;
  marker-width:6;
  marker-height:6;
  marker-fill:@green;
  }

#nodes [zoom>=14][amenity='hospital']{
  marker-type:ellipse;
  marker-width:6;
  marker-height:6;
  marker-fill:@red;
  }

#nodes [zoom>=14][amenity='toilets']{
  marker-type:ellipse;
  marker-width:6;
  marker-height:6;
  marker-fill:@indigo;
  }

#nodes [zoom>=14][zoom<=16][railway='station']{
  marker-type:ellipse;
  marker-width:8;
  marker-height:8;
  marker-fill:@white;
  }

#nodes [zoom>=15][zoom<=16][railway='tram_stop']{
  marker-type:ellipse;
  marker-fill:@railway_platform;
  marker-width:6;
  marker-height:6;
  marker-line-color:@white;
  }
