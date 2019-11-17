import 'package:http/http.dart' as Http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const String _url = 'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class CoinData {
  Future getCoinData(String currency) async {
    Map<String, String> cryptoValues = {};
    for (String crypt in cryptoList) {
      Http.Response response = await Http.get('$_url/$crypt$currency');
      if (response.statusCode == 200) {
        String data = response.body;
        cryptoValues[crypt] = jsonDecode(data)['last'].toStringAsFixed(0);
      } else {
        throw 'Problem with the get request';
      }
    }
    return cryptoValues;
  }
}
