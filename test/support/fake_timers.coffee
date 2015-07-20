beforeEach ->
  @clock = sinon.useFakeTimers()

afterEach ->
  @clock.restore()
