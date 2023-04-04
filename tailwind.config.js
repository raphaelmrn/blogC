module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],

  theme: {
    fontFamily: {
      'sans': ['Oswald']
      },
      extend: {
        spacing: {
          '8xl': '96rem',
          '9xl': '128rem',
    },
    borderRadius: {
      '4xl': '2rem',
      },
    }
  }
}
