module.exports = function (api) {
  const validEnv = ['development', 'test', 'production'];
  const currentEnv = api.env();
  const isTestEnv = api.env('test');
  const isProductionEnv = api.env('production');

  if (!validEnv.includes(currentEnv)) {
    throw new Error(
      'Please specify a valid `NODE_ENV` or ' +
        '`BABEL_ENV` environment variables. Valid values are "development", ' +
        '"test", and "production". Instead, received: ' +
        JSON.stringify(currentEnv) +
        '.'
    );
  }

  const presets = [
    ["@babel/preset-env", { modules: false }],
    "@babel/preset-react"
  ];

  const plugins = [
    'babel-plugin-macros',
    ["@babel/plugin-proposal-private-methods", { loose: true }],
    '@babel/plugin-syntax-dynamic-import',
    isTestEnv && 'babel-plugin-dynamic-import-node',
    '@babel/plugin-transform-destructuring',
    [
      '@babel/plugin-proposal-class-properties',
      {
        loose: true
      }
    ],
    [
      '@babel/plugin-proposal-object-rest-spread',
      {
        useBuiltIns: true
      }
    ],
    [
      '@babel/plugin-proposal-private-property-in-object',
      {
        loose: true
      }
    ],
    [
      '@babel/plugin-transform-runtime',
      {
        helpers: false
      }
    ],
    [
      '@babel/plugin-transform-regenerator',
      {
        async: false
      }
    ]
  ].filter(Boolean);

  return {
    presets,
    plugins
  };
};
