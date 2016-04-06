import * as ac from './action-creator'

<nopaste-result>
  <div class="modal" style="display: { result ? 'block' : 'none' }">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button class="close" type="button" onclick={ close }><span>&times;</span></button>
          <h4 class="modal-title">{ result.content.title }</h4>
        </div>
        <div class="modal-body">
          <pre>http://{ location.host }/#post/{ result.content.id }</pre>
        </div>
        <div class="modal-footer">
          <button class="btn btn-default" onclick={ close }>close</button>
        </div>
      </div>
    </div>
  </div>
  <script>
    close () {
      ac.close()
    }
  </script>
</nopaste-result>
