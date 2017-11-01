module.exports = {
    root: true,

    parser: 'babel-eslint',

    parserOptions: {
        sourceType: 'module'
    },

    "env": {
        "browser": true,
        "es6": true,
        "node": true,
        'commonjs': true
    },

    extends: 'eslint:recommended',

    // required to lint *.vue files
    plugins: [
        'html'
    ],

    // add your custom rules here
    'rules': {
        "indent": [
            "off",
            4
        ],

        "linebreak-style": [
            "error",
            "unix"
        ],

        "quotes": [
            "warn",
            "single"
        ],

        "semi": [
            "warn",
            "always"
        ],

        "no-console": 0,

        "no-undef": 0,

        "no-unused-vars": 0,

        "no-unreachable": 0,

        // allow paren-less arrow functions
        'arrow-parens': 0,
    }
};
