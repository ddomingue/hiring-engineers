api_key=a8d3784c25336b49ce19e054451b8723
app_key=88da91d99e5503115c3c8a7e6e63b784863252c3

curl  -X POST -H "Content-type: application/json" \
-d '{
      "title" : "Custom made Timeboard",
      "widgets" : [{
          "definition": {
              "type": "timeseries",
              "requests": [
                  {
                    "q": "avg:my_metrics{hostname:mytestdatadog.localdomain}"
                  },
                  {
                    "q": "anomalies(avg:postgresql.percent_usage_connections{hostname:mytestdatadog.localdomain}, \"basic\", 2)"
                  },
                  {
                    "q": "avg:my_metrics{hostname:mytestdatadog.localdomain}.rollup(sum, 60)"
                  }
              ],
              "title": "My custom metrics"
          }
      }],
      "layout_type": "ordered",
      "description" : "API based dashboard construction.",
      "is_read_only": true,
      "notify_list": ["ddomingue@gmail.com"]
}' \
"https://api.datadoghq.com/api/v1/dashboard?api_key=${api_key}&application_key=${app_key}"