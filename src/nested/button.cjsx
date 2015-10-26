React = require 'react/addons'
Tooltip = require './tooltip'

module.exports = React.createClass
  render: ->
    console.info "Button constants:", constants
    <button>{@props.children}</button>
