import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/item_model.dart';
import 'dart:async';
import 'repository.dart';

class NewsApiProvider implements Source {
    Client client = Client();
    final _baseUrl = 'https://hacker-news.firebaseio.com/v0';

    Future<List<int>> fetchTopIds() async {
        final resp = await client.get('${this._baseUrl}/topstories.json');
        final ids = json.decode(resp.body);

        return ids.cast<int>();
    }

    Future<ItemModel> fetchItem(int id) async {
        final resp = await client.get('${this._baseUrl}/item/${id}.json');
        final parsedJson = json.decode(resp.body);

        return ItemModel.fromJson(parsedJson);
    }
}
