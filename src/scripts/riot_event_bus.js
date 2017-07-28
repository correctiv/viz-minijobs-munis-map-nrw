import * as d3 from './lib/d3.js'

// event names
riot.EVT = {
  updateInfobox: 'uib',
  hideInfobox: 'hib',
  clearResults: 'cr',
  hilight: 'h',
  unhilight: 'u'
}

// event bus
riot.control = riot.observable()
