(function () {
    var app = angular.module('homepage', []);

    app.controller('indexcontroller', ['$http', function ($http) {
        var ctrll = this;
        this.posts = [];

        this.getQuestions = function (index) {

            $http.get("/baiviets/getNewPost?index=" + index).success(function (data) {
                ctrll.posts.push.apply(ctrll.posts, data);
            }).error(function () {
                alert("Lỗi khi lấy dữ liệu bai viet");
            });

            $http.get("/questions/getquestion?index=" + index).success(function (data) {
                ctrll.posts.push.apply(ctrll.posts,data);
            }).error(function () {
                alert("Lỗi khi lấy dữ liệu questions");
            });        }

        this.init = function()
        {
            ctrll.getQuestions(0);
        }

        this.postclick = function(id, loai)
        {
            if(loai === 'b')
            {
                window.location.href = "/baiviets/details/" + id;
            }
            if (loai === 'q') {
                window.location.href = "/questions/details/" + id;
            }
        }
    }])
})();