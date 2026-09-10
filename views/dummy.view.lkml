view: dummy {
  sql_table_name: demo_db.dummy ;;

  dimension: a {
    type: string
    sql: ${TABLE}.a ;;
  }
  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
    drill_fields: []
    label: "引継ぎステータス"
    description: "0:未回答 1:引き継ぎ 2:引き継がない 3:JTXユーザーと紐付きなし"
    link: { url:"https://mo-t.atlassian.net/wiki/spaces/Aiauto/pages/102129051/Specifications+-+JTX" }
  }
  measure: count {
    type: count
  }
}
