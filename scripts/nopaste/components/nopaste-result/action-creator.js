import app from 'nopaste/app'

export function close () {
  app.ac('CLOSE_RESULT', {})
}
