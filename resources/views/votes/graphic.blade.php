@extends('layouts.app')

@section('content')
<div id="container" style="min-width: 80%; height: 400px; max-width: 80%; margin: 0 auto"></div>
@endsection

@section("custom-scripts")
  <script type="text/javascript">
    $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
      });
    $.post("/makeGraphic/").done(function(alldata){
        console.log(alldata);
        Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Votes per Country\'s Department'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
        name: 'Percentage Votes',
        colorByPoint: true,
        data: alldata
    }]
       });
    }, "json").fail(function(data) {
                
            });;
  </script>
@endsection