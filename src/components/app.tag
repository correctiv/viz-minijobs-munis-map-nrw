import './districts-map/districts-map.tag'
import './districts-map/districts-map-legend.tag'
import './map-infobox/map-infobox.tag'
import './map-searchbox/map-searchbox.tag'

<cor-mj-munis-map class={ getClass('app-wrapper') }>
  <map-searchbox ref='searchbox' />
  <map-infobox ref='infobox' config={ opts.config } />
  <districts-map ref='districts-map' />
  <districts-map-legend ref='districts-map-legend' />
</cor-mj-munis-map>
