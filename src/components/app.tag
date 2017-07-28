import './munis-map/munis-map.tag'
import './munis-map/munis-map-legend.tag'
import './map-infobox/map-infobox.tag'
import './map-searchbox/map-searchbox.tag'

<cor-mj-munis-map class={ getClass('app-wrapper') }>
  <map-searchbox ref='searchbox' />
  <map-infobox ref='infobox' config={ opts.config } />
  <munis-map ref='munis-map' />
  <munis-map-legend ref='munis-map-legend' />
</cor-mj-munis-map>
