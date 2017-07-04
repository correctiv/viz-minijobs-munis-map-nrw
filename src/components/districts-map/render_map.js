import * as d3 from '../../scripts/lib/d3.js'
import {geoData} from '../../data/entry.js'
import getColor from './get_color.js'

export default ({
  element,
  getClass
}) => {
  const path = d3.geoPath().projection(d3.geoMercator().fitSize([600, 600], geoData))

  return element.append('svg')
      .attr('class', getClass('svg'))
      .attr('preserveAspectRatio', 'xMinYMin meet')
      .attr('viewBox', '0 0 600 600')
    .append('g')
    .selectAll('path').data(geoData.features).enter().append('path')
      .attr('class', getClass('path'))
      .attr('d', path)
      .attr('fill', d => getColor(+d.data.pwi))
      .on('mouseover', d => {
        riot.control.trigger(riot.EVT.hilight, d.id)
        riot.control.trigger(riot.EVT.updateInfobox, d.data)
      })
}
