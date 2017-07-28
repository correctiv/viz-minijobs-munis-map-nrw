import * as d3 from '../../scripts/lib/d3.js'

const colors = [ '#ffffe5', '#fff7bc', '#fee391', '#fec44f', '#fe9929', '#ec7014', '#cc4c02', '#993404', '#662506' ]
export default d3.scaleQuantile().domain([5, 10]).range(colors)
