#cities [zoom>=10][zoom<=16]{
  text-name:[name];
  text-face-name:'Roboto Condensed Bold';
  text-fill:lighten(@black,10%);
  text-halo-fill:fadeout(@white,10%);
  text-halo-radius:2;
  text-dx:4;
  text-dy:0;
  text-min-padding:8;
  text-placement:point;
  text-character-spacing:5;
  text-label-position-tolerance:20;
  text-allow-overlap:false;
  text-transform:uppercase;
  text-horizontal-alignment:middle;
  [zoom=10]{text-size:16;}
  [zoom=11]{text-size:18;}
  [zoom=12]{text-size:22;}
  [zoom=13]{text-size:26;}
  [zoom=14]{text-size:30;}
  [zoom=15]{text-size:34;}
  [zoom=16]{text-size:38;}
}
  
#suburbs [zoom>=13][zoom<=16]{
  text-name:[name];
  text-face-name:'Roboto Condensed Regular';
  text-fill:lighten(@suburb,10%);
  text-halo-fill:fadeout(@white,10%);
  text-halo-radius:2;
  text-dx:4;
  text-dy:0;
  text-min-padding:8;
  text-placement:interior;
  text-character-spacing:2;
  text-label-position-tolerance:50;
  text-allow-overlap:false;
  text-align:center;
  text-wrap-width:20;
  [zoom=13]{text-size:12;}
  [zoom=14]{text-size:16;}
  [zoom=15]{text-size:19;}
  [zoom=16]{text-size:22;}
}

#wayslabels [zoom>=13][zoom<=16][highway='motorway']{
  text-face-name:'CartoGothic Std Bold';
  text-name:[name];
  text-max-char-angle-delta:18;
  text-label-position-tolerance:20;
  text-min-distance:200;
  text-fill:lighten(@black,50%);
  text-halo-fill:@white;
  text-halo-radius:2;
  text-min-padding:2;
  text-character-spacing:1;
  text-placement:line;
  /*text-transform:uppercase;*/
  [zoom=13]{text-size:10;text-spacing:30;}
  [zoom=14]{text-size:12;text-spacing:40;}
  [zoom=15]{text-size:14;text-spacing:50;}
  [zoom=16]{text-size:16;text-spacing:80;}
  }

#wayslabels [zoom>=14][zoom<=16][highway='trunk']{
  text-face-name:'CartoGothic Std Book';
  text-name:[name];
  text-max-char-angle-delta:18;
  text-label-position-tolerance:20;
  text-fill:lighten(@black,50%);
  text-halo-fill:@white;
  text-halo-radius:2;
  text-min-padding:2;
  text-min-distance:100;
  text-character-spacing:1;
  text-placement:line;
  /*text-transform:uppercase;*/
  [zoom=14]{text-size:10;text-spacing:80;}
  [zoom=15]{text-size:12;text-spacing:90;}
  [zoom=16]{text-size:14;text-spacing:100;}
  }

#wayslabels [zoom>=14][zoom<=16][highway='primary']{
  text-face-name:'CartoGothic Std Book';
  text-name:[name];
  text-max-char-angle-delta:18;
  text-label-position-tolerance:20;
  text-fill:lighten(@black,50%);
  text-halo-fill:@white;
  text-halo-radius:2;
  text-min-padding:2;
  text-min-distance:100;
  text-character-spacing:1;
  text-placement:line;
  /*text-transform:uppercase;*/
  [zoom=14]{text-size:10;text-spacing:80;}
  [zoom=15]{text-size:12;text-spacing:90;}
  [zoom=16]{text-size:14;text-spacing:100;}
  }

#wayslabels [zoom>=14][zoom<=16][highway='secondary']{
  text-face-name:'CartoGothic Std Book';
  text-name:[name];
  text-max-char-angle-delta:18;
  text-label-position-tolerance:20;
  text-fill:lighten(@black,50%);
  text-halo-fill:@white;
  text-halo-radius:2;
  text-min-padding:5;
  text-min-distance:100;
  text-character-spacing:1;
  text-placement:line;
  /*text-transform:uppercase;*/
  [zoom=15]{text-size:10;text-spacing:90;}
  [zoom=16]{text-size:12;text-spacing:100;}
  }

#wayslabels [zoom>=15][zoom<=16][highway='tertiary']{
  text-face-name:'CartoGothic Std Book';
  text-name:[name];
  text-max-char-angle-delta:18;
  text-label-position-tolerance:20;
  text-fill:lighten(@black,50%);
  text-halo-fill:@white;
  text-halo-radius:2;
  text-min-padding:5;
  text-min-distance:100;
  text-character-spacing:1;
  text-placement:line;
  /*text-transform:uppercase;*/
  text-size:10;
  text-spacing:90
  }

#wayslabels [zoom=16][highway='residential']{
  text-face-name:'CartoGothic Std Book';
  text-name:[name];
  text-max-char-angle-delta:18;
  text-label-position-tolerance:20;
  text-fill:lighten(@black,50%);
  text-halo-fill:@white;
  text-halo-radius:2;
  text-min-padding:5;
  text-min-distance:100;
  text-character-spacing:1;
  text-placement:line;
  /*text-transform:uppercase;*/
  text-size:10;
  text-spacing:90
  }

#tourismpoint [zoom>=15]{
  text-name:[name];
  text-face-name:'DejaVu Sans Condensed Bold';
  text-size:12;
  text-placement-type:simple;
  text-placements:"E,W,N,S";
  text-character-spacing:1;
  text-dx:7;
  text-dy:7;
  text-wrap-width:40;
  text-allow-overlap:false;
  text-halo-fill:@white;
  text-halo-radius:2;
  }

#buildinglabels [building='yes'][zoom=16]{
  text-name:[name];
  text-face-name:'CartoGothic Std Book';
  text-fill:lighten(@black,20%);
  text-size:10;
  text-placement:interior;
  text-wrap-width:25;
  text-min-distance:15;
  }

#nodes [zoom>=14][railway='station']{
  text-name:[name];
  text-face-name:'CartoGothic Std Book';
  text-fill:lighten(@black,20%);
  text-size:12;
  text-character-spacing:1;
  text-placement-type:simple;
  text-placements:"E,W,NE,SE,NW,SW";
  text-wrap-width:25;
  text-min-distance:2;
  text-halo-fill:@white;
  text-halo-radius:2;
  text-dx:7;
  text-avoid-edges:true;
  text-allow-overlap:false;
  text-label-position-tolerance:8;
  }
