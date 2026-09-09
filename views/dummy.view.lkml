view: dummy {
  sql_table_name: demo_db.dummy ;;

  dimension: a {
    type: string
    sql: ${TABLE}.a ;;
  }
  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
    link: {
        label:"配車分類参考URL"
        url:"https://mo-t.atlassian.net/wiki/spaces/Aiauto/pages/120291397/start+car+request"}
  }
  measure: count {
    type: count
  }
}
