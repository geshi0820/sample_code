google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback( function() {
  el = document.getElementById('drink');
  dd = el.dataset.description;
  console.log(dd.spec);
  var color =["red","yellow","green","blue","purple","gold"];
  function change_color(i) {
    num = 1 + Math.floor(Math.random()*3);
    return color[Math.floor(Math.random() * color.length)];
  };
  var score = ["banana","apple","grape"];
  var score = [1000,2000,660,800,1902,3920,192,490,943,500];
  var h = score.length;
  var avg = score.sum/h;
  for ( var i = 0; i < h; i++) {
    score[i] = [i.toString(),score[i]];
    score[i].push("貴方のスコア" + score[i]);
    string_color = change_color(i);
    score[i].push(string_color);
  };

  var data = new google.visualization.DataTable();
  data.addColumn('string', 'Span');
  data.addColumn('number', 'Score');
  data.addColumn({type: 'string', role: 'tooltip'});
  data.addColumn({type: 'string', role: 'style'});
  data.addRows(score);
  data.addRows([
    ['-5', 1000, "hoge", '#43a2e5'], // 一つのカラムに対して、３つの値がある。
    ['11-5', 1170, "hoge", '#43a2e5'],
    ['21-25', 660, "hoge", '#43a2e5'],
    ['25-35', 1030, "hoge", '#43a2e5'],
    ['35-41', 1023, "hoge", '#43a2e5'],
    ['51-53', 2000, "hoge", '#43a2e5'],
    ['61-65', 3222, "hoge", '#43a2e5'],
    ['71-75', 323, "hoge", '#43a2e5'],
    ['76-85', 211, "hoge", '#43a2e5'],
    ['91-95', 500, "hoge", '#43a2e5']
  ]);
  var options = {
    tooltip: {isHtml: true},
    width: 800,
    height: 400,
    hAxis: {
      slantedText: true,
      slantedTextAngle: 30,
      textStyle: {
        color: "gray",
      },
    },
    vAxis: {
      baselineColor: 'gray',
      gridlines: {
       color: 'transparent'
     },
     textPosition: "right"
   },
   legend: { position: "top" }
 };
 var chart = new google.visualization.ColumnChart(document.getElementById('gct_sample_column'));
 chart.draw(data, options);
}
);