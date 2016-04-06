import app from 'nopaste/app'
import { save } from 'nopaste/repositories/content'

export function updateTitle (title) {
  app.ac('UPDATE_TITLE', {title})
}

export function updatetext (text) {
  app.ac('UPDATE_TEXT', {text})
}

export function submit (title, text) {
  app.ac('SUBMIT_TEXT', function () {
    return save({ title, text, })
  })
}
