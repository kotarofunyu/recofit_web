import Vue from 'vue/dist/vue.esm.js'
// faq toggle
new Vue({
    el: '#qa',
    data: {
        show_contents: []
    },
    methods: {
        toggle: function(data) {
            if (this.show_contents.indexOf(data) >= 0) {
                this.show_contents = this.show_contents.filter(n => n !==data)
            }
            else {
                this.show_contents.push(data)
            }
        }
    }
})
