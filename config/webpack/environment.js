const { environment } = require('@rails/webpacker');

// Add an entry point for your application
environment.config.merge({
  entry: {
    application: ['./app/javascript/packs/application.js'],
  },
});

module.exports = environment;
