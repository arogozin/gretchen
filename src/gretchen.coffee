# Description
#   Creates a HTTP endpoint to tell hubot secrets.  Like Gretchen Weiners.
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Richard Hunt <>

module.exports = (robot) ->
  robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
    console.log robot
    robot.messageRoom req.params.room, "I have a secret: #{req.body && req.body.secret}"
    res.send('OK')


    # try
    #   res.writeHead 200, 'OK'
    # catch error
    #   res.writeHead 500, 'Internal Server Error'
    #   res.write error.stack
