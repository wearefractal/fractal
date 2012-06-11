fractal = require '../'
should = require 'should'
require 'mocha'


describe 'which()', ->
  it 'should work', (done) ->
    should.exist fractal.which 'node'
    done()

describe 'seconds', ->
  describe 'convert()', ->
    it 'should work', (done) ->
      expected =
        days: 1
        hours: 1
        minutes: 3
        seconds: 30
      time = fractal.seconds.convert 90210
      time.should.eql expected
      done()

  describe 'pretty()', ->
    it 'should work', (done) ->
      time = fractal.seconds.pretty
        days: 1
        hours: 1
        minutes: 3
        seconds: 30
      time.should.eql "1 days 1 hours 3 minutes 30 seconds"
      done()

  describe 'small()', ->
    it 'should work', (done) ->
      time = fractal.seconds.small
        days: 1
        hours: 1
        minutes: 3
        seconds: 30
      time.should.eql "1:1:3:30"
      done()