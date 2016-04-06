export default function contentReducer ({action}, previous={}) {
  let content = previous.content || {}
  switch (action.type) {
    case 'INIT':
      return Object.assign({}, previous, {
        content: {
          title: 'no title',
          text:  '',
        }
      })
    case 'UPDATE_TITLE':
      content.title = action.title
      return Object.assign({}, previous, {content})
    case 'UPDATE_TEXT':
      content.text = action.text
      return Object.assign({}, previous, {content})
    case 'SUBMIT_TEXT_RESOLVE':
      content = action.content
      return Object.assign({}, previous, {
        result: { content }
      })
    default:
      return previous
  }
}
