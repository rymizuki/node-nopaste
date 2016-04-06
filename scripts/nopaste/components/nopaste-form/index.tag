import * as ac from './action-creator'

<nopaste-form>
  <form class="container-fluid">
    <div class="form-group">
      <label for="title">title</label>
      <input class="form-control" type="text" id="title" name="title" onkeyup={ updateTitle }>
    </div>
    <div class="form-group">
      <label for="text">text</label>
      <textarea class="form-control" name="text" id="text" rows="10" onkeyup={ updatetext }></textarea>
    </div>
    <button class="btn btn-primary" type="button" onclick={ submit }>submit</button>
  </form>
  <script>
    updateTitle (e) {
      let value = e.target.value
      if (this.content.title != value) ac.updateTitle(value)
    }

    updatetext (e) {
      let value = e.target.value
      if (this.content.text != value) ac.updatetext(value)
    }

    submit () {
      ac.submit(this.title.value, this.text.value)
      return false
    }

    onUpdate (data={}) {
      if (!data || data.content == null) return
      if (data.content.title != null) {
        this.title.value = data.content.title
      }
      if (data.content.text != null) {
        this.text.value = data.content.text
      }
    }

    this.on('update', this.onUpdate)
  </script>
</nopaste-form>
