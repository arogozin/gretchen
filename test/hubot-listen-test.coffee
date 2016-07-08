chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-listen', ->
  request = null
  response = null

  beforeEach ->
    @fn = null
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
      router:
        post: (_, fn) => @fn = fn

    require('../src/gretchen') @robot

  it 'registers a respond listener', ->
    #expect(@robot.respond).to.have.been.calledWith(/hello/)
    @fn
