/* 
 * RIOT
 */

<index_project>
    <a href="./work/{ meta }.html">
      <img class="project_cover" src="./img/cover/{ meta }_icon.{ img }" alt="{ name }" />
      <div class="project_meta">
        <h2>{ name }</h2><br/>
        <p>{ explanation }</p>
        <ul>
          <li each={ tag }> 
            { title.toUpperCase() }
          </li>
        </ul>
      </div><!-- div.project_meta -->
    </a>

<script>
  var self = this;
  this.name = opts.name;
  this.meta = opts.meta;
  this.img = opts.img;
  this.explanation = opts.explanation;
  this.tag = [];
  for (var i=0; i<opts.tag.length; i++) {
    this.tag.push({title: opts.tag[i] });
  }

  this.on('mount', function() {});
</script>

</index_project>
