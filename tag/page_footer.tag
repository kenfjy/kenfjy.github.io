/*
 *  RIOT
 */

<page_footer>
  <footer>
    <p><a href="{ link }">contact</a></p>
  </footer>

<script>
  var self = this;
  this.link = opts.link;
  if (this.link == undefined || this.link == '') {
    this.link = './contact.html';
  }
  this.on('mount', function() {
  });
</script>

</page_footer>
