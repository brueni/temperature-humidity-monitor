
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Highcharts Example</title>
		
		
		<!-- 1. Add these JavaScript inclusions in the head of your page -->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript" src="http://code.highcharts.com/highcharts.js"></script>
		
		
		<!-- 2. Add the JavaScript to initialize the chart on document ready -->
		<script type="text/javascript">
		$.ajax({
    type: "GET",
    url: "data/temperature24h.xml",
    dataType: "xml",
    success: function(xml) {
        var series = []
 
        //define series
        $(xml).find("entry").each(function() {
            var seriesOptions = {
                name: $(this).text(),
                data: []
            };
            options.series.push(seriesOptions);
        });
 
        //populate with data
        $(xml).find("row").each(function() {
            var t = parseInt($(this).find("t").text()) * 1000
 
            $(this).find("v").each(function(index) {
                var v = parseFloat($(this).text())
                v = v || null
                if (v != null) {
                    options.series[index].data.push([t, v])
                };
            });
        });
 
        options.title.text = "Temperatures of the last 24h"
        $.each(series, function(index) {
            options.series.push(series[index]);
        });
        chart = new Highcharts.Chart(options);
    }
})
		</script>
		
	</head>
	<body>
		
		<!-- 3. Add the container -->
		<div id="container" style="width: 800px; height: 400px; margin: 0 auto"></div>
		
				
	</body>
</html>

