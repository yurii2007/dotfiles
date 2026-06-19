return {
  'rcarriga/nvim-notify',
  lazy = false,
  opts = {
    background_colour = '#000000',
    fps = 30,
    icons = {
      DEBUG = '',
      ERROR = '',
      INFO = '',
      TRACE = '✎',
      WARN = '',
    },
    level = 2,
    minimum_width = 50,
    render = 'wrapped-compact',
    stages = 'fade_in_slide_out',
    time_formats = {
      notification = '%T',
      notification_history = '%FT%T',
    },
    timeout = 5000,
    top_down = true,
  },
}
