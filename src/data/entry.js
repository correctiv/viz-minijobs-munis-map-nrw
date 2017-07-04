import * as topojson from 'topojson'
import * as d3 from '../scripts/lib/d3.js'

const _data = d3.csvParse(require('raw!./munis_nrw.csv'))
const search = str => _data.filter(d => d.search.indexOf(str) > -1 || d.plz.indexOf(str) === 0)
const data = {}
_data.map(d => data[d.ags] = d)
const geoSrc = require('json!./nrw.topo.json')
const geoData = topojson.feature(geoSrc, geoSrc.objects.nrw)
geoData.features.map(f => {
  const id = f.properties.AGS
  f.data = data[id]
  f.data.name = f.properties.GEN
  f.id = id
})

module.exports = {
  search,
  geoData
}
