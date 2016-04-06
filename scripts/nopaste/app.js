import syntagme from 'syntagme'
import contentReducer from 'nopaste/reducers/content'
import resultReducer  from 'nopaste/reducers/result'

const app = syntagme()

app.reducer(contentReducer)
app.reducer(resultReducer)

app.listen()

export default app
