# database-schema
The whole work of this repository has been undertaken under Google Summer of Code 2018 **Granular Temporal Data Management** project of the CDLI Organization.

## Authors
- **Sameer Sengar** [sengarsameer](https://github.com/sengarsameer)


## Mentors
All works done under the guidence of:
- **Émilie Pagé-Perron** [epageperron](https://github.com/epageperron)
- **Jayanth** [jayanthjaiswal](https://github.com/jayanthjaiswal)
- **Saurabh Trikande** [saurabh-trikande](https://github.com/saurabh-trikande)
  
___

## Summary
This project results in the extension and improvement of the current data model for temporal information, by structuring the data in a new, richer model which will enable the full utilization of relationship among these data. The new structure will be exploited so artifacts can be searched and displayed based on this temporal information and in a granular manner.

___

## Contents
1. [schemas](schemas): This folder contains all the schema which handles the temporality of information or data. 
    + [month_schema.sql](month_schema.sql) - This schema handle the temporality of month specifically.
    + [year_schema.sql](year_schema.sql) - This schema handle the temporality of year specifically.
    + [year_month_merged.sql](year_month_merged.sql) - In this schema, we merged the month_schema with year_schema into the new model and associate them with the artifacts table with the help of an artifacts_dates relational table.

2. [scripts](scripts): This folder contains the conversion and data insertion script.
3. [search](search): This folder contains the search scripts based on use cases. It is not completed yet.
4. [test_data_set](test_data_set): This folder contains the inserted data which is used for testing the schema.

___

## Contributing
If you have any suggestion regarding changes in this project, you can raise an issue or send in pull requests to us. We will be happy to integrate them into our project.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
