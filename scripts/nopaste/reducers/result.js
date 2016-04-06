export default function resultReducer ({action}, previous={}) {
  switch (action.type) {
    case 'INIT':
      return Object.assign({}, previous, {
        result: null
      })
    case 'CLOSE_RESULT':
      return Object.assign({}, previous, {
        result: null
      })
    default:
      return previous
  }
}
