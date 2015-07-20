React = require 'react/addons'

module.exports = React.createClass
  render: ->
    <button>{@props.children}</button>
