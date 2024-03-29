# viz-minijobs-munis-map-nrw

Display data about minijobs distribution across german state North-Rhine Westphalia

[Preview via gh-pages](https://correctiv.github.io/viz-minijobs-munis-map-nrw/dist/)

Based on [wbkd/yet-another-webpack-es6-starterkit](https://github.com/wbkd/yet-another-webpack-es6-starterkit)

Uses [d3](https://d3js.org) and [riotjs](https://riotjs.com)

## base visualization setup for correctiv cms

### javascript

```
dist/bundle.js
```

### styles

```
dist/styles/bundle.css
```

## for use in correctiv cms plugins:

```html
<figure class="figure -full-width">
  <h2>Hier wohnen die Minijobber in NRW</h2>
  <div class="figure__container">
    <div data-riot-mount="cor-mj-munis-map-nrw"></div>
  </div>
  <div class="figure__credits">
    <p>Aufschlüsselung der Daten nach Gemeinden, bezogen auf den Wohnort der Minijobber.</p>
    <p><strong>Daten:</strong> Statistiken der Arbeitsagentur, <a href="https://correctiv.org/a/1861">zum Download</a></p>
  </div>
</figure>
```


## Development

### Installation

```
npm install
```

### Start Dev Server

```
npm run dev
```

### Build Prod Version

```
npm run build
```

### Features:

* ES6 Support via [babel-loader](https://github.com/babel/babel-loader)
* SASS Support via [sass-loader](https://github.com/jtangelder/sass-loader)
* Linting via [eslint-loader](https://github.com/MoOx/eslint-loader)
* Hot Module Replacement

When you run `npm run build` we use the [extract-text-webpack-plugin](https://github.com/webpack/extract-text-webpack-plugin) to move the css to a separate file and included in the head of your `index.html`, so that the styles are applied before any javascript gets loaded. We disabled this function for the dev version, because the loader doesn't support hot module replacement.
