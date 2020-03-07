import Vue from 'vue/dist/vue.esm.js'
///????????????????
new Vue({
    el: '#form',
    data: {
        comment:"",
        eventTitle: "種目"
    },
    computed: {
        commentCount: function() {
            return this.comment.length;
        }
    }
})
