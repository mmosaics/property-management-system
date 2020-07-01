var houseData = {
    url: 'houses',
    pagination: {},
    houses: {}
};

var vue = new Vue({
    el:"#houseDataArea",
    data:houseData,
    mounted: function () {
        this.list(0);
    },
    methods: {
        list: function(start) {
            var url = this.url;
            axios.get(url,{
                params: {
                    start: start
                }
            }).then(function (value) {
                vue.pagination = value.data;
                vue.houses = value.data.content;
            })

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