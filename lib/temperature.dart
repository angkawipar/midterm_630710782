class temp {
  var result;
  temp(){
  }
  double CtoF (double cel){
    result=(1.80*cel) + 32;
    return result;
  }
  double CtoK (double cel){
    result=cel+273.15;
    return result;
  }
  double FtoC (double fah){
    result = 5*(fah-32)/9;
    return result;
  }
  double FtoK (double fah){
    result = (5*(fah - 32))/9 + 273.15;
    return result;
  }
  double KtoC (double ke){
    result = ke-273.15;
    return result;
  }
  double KtoF (double ke){
    result = 1.8*(ke - 273.15)+ 32;
    return result;
  }
}