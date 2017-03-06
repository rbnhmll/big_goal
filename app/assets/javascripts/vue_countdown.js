Vue.component('countdown', {
  template: '<p>Countdown</p>',
  props: {
  }
});

var app = new Vue({
  el: '#app',
  data: {
    nowSeconds: Date.now(),
    secondsInDay: 86400,
    secondsInHour: 3600,
    deadlineSecs: 0,
    url: window.location.href + ".json"
  },
  methods: {
    getNow: function() {
      setInterval(function(){
        app.nowSeconds = Date.now();
        if (this.secondsLeft <= 0) {
          clearInterval();
        }
      }, 1000);
    }
  },
  computed: {
    secondsLeft: function() {
      return Math.round( (this.deadlineSecs - this.nowSeconds) / 1000 );
    },
    days: function() {
      return Math.floor(this.secondsLeft / this.secondsInDay)
    },
    hours: function() {
      return Math.floor( (this.secondsLeft % this.secondsInDay) / 60 / 60 );
    },
    minutes: function() {
      return Math.floor( (this.secondsLeft % this.secondsInHour ) / 60);
    },
    seconds: function() {
      return Math.floor(this.secondsLeft % 60);
    }
  },
  mounted: function() {
    this.getNow();
    axios.get(this.url)
    .then(function (response) {
      var data = response.data.deadline;
      app.deadlineSecs = new Date(data).getTime();
    })
    .catch(function (error) {
      console.error(error);
    });
  }
});