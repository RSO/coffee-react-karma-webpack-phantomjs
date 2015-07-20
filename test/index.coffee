require './support/bind-polyfill'
require './support/fake_timers'

testsContext = require.context ".", true, /_spec$/
testsContext.keys().forEach testsContext
