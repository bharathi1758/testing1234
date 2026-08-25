looker.plugins.visualizations.add({
  id: "test_viz",
  label: "Test Viz",

  create: function(element) {
    element.innerHTML = "<h1>Hello Looker</h1>";
  },

  updateAsync: function(data, element, config, queryResponse, details, done) {
    done();
  }
});
