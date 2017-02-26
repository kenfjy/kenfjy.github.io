"use strict";

/*
 * html server
 */

let express = require('express'),
    app = express(),
    server = require('http').createServer(app),
    port = process.env.PORT || 80;

httpSetup();
server.listen(port, () => {
  console.log('listening on ' + port);
});

/* http setup */
function httpSetup() {
  app.get('/', function(request, response) {
    response.sendFile(__dirname + '/index.html');
  });

  app.use('/about.html', express.static('about.html'));
  app.use('/contact.html', express.static('contact.html'));
  app.use('/work', express.static('work'));

  app.use('/css', express.static('css'));
  app.use('/js', express.static('js'));
  app.use('/img', express.static('img'));
  app.use('/tag', express.static('tag'));

  app.use(function(err, req, res, next) {
    if (debug_f) {
      console.error(err.stack);
    }
    res.status(500).send('Something broke!');
  });
};

