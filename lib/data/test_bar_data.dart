class SalesData {
  final String year;
  final int sales;

  SalesData(this.year, this.sales);
}

List<SalesData> generateSalesData() {
  return [
    SalesData('2017', 5),
    SalesData('2018', 25),
    SalesData('2019', 100),
    SalesData('2020', 75),
  ];
}

class ExpensesData {
  final String year;
  final int expenses;

  ExpensesData(this.year, this.expenses);
}

List<ExpensesData> generateExpensesData() {
  return [
    ExpensesData('2017', 10),
    ExpensesData('2018', 50),
    ExpensesData('2019', 200),
    ExpensesData('2020', 150),
  ];
}
