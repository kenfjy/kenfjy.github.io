/* 
 * RIOT
 */

<index_project>
  <div class="project">
    <a href="./work/{ meta }.html">
      <img class="project_cover" src="./img/cover/{ meta }_icon.jpg" alt="{ name }" />
      <div class="project_meta">
        <h2>{ name }</h2><br/>
        <p>Creating an experience of self-reflection through verbalization</p>
        <ul>
          <li each={ tag }> 
            { title.toUpperCase() }
          </li>
        </ul>
      </div><!-- div.project_meta -->
    </a>
  </div><!-- div.project -->

<script>
  var self = this;
  this.name = opts.name;
  this.meta = opts.meta;
  this.tag = opts.tag;

  this.on('mount', function() {});
</script>

</index_project>
