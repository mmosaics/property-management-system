// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

$(function () {

    var checkedInfo = {};

    var url = "http://127.0.0.1:8080/propertymanagement/houses/checkedinfo"
    axios.get(url)
        .then(function (value) {
            console.log(value.data);
            checkedInfo = value.data;

            // Bar Chart Example
            var ctx = document.getElementById("checkedInfoChart");
            var myLineChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["一单元", "二单元", "三单元", "四单元", "五单元", "六单元"],
                    datasets: [{
                        label: "Revenue",
                        backgroundColor: "rgba(2,117,216,1)",
                        borderColor: "rgba(2,117,216,1)",
                        data: [checkedInfo.unit1, checkedInfo.unit2, checkedInfo.unit3, checkedInfo.unit4, checkedInfo.unit5, checkedInfo.unit6]
                    }]
                },
                options: {
                    scales: {
                        xAxes: [{
                            time: {
                                unit: 'Unit'
                            },
                            gridLines: {
                                display: false
                            },
                            ticks: {
                                maxTicksLimit: 6
                            }
                        }],
                        yAxes: [{
                            ticks: {
                                min: 0,
                                max: 100,
                                maxTicksLimit: 5
                            },
                            gridLines: {
                                display: true
                            }
                        }],
                    },
                    legend: {
                        display: false
                    }
                }
            });
        })
        .catch(function (error) {
            console.log(error);
        });



});
