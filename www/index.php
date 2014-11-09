
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Temperature and Humidity</title>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript" src="http://code.highcharts.com/highcharts.js"></script>

		<script src="functions.js" type="text/javascript"></script>   
		<script type="text/javascript">

		$.ajax({
		    type: "GET",
		    url: "humid1d.xml",
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
		 
		        options.title.text = "Temperatures of the last xyh"
		        $.each(series, function(index) {
		            options.series.push(series[index]);
		        });
		        chart = new Highcharts.Chart(options);
		    }
		})
		</script>

	</head>
	<body>
		<div id="site">
			<div id="navigation" style="width: 20%; heigth:400px; margin: 0 auto">
				<b>Temperatures</b><br>
				<ul>
					<li><a href="?type=t&range=3h">Last 3h</a></li>
					<li>Last 24h</li>
					<li>Last 48h</li>
					<li>Last 1w</li>
					<li>Last 1m</li>
					<li>Last 3m</li>
					<li>Last 1y</li>
				</ul>
				<b>Humidity</b><br>
                                <ul>
                                        <li>Last 3h</li>
                                        <li>Last 24h</li>
                                        <li>Last 48h</li>
                                        <li>Last 1w</li>
                                        <li>Last 1m</li>
                                        <li>Last 3m</li>
                                        <li>Last 1y</li>
                                </ul>

			</div>
			<div id="container" style="width: 80%; height: 400px; margin: 0 auto"></div>
		</div>

	</body>
</html>

