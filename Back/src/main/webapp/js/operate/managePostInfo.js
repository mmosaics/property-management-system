$(function () {


    var postData = {
        url: 'postinfos/users',
        pagination: {},
        userPosts:[]

    };

    var vue = new Vue({
        el:"#userPostDataArea",
        data:postData,
        mounted: function () {
            this.list(0);
        },
        methods: {
            list: function (start) {
                var getUrl = this.url + "?start=" + start;
                axios.get(getUrl).then( function(response) {
                    vue.pagination = response.data;
                    vue.userPosts = response.data.content;
                });
            },
            listStatistics: function() {
                var url = this.url + "/statistics";
                axios.get(url).then(function (value) {
                    vue.staData = value.data;
                });
            },
            deletePost: function(id) {
                var url = "postinfos/" + id;

                if(!checkDeleteLink("该条消息"))
                    return;

                axios.delete(url).then(function (value) {
                    vue.list(0);
                });
            },
            jumpByNumber: function (num) {
                jumpByNumber(num, vue);
            },
            jump: function (page) {
                jump(page,vue);
            },
            addClass: function (number) {
                if(number == (vue.pagination.number + 1))
                    return 'active';
                return '';
            }

        }
    });

    var statisticsVue = new Vue({
        el:"#statisticsDataArea",
        data: {
            url: 'postinfos/users',
            staData:{},
            latestDate:{}
        },
        mounted: function () {
            this.listLatestTime();
            this.listStatistics();
        },
        methods: {
            listStatistics: function() {
                var url = this.url + "/statistics";
                axios.get(url).then(function (value) {
                    statisticsVue.staData = value.data;
                })
            },
            listLatestTime:function () {
                var url = this.url + "/latestposts";
                axios.get(url).then(function (value) {
                    statisticsVue.latestDate = value.data;
                })
            }
        }
    });

    var announceData = {
        url:"postinfos/announcement",
        pagination: {},
        announcements:[],
        readyAnnounce: {
            "id":0,
            "type":"announcement",
            "headline":"",
            "message":"",
            "date":0,
            "user":null,
            "formateDate":""
        }
    };

    var announceVue = new Vue({
        el:"#announcementDataArea",
        data:announceData,
        mounted: function () {
            this.list(0);
        },
        methods: {
            list: function (start) {
                var getUrl = this.url + "?start=" + start;
                axios.get(getUrl).then(function (response) {
                    announceVue.pagination = response.data;
                    announceVue.announcements = response.data.content;
                });
            },
            deletePost: function(id) {
                var url = "postinfos/" + id;

                if(!checkDeleteLink("该条公告"))
                    return;

                axios.delete(url).then(function (value) {
                    announceVue.list(0);
                });
            },
            addAnnouncement: function() {
                var url = "postinfos/announcements";
                axios.post(url, this.readyAnnounce).then(function (value) {
                    vue.list(0);
                });
            },
            jumpByNumber: function (num) {
                jumpByNumber(num, announceVue);
            },
            jump: function (page) {
                jump(page, announceVue);
            },
            addClass: function (number) {
                if (number == (announceVue.pagination.number + 1))
                    return 'active';
                return '';
            }
        }

    });

});

function showAddAnnounceModal() {
    $("#addAnnounce").modal("show");
}