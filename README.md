# hubot-gretchen

Creates a HTTP endpoint to tell hubot secrets.  Like Gretchen Weiners.

See [`src/gretchen.coffee`](src/gretchen.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-gretchen --save`

Then add **hubot-gretchen** to your `external-scripts.json`:

```json
[
  "hubot-gretchen"
]
```

## Sample Interaction

```
// raw json, must specify Content-Type: application/json
curl -X POST -H "Content-Type: application/json" -d '{"secret":"I'm up to no good"}' http://127.0.0.1:8080/hubot/chatsecrets/room
```
