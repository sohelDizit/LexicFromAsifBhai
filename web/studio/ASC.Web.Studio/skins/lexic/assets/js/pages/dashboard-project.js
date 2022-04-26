'use strict';
$(document).ready(function() {
    // [ Bar Chart1 ] start
    var chart = AmCharts.makeChart("bar-chart1", {
        "type": "serial",
        "theme": "light",
        "dataProvider": [{
            "Average": "0-1",
            "value": 53,
            "color": ["#e11b22", "#f01018"]
        }, {
            "Average": "1-4",
            "value": 13,
            "color": ["#e11b22", "#899ed4"]
        }, {
            "Average": "8-24",
            "value": 30,
            "color": ["#7b1b67", "#049df5"]
        }, {
            "Average": ">24",
            "value": 4,
            "color": ["#f44236", "#f48f36"]
        }],
        "valueAxes": [{
            "gridAlpha": 0,
            "axisAlpha": 0,
            "lineAlpha": 0,
            "fontSize": 0,
        }],
        "startDuration": 1,
        "graphs": [{
            "balloonText": "<b>[[category]]: [[value]]</b>",
            "labelPosition": "top",
            "labelText": "[[value]]",
            "fillColorsField": "color",
            "fillAlphas": 0.9,
            "lineAlpha": 0,
            "type": "column",
            "valueField": "value"
        }],
        "chartCursor": {
            "categoryBalloonEnabled": false,
            "cursorAlpha": 0,
            "zoomable": false
        },
        "categoryField": "Average",
        "categoryAxis": {
            "gridPosition": "start",
            "gridAlpha": 0,
            "axisAlpha": 0,
            "lineAlpha": 0,
        }
    });
    // [ Bar Chart1 ] end

    // [ chart-percent ] start
    var op = $("#op").html();
    var pp = $("#pp").html();
    var cp = $("#cp").html();
    var chart = AmCharts.makeChart("chart-percent", {
        "type": "pie",
        "theme": "light",
        "dataProvider": [{
            "title": "Open Projects",
            "value": op,
            "color": "#e11b22"
        }, {
            "title": "Paused Projects",
            "value": pp,
            "color": "#f4c22b"
        }, {
            "title": "Closed Projects",
            "value": cp,
            "color": "#e11b22"
        }],
        "titleField": "title",
        "valueField": "value",
        "colorField": "color",
        "labelRadius": 5,
        "radius": "42%",
        "innerRadius": "91%",
        "labelText": "",
        "balloon": {
            "fixedPosition": true
        },
    });
    // [ chart-percent ] end

});
