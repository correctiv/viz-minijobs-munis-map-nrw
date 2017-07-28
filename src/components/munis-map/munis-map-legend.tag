import getColor from './get_color.js'

<munis-map-legend class={ getClass() }>

  <span class={ getClass('annotation') }>Anteil der <strong>ausschließlich</strong> geringfügig Beschäftigten am Wohnort</span>
  <ul class={ getClass('list')}>
    <li each={ ticks } class={ parent.getClass('list-item') }>
      { value }&nbsp;%<span style="background-color:{ color };" />
    </li>
  </ul>

  this.ticks = getColor.quantiles().map(q => {
    return {
      color: getColor(q),
      value: Math.round(q * 10) / 10
    }
  })

</munis-map-legend>
