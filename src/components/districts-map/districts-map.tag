import * as d3 from '../../scripts/lib/d3.js'
import renderMap from './render_map.js'
import hilight from './hilight_path.js'
import unhilight from './unhilight_path.js'

<districts-map class={ getClass() }>
  <div class={ getClass('svg-wrapper') } id='svg-map' />

  this.on('mount', () => {
    this.selection = renderMap({
      element: d3.select('#svg-map'),
      getClass: this.getClass
    })
  })

  riot.control.on(riot.EVT.hilight, id => this.hilighted = hilight(this.selection, id, this.hilighted))
  riot.control.on(riot.EVT.unhilight, () => unhilight(this.hilighted))

</districts-map>
