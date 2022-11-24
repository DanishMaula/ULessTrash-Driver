class RequestModel {
  String numberOrder;
  String address;
  String type;

  RequestModel(
      {required this.numberOrder, required this.address, required this.type});
}

var requestList = [
  RequestModel(
      numberOrder: '07102001',
      address: 'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel',
      type: 'Request'),
      RequestModel(
      numberOrder: '07102001',
      address: 'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel',
      type: 'Request'),
      RequestModel(
      numberOrder: '07102001',
      address: 'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel',
      type: 'Request'),
];
