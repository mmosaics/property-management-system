$(function () {

    var reviewsData = {
        url:"reviews",
        reviews: [],
        userPost: {},
        readyReview: {
            "id": 0,
            "content":""
        }
    };

    var userVue = new Vue({
        el:"#userPostDetailArea",
        data: reviewsData,
        mounted:function() {
            this.getPost();
            this.getReview();
        },
        methods: {
            getPost: function() {
                var id = getUrlParms("id");
                var url = "postinfos/users/" + id;
                axios.get(url).then(function (value) {
                    userVue.userPost = value.data;
                })
            },
            getReview:function () {
                var id = getUrlParms("id");
                var url = this.url + "/" + id + "/postinfos";
                axios.get(url).then(function (value) {
                    userVue.reviews = value.data;
                })
            },
            addReview: function () {
                var postid = getUrlParms("id");
                var uid = 1000;
                var url = this.url + "?uid=" + uid + "&postid=" + postid;
                axios.post(url, this.readyReview).then(function (value) {
                    location.href = "admin_postinfos_userpost_edit?id=" + userVue.userPost.id;
                });
            }

        }

    });


});

function showAddReviewModel(){
    $("#addReviewDataArea").modal("show");
}