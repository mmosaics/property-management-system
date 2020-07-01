$(function () {

    var announceData = {
        url: 'postinfos/announcement',
        announce: {"id":0,"type":"","headline":"","message":"","date":1553317200000,"formateDate":"","user":null},
        test:''
    };

    var vue = new Vue({
        el: "#announceDetailArea",
        data: announceData,
        mounted: function () {
            this.get();
        },
        methods: {
            get: function () {
                var id = getUrlParms("id");
                var url = this.url + "/" + id;
                axios.get(url).then(function (value) {
                    vue.announce = value.data;
                });
            },
            commitChange: function () {
                var url = this.url + "/" + this.announce.id;
                axios.put(url, this.announce).then(function (value) {
                    location.href="admin_postinfos";
                });
            }
        }
    });

});