class ResponseModel<T> {
  final T data;
  final String errorMsg;

  ResponseModel({required this.data, required this.errorMsg});

  factory ResponseModel.empty() {
    return ResponseModel(data: '' as T, errorMsg: "");
  }
}
