view: vendas {
  sql_table_name: `364516.vendas`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension_group: data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: preco_unitario {
    type: number
    sql: ${TABLE}.preco_unitario ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: qtd_cupons {
    type: number
    sql: ${TABLE}.qtd_cupons ;;
  }

  dimension: quantidade {
    type: number
    sql: ${TABLE}.quantidade ;;
  }

  dimension: sigla_estado {
    type: string
    sql: ${TABLE}.Sigla_Estado ;;
  }

  dimension: subcategoria {
    type: string
    sql: ${TABLE}.subcategoria ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
