$(function () {

    var userData = {
        url: 'users',
        listUrl: 'admin_user_management',
        user: {"id": 0, "name": "", "gender": "", "age": "", "phone": ""}
    };

    var vue = new Vue({
        el: "#userDataArea",
        data: userData,
        mounted: function () {
            this.get();
        },
        methods: {
            get: function () {
                var id = getUrlParms("id");
                var url = this.url + "/" + id;
                axios.get(url).then(function (value) {
                    vue.user = value.data;
                });
            },
            update: function () {
                var url = this.url + "/" + this.user.id;
                axios.put(url, this.user).then(function (value) {
                    location.href = vue.listUrl;
                });
            },
            deleteHouse: function (hid) {
                var url = this.url + "/houses/" + hid;
                if (!checkDeleteLink("确认删除该条房产信息")) {
                    return;
                }
                axios.delete(url).then(function (value) {
                    location.href = "admin_user_edit?id=" + vue.user.id;
                });
            }
        }
    });

    var houseData = {
        url: 'houses',
        pagination: {},
        uncheckedHouses: {},
        houseID: 0
    };

    var houseVue = new Vue({
        el: "#addHouseDataArea",
        data: houseData,
        mounted: function () {
            this.list(0);
        },
        methods: {
            list: function (start) {
                var url = this.url + "/unchecked";
                axios.get(url, {
                    params: {
                        start: start
                    }
                }).then(function (value) {
                    houseVue.pagination = value.data;
                    houseVue.uncheckedHouses = value.data.content;
                })
            },
            addHouse: function() {
                var url = this.url + "/unchecked/" + houseVue.houseID + "?uid=" + vue.user.id;
                axios.put(url).then(function (value) {

                    location.href = "admin_user_edit?id=" + vue.user.id;

                });
            },
            jumpByNumber: function (num) {
                jumpByNumber(num, houseVue);
            },
            jump: function (page) {
                jump(page, houseVue);
            },
            addClass: function (number) {
                if (number == (houseVue.pagination.number + 1))
                    return 'active';
                return '';
            }
        }
    });

});


function showAddModal() {
    $("#addHouseDataArea").modal("show");
}