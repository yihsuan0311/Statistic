<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <%--<script src="Scripts/chart.min.js"></script>--%>
    <%--<script src="Scripts/chart.min.js"></script>--%>
    <script src="Scripts/chart.js"></script>
    <script src="Scripts/chartjs-plugin-labels.min.js"></script>

</head>
<body>

    <div style="width: 900px; height: 900px;">
        <canvas id="myChart" width="640" height="480"></canvas>
    </div>
    <script type="text/javascript">

        const labels = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];

        const data = {
            labels: labels,
            datasets: [
                {
                    //backgroundColor: [
                    //    'rgba(255, 26, 104, 0.2)',
                    //    'rgba(54, 162, 235, 0.2)',
                    //    'rgba(255, 206, 86, 0.2)',
                    //    'rgba(75, 192, 192, 0.2)',
                    //    'rgba(153, 102, 255, 0.2)',
                    //    'rgba(255, 159, 64, 0.2)',
                    //    'rgba(0, 0, 0, 0.2)'
                    //],
                    data: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
                    label_id: ['501', '502', '503', '504', '505', '506', '507', '508', '509', '510', '511', '512'],
                    offset: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    borderWidth: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                    borderColor: ['Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black'],
                    fontColor: ['White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White'],
                    backgroundColor: ['Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red']
                },
                {
                    //backgroundColor: [
                    //    'rgba(255, 26, 104, 0.2)',
                    //    'rgba(54, 162, 235, 0.2)',
                    //    'rgba(255, 206, 86, 0.2)',
                    //    'rgba(75, 192, 192, 0.2)',
                    //    'rgba(153, 102, 255, 0.2)',
                    //    'rgba(255, 159, 64, 0.2)',
                    //    'rgba(0, 0, 0, 0.2)'
                    //],
                    data: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
                    label_id: ['401', '402', '403', '404', '405', '406', '407', '408', '409', '410', '411', '412'],
                    offset: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    borderWidth: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                    borderColor: ['Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black'],
                    fontColor: ['White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White'],
                    backgroundColor: ['Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red']
                },
                {
                    //backgroundColor: [
                    //    'rgba(255, 26, 104, 0.2)',
                    //    'rgba(54, 162, 235, 0.2)',
                    //    'rgba(255, 206, 86, 0.2)',
                    //    'rgba(75, 192, 192, 0.2)',
                    //    'rgba(153, 102, 255, 0.2)',
                    //    'rgba(255, 159, 64, 0.2)',
                    //    'rgba(0, 0, 0, 0.2)'
                    //],
                    data: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
                    label_id: ['301', '302', '303', '304', '305', '306', '307', '308', '309', '310', '311', '312'],
                    offset: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    borderWidth: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                    borderColor: ['Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black'],
                    fontColor: ['White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White'],
                    backgroundColor: ['Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red']
                },
                {
                    //backgroundColor: [
                    //    'rgba(255, 26, 104, 0.2)',
                    //    'rgba(54, 162, 235, 0.2)',
                    //    'rgba(255, 206, 86, 0.2)',
                    //    'rgba(75, 192, 192, 0.2)',
                    //    'rgba(153, 102, 255, 0.2)',
                    //    'rgba(255, 159, 64, 0.2)',
                    //    'rgba(0, 0, 0, 0.2)'
                    //],
                    data: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
                    label_id: ['201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212'],
                    offset: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    borderWidth: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                    borderColor: ['Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black'],
                    fontColor: ['White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White'],
                    backgroundColor: ['Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red']
                },
                {
                    //backgroundColor: [
                    //    'rgba(255, 26, 104, 0.2)',
                    //    'rgba(54, 162, 235, 0.2)',
                    //    'rgba(255, 206, 86, 0.2)',
                    //    'rgba(75, 192, 192, 0.2)',
                    //    'rgba(153, 102, 255, 0.2)',
                    //    'rgba(255, 159, 64, 0.2)',
                    //    'rgba(0, 0, 0, 0.2)'
                    //],
                    data: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
                    label_id: ['101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112'],
                    offset: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    borderWidth: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
                    borderColor: ['Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black', 'Black'],
                    fontColor: ['White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White', 'White'],
                    backgroundColor: ['Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red', 'Red']
                },
            ]
        };

        const config = {
            type: 'pie',
            data: data,
            options: {
                plugins: {
                    legend: {
                        display: false
                    },
                    labels:
                    {
                        render: (args) => {
                            return (args.label_id);
                        }
                        ,
                        fontColor: function (args) {
                            // args will be something like:
                            // { index: 0, dataset: {...} }
                            return args.fontColor;
                        },
                        fontSize: 20,
                    },

                    tooltip: {

                        titleFont: {
                            size: 25
                        },
                        bodyFont: {
                            size: 25
                        },

                        callbacks: {
                            label: function (context) {

                                const labelIndex = context.dataIndex;
                                const didx_temp = context.datasetIndex + 1;
                                const labelId = context.chart.data.labels[labelIndex];
                                if (didx_temp == 1) didx = 5;
                                else if (didx_temp == 2) didx = 4;
                                else if (didx_temp == 3) didx = 3;
                                else if (didx_temp == 4) didx = 2;
                                else if (didx_temp == 5) didx = 1;

                                return didx + labelId;
                            }
                        }
                    }
                },






            },
        };

        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, config);


        document.querySelector("#myChart").onclick = function (evt) {
            //const points = myChart.getElementsAtEventForMode(evt, 'nearest', { intersect: true }, true);

            const slice = myChart.getElementsAtEventForMode(evt, 'nearest', { intersect: true }, true);

            if (slice.length) {
                const pieSlice = slice[0];
                const label = myChart.data.labels[pieSlice.index];
                const didx_temp = pieSlice.datasetIndex + 1;

                if (didx_temp == 1) didx = 5;
                else if (didx_temp == 2) didx = 4;
                else if (didx_temp == 3) didx = 3;
                else if (didx_temp == 4) didx = 2;
                else if (didx_temp == 5) didx = 1;

                const value = myChart.data.datasets[pieSlice.datasetIndex].data[pieSlice.index];

                console.log(pieSlice);

                const labelNo = myChart.data.datasets[pieSlice.datasetIndex].label_id[pieSlice.index];

                if (labelNo.indexOf("(V)") == -1) {
                    myChart.data.datasets[pieSlice.datasetIndex].label_id[pieSlice.index] = "(V)" + labelNo;
                    myChart.data.datasets[pieSlice.datasetIndex].fontColor[pieSlice.index] = 'Black';
                    //myChart.data.datasets[pieSlice.datasetIndex].backgroundColor[pieSlice.index] = "(V)" + labelNo;
                }
                else {
                    myChart.data.datasets[pieSlice.datasetIndex].label_id[pieSlice.index] = labelNo.replace("(V)", "");
                    myChart.data.datasets[pieSlice.datasetIndex].fontColor[pieSlice.index] = 'Yellow';
                }

                //console.log("firstPoint:" + pieSlice);
                //console.log("didx:" + didx);
                //console.log("label:" + (didx + label));
                //console.log("value:" + value);

                //if (myChart.config.data.datasets[pieSlice.datasetIndex].offset[pieSlice.index] == 0) {
                //    myChart.config.data.datasets[pieSlice.datasetIndex].offset[pieSlice.index] = 20;
                //}
                //else {
                //    myChart.config.data.datasets[pieSlice.datasetIndex].offset[pieSlice.index] = 0;
                //}

                //console.log(myChart.config.data.datasets[pieSlice.datasetIndex].borderWidth[pieSlice.index]);
                //if (myChart.config.data.datasets[pieSlice.datasetIndex].borderWidth[pieSlice.index] == 1) {
                //    myChart.config.data.datasets[pieSlice.datasetIndex].borderWidth[pieSlice.index] = 5;
                //    myChart.config.data.datasets[pieSlice.datasetIndex].borderColor[pieSlice.index] = 'Black';
                //}
                //else {
                //    myChart.config.data.datasets[pieSlice.datasetIndex].borderWidth[pieSlice.index] = 3;
                //    myChart.config.data.datasets[pieSlice.datasetIndex].borderColor[pieSlice.index] = 'White';
                //}

                myChart.update();
            }
        }

    </script>



</body>
</html>
