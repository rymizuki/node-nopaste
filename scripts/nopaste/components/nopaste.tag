import app from 'nopaste/app'
import 'nopaste/components/nopaste-form'
import 'nopaste/components/nopaste-result'

<nopaste>
  <nopaste-header>
    <h1>No Paste!</h1>
  </nopaste-header>
  <nopaste-form />
  <nopaste-result result={ result }></nopaste-result>

  <script>
    onChangeState () {
      let state = app.store.getState()
      this.update(state)
    }

    onMount () {
      app.subscribe(this.onChangeState)
      let state = app.store.getState()
      this.update(state)
    }

    this.on('mount', this.onMount)
  </script>
</nopaste>
