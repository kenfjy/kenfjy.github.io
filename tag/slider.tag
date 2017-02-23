/*
 *  RIOT
 */

<slider>
  <input type="range" ref="slide" 
    oninput = {change} onchange = {change} 
    min=0 step=1 max={names.length-1} value={selectedRange}></input>

  <ul class="slider_names">
    <li each={ names } state={ state }>
      <label> { title } </label>
    </li>
  </ul>

<script>
  var self = this;
  this.type = opts.type;
  this.names = opts.names;
  this.selectedRange = 0;
  this.delayMills = 300;

  this.on('mount', function() {
    this.updateRange();
  });

  changeSlider(_num) {
    this.refs.slide.value = this.selectedRange = _num;
    this.updateRange();
  }

  change(e) {
    this.selectedRange = e.target.value;
    this.updateRange();
  };

  updateRange() {
    for (var i=0; i<this.names.length; i++) {
      if (i == this.selectedRange) {
        this.names[i].state = 'active';
      } else {
        this.names[i].state = 'sleep';
      }
    }
    this.update();
  };

  animate() {
    if (this.selectedRange != this.names.length-1) {
      setTimeout(function() {
          self.selectedRange++;
          self.updateRange();
          self.animate();
      }, this.delayMills);
    }
  };

  obs.on('slider-updateData', function(_params) {
    if (self.type == _params.type) {
      self.names = _params.data;
      if (self.selectedRange >= self.names.length) {
        self.selectedRange = self.names.length-1;
      }
      self.updateRange();
    }
  });

  obs.on('slider-anim', function(_params) {
    if (_params.delayMillis !== undefined) {
      self.delayMills = _params.delayMillis;
    }
    if (_params.index !== undefined) {
      self.selectedRange = _params.index;
      self.updateRange();
    }
    self.animate();
  });
</script>

</slider>
