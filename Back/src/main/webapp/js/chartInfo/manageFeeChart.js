// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

$(function () {

    var managementInfo = {};

    var url = "houses/managementinfo";
    axios.get(url).then(function (value) {
        managementInfo = value.data;

        var ctx = document.getElementById("managementFeeChart");
        var myPieChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ["已缴纳", "未缴纳"],
                datasets: [{
                    data: [managementInfo.paid, managementInfo.unpaid],
                    backgroundColor: ['#007bff', '#dc3545'],
                }]
            }
        });


    });

});
