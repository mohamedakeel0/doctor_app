enum Toaststates { SUCCESS, ERROR, WARNING }
enum RequestState{
  initial,
  loading,
  loaded,
  error,
}
enum OrderState{
  DELIVERED,
  SHIPPED,
  CANCEL,
}

enum NotificationState{
  PAYMENT,
  PROMOTION,
  ACCEPT,
  CANCEL,
}
// Todo remove this after using data from api
NotificationState changeStatus(int index) {
  var shipped = NotificationState.CANCEL;
  if(index.isEven){
    shipped = NotificationState.PAYMENT;
  }else{
    shipped = NotificationState.PROMOTION;
  }
  if(index==3){
    shipped = NotificationState.CANCEL;
  }
  if(index==6){
    shipped = NotificationState.ACCEPT;
  }
  return shipped;
}
// Todo remove this after using data from api
OrderState changeStatusOrder(int type) {
  var shipped = OrderState.CANCEL;
  if(type==3){
    shipped = OrderState.DELIVERED;
  }else if(type ==1){
    shipped = OrderState.SHIPPED;
  }
  else if(type ==0){
    shipped = OrderState.CANCEL;
  }

  return shipped;
}
