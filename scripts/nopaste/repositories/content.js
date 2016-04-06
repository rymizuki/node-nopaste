import qwest from 'qwest'

export function save ({title, text}) {
  return qwest.post('/api/content', {
    title,
    text,
  }, {dataType: 'json'}).then((xhr, response) => {
    return response
  })
}
