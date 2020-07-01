$(function () {

    var userData = {
        url: 'users',
        users: [],
        user: {"id":0,"name":"","gender":"","age":"","phone":""},
        pagination: {}
    };

    var vue = new Vue({
        el: "#userDataArea",
        data: userData,
        mounted: function() {
            this.list(0);
        },
        methods: {
            list: function (start) {
                var getUrl = this.url + "?start=" + start;
                axios.get(getUrl).then( function(response) {
                    vue.pagination = response.data;
                    vue.users = response.data.content;
                });
            },
            deleteUser: function(id) {

                if(!checkDeleteLink("该业主"))
                    return;

                var url = this.url + "/" + id;
                axios.delete(url).then(function(response){
                    vue.list(0);
                });
            },
            add: function () {
                if(isEmpty(this.user.name, "姓名"))
                    return;
                if(isEmpty(this.user.age, "年龄"))
                    return;
                if(isEmpty(this.user.gender, "性别"))
                    return;
                if(isEmpty(this.user.phone, "电话"))
                    return;

                var url = this.url;
                axios.post(url, this.user).then(function (response) {
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
});