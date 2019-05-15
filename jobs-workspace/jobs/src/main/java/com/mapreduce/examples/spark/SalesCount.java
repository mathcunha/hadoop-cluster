package com.mapreduce.examples.spark;


import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;
import org.apache.spark.sql.types.DataTypes;
import org.apache.spark.sql.types.StructField;
import org.apache.spark.sql.types.StructType;

import java.util.ArrayList;
import java.util.List;

public class SalesCount {
    public void run(SparkSession spark){

        List<StructField> fields = new ArrayList<>(3);
        fields.add(DataTypes.createStructField("id", DataTypes.IntegerType, false));
        fields.add(DataTypes.createStructField("vendor", DataTypes.StringType, false));
        fields.add(DataTypes.createStructField("total", DataTypes.LongType, false));
        StructType schema = DataTypes.createStructType(fields);

        Dataset<Row> sales = spark.read()
                .option("sep", ";")
                .option("header", false)
                .schema(schema)
                .csv("venda/vendas.csv");

        // Creates a temporary view using the DataFrame
        sales.createOrReplaceTempView("sales");

        spark.sql("select vendor, sum(total) from sales group by vendor")
                .write()
                .mode("append")
                .csv("output-venda/vendas-"+System.currentTimeMillis());
    }

    public static void main(String[] args) {
        SparkSession spark = SparkSession
                .builder()
                .appName("SalesCount")
                .getOrCreate();

        SalesCount count = new SalesCount();
        count.run(spark);
    }
}
