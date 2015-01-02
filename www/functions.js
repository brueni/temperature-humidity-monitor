options = {
    chart: {
        renderTo: 'container',
        type: 'spline'
    },
    title: {
        text: 'Temperatures of the last 24h'
    },
    subtitle: {
        text: ''
    },
    colors: ['#4572A7', '#AA4643', '#89A54E', '#80699B', '#3D96AE', 
       '#DB843D', '#92A8CD', '#A47D7C', '#B5CA92'],
    xAxis: {
        type: 'datetime',
        dateTimeLabelFormats: {
            hour: '%H. %M',
        }
    },
    yAxis: {
        title: {
            text: 'T (Â°C)'
        }
    },
    tooltip: {
        formatter: function() {
            return '<b>' + this.series.name + '</b><br/>' + Highcharts.dateFormat('%H:%M', this.x) + ': ' + this.y.toFixed(1) + 'Â°C';
        }
    },

    plotOptions: {
        series: {
            marker: {
                radius: 2
            }
        }
    },

    lineWidth: 1,

    series: []
}

// return everything after the question mark
function GetUrlParameter() {
    idx = window.location.href.indexOf("?");
    if (idx < 0) return "";
    return window.location.href.substring(idx + 1);
}
urlParameter = GetUrlParameter();

function GetChartXml() {
    switch (urlParameter) {
    case "t3h":
    case "t24h":
    case "t48h":
    case "t1w":
    case "t1m":
    case "t3m":
    case "t1y":
    case "h3h":
    case "h24h":
    case "h48h":
    case "h1w":
    case "h1m":
    case "h3m":
    case "h1y":
    case "f3h":
    case "f24h":
    case "f48h":
    case "f1w":
    case "f1m":
    case "f3m":
    case "f1y":

        return "data/rack_" + urlParameter + ".xml";
    }
    return "data/rack_t24h.xml";
}

function GetChartTitle() {

    var type = "Temperatures";
    if (urlPath == "humid") {
        type = "Humidity"
    };
    switch (urlParameter) {
    case "3h":
        return type + " of the last 3 hours";
    case "48h":
        return type + " of the last 48 hours";
    case "1w":
        return type + " of the last week";
    case "1m":
        return type + " of the last month";
    case "3m":
        return type + " of the last 3 month";
    case "1y":
        return type + " of the last year";
    case "1yminmax":
        return "Min-Max " + type + " of the last year";
    }
    return type + " of the last 24 hours";
}
;
