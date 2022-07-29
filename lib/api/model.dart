// To parse this JSON data, do
//
//     final upiHistroyOrdersLedgerResponse = upiHistroyOrdersLedgerResponseFromMap(jsonString);

import 'dart:convert';

class CurrencyResponse {
  CurrencyResponse({
    this.status,
    this.data,
  });

  Status? status;
  Data? data;

  factory CurrencyResponse.fromJson(String str) => CurrencyResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CurrencyResponse.fromMap(Map<String, dynamic> json) => CurrencyResponse(
        status: json["status"] == null ? null : Status.fromMap(json["status"]),
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status == null ? null : status!.toMap(),
        "data": data == null ? null : data!.toMap(),
      };
}

class Data {
  Data({
    this.btc,
    this.c,
    this.eth,
    this.lt,
  });

  Btc? btc;
  Btc? c;
  Btc? eth;
  Btc? lt;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        btc: json["BTC"] == null ? null : Btc.fromMap(json["BTC"]),
        c: json["C"] == null ? null : Btc.fromMap(json["C"]),
        eth: json["ETH"] == null ? null : Btc.fromMap(json["ETH"]),
        lt: json["LT"] == null ? null : Btc.fromMap(json["LT"]),
      );

  Map<String, dynamic> toMap() => {
        "BTC": btc == null ? null : btc!.toMap(),
        "C": c == null ? null : c!.toMap(),
        "ETH": eth == null ? null : eth!.toMap(),
        "LT": lt == null ? null : lt!.toMap(),
      };
}

class Btc {
  Btc({
    required this.id,
    required this.name,
    required this.symbol,
    required this.slug,
    required this.numMarketPairs,
    required this.dateAdded,
    required this.tags,
    required this.maxSupply,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.isActive,
    this.platform,
    required this.cmcRank,
    required this.isFiat,
    required this.selfReportedCirculatingSupply,
    required this.selfReportedMarketCap,
    required this.tvlRatio,
    required this.lastUpdated,
    this.quote,
  });

  String id;
  String name;
  String symbol;
  String slug;
  String numMarketPairs;
  DateTime dateAdded;
  List<String> tags;
  String maxSupply;
  String circulatingSupply;
  String totalSupply;
  String isActive;
  Platform? platform;
  String cmcRank;
  String isFiat;
  String selfReportedCirculatingSupply;
  String selfReportedMarketCap;
  String tvlRatio;
  DateTime lastUpdated;
  Quote? quote;

  factory Btc.fromJson(String str) => Btc.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Btc.fromMap(Map<String, dynamic> json) => Btc(
        id: json["id"] == null ? "" : json["id"].toString(),
        name: json["name"] == null ? "" : json["name"].toString(),
        symbol: json["symbol"] == null ? "" : json["symbol"].toString(),
        slug: json["slug"] == null ? "" : json["slug"].toString(),
        numMarketPairs: json["num_market_pairs"] == null ? "" : json["num_market_pairs"].toString(),
        dateAdded: json["date_added"] == null ? DateTime.now() : DateTime.parse(json["date_added"]),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"].map((x) => x)),
        maxSupply: json["max_supply"] == null ? "" : json["max_supply"].toString(),
        circulatingSupply: json["circulating_supply"] == null ? "" : json["circulating_supply"].toString(),
        totalSupply: json["total_supply"] == null ? "" : json["total_supply"].toString(),
        isActive: json["is_active"] == null ? "" : json["is_active"].toString(),
        platform: json["platform"] == null ? null : Platform.fromMap(json["platform"]),
        cmcRank: json["cmc_rank"] == null ? "" : json["cmc_rank"].toString(),
        isFiat: json["is_fiat"] == null ? "" : json["is_fiat"].toString(),
        selfReportedCirculatingSupply:
            json["self_reported_circulating_supply"] == null ? "" : json["self_reported_circulating_supply"].toString(),
        selfReportedMarketCap:
            json["self_reported_market_cap"] == null ? "" : json["self_reported_market_cap"].toString(),
        tvlRatio: json["tvl_ratio"].toString(),
        lastUpdated: json["last_updated"] == null ? DateTime.now() : DateTime.parse(json["last_updated"]),
        quote: json["quote"] == null ? null : Quote.fromMap(json["quote"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "symbol": symbol == null ? null : symbol,
        "slug": slug == null ? null : slug,
        "num_market_pairs": numMarketPairs == null ? null : numMarketPairs,
        "date_added": dateAdded == null ? null : dateAdded.toIso8601String(),
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
        "max_supply": maxSupply == null ? null : maxSupply,
        "circulating_supply": circulatingSupply == null ? null : circulatingSupply,
        "total_supply": totalSupply == null ? null : totalSupply,
        "is_active": isActive == null ? null : isActive,
        "platform": platform == null ? null : platform!.toMap(),
        "cmc_rank": cmcRank == null ? null : cmcRank,
        "is_fiat": isFiat == null ? null : isFiat,
        "self_reported_circulating_supply":
            selfReportedCirculatingSupply == null ? null : selfReportedCirculatingSupply,
        "self_reported_market_cap": selfReportedMarketCap == null ? null : selfReportedMarketCap,
        "tvl_ratio": tvlRatio,
        "last_updated": lastUpdated == null ? null : lastUpdated.toIso8601String(),
        "quote": quote == null ? null : quote!.toMap(),
      };
}

class Platform {
  Platform({
    required this.id,
    required this.name,
    required this.symbol,
    required this.slug,
    required this.tokenAddress,
  });

  int id;
  String name;
  String symbol;
  String slug;
  String tokenAddress;

  factory Platform.fromJson(String str) => Platform.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Platform.fromMap(Map<String, dynamic> json) => Platform(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        symbol: json["symbol"] == null ? null : json["symbol"],
        slug: json["slug"] == null ? null : json["slug"],
        tokenAddress: json["token_address"] == null ? null : json["token_address"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "symbol": symbol == null ? null : symbol,
        "slug": slug == null ? null : slug,
        "token_address": tokenAddress == null ? null : tokenAddress,
      };
}

class Quote {
  Quote({
    required this.usd,
  });

  Usd? usd;

  factory Quote.fromJson(String str) => Quote.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Quote.fromMap(Map<String, dynamic> json) => Quote(
        usd: json["USD"] == null ? null : Usd.fromMap(json["USD"]),
      );

  Map<String, dynamic> toMap() => {
        "USD": usd == null ? null : usd!.toMap(),
      };
}

class Usd {
  Usd({
    required this.price,
    required this.volume24H,
    required this.volumeChange24H,
    required this.percentChange1H,
    required this.percentChange24H,
    required this.percentChange7D,
    required this.percentChange30D,
    required this.percentChange60D,
    required this.percentChange90D,
    required this.marketCap,
    required this.marketCapDominance,
    required this.fullyDilutedMarketCap,
    required this.tvl,
    required this.lastUpdated,
  });

  String price;
  String volume24H;
  String volumeChange24H;
  String percentChange1H;
  String percentChange24H;
  String percentChange7D;
  String percentChange30D;
  String percentChange60D;
  String percentChange90D;
  String marketCap;
  String marketCapDominance;
  String fullyDilutedMarketCap;
  String tvl;
  DateTime lastUpdated;

  factory Usd.fromJson(String str) => Usd.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Usd.fromMap(Map<String, dynamic> json) => Usd(
        price: json["price"] == null ? "" : json["price"].toString(),
        volume24H: json["volume_24h"] == null ? "" : json["volume_24h"].toString(),
        volumeChange24H: json["volume_change_24h"] == null ? "" : json["volume_change_24h"].toString(),
        percentChange1H: json["percent_change_1h"] == null ? "" : json["percent_change_1h"].toString(),
        percentChange24H: json["percent_change_24h"] == null ? "" : json["percent_change_24h"].toString(),
        percentChange7D: json["percent_change_7d"] == null ? "" : json["percent_change_7d"].toString(),
        percentChange30D: json["percent_change_30d"] == null ? "" : json["percent_change_30d"].toString(),
        percentChange60D: json["percent_change_60d"] == null ? "" : json["percent_change_60d"].toString(),
        percentChange90D: json["percent_change_90d"] == null ? "" : json["percent_change_90d"].toString(),
        marketCap: json["market_cap"] == null ? "" : json["market_cap"].toString(),
        marketCapDominance: json["market_cap_dominance"] == null ? "" : json["market_cap_dominance"].toString(),
        fullyDilutedMarketCap:
            json["fully_diluted_market_cap"] == null ? "" : json["fully_diluted_market_cap"].toString(),
        tvl: json["tvl"] == null ? "" : json["tvl"].toString(),
        lastUpdated: json["last_updated"] == null ? DateTime.now() : DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toMap() => {
        "price": price == null ? null : price,
        "volume_24h": volume24H == null ? null : volume24H,
        "volume_change_24h": volumeChange24H == null ? null : volumeChange24H,
        "percent_change_1h": percentChange1H == null ? null : percentChange1H,
        "percent_change_24h": percentChange24H == null ? null : percentChange24H,
        "percent_change_7d": percentChange7D == null ? null : percentChange7D,
        "percent_change_30d": percentChange30D == null ? null : percentChange30D,
        "percent_change_60d": percentChange60D == null ? null : percentChange60D,
        "percent_change_90d": percentChange90D == null ? null : percentChange90D,
        "market_cap": marketCap == null ? null : marketCap,
        "market_cap_dominance": marketCapDominance == null ? null : marketCapDominance,
        "fully_diluted_market_cap": fullyDilutedMarketCap == null ? null : fullyDilutedMarketCap,
        "tvl": tvl,
        "last_updated": lastUpdated == null ? null : lastUpdated.toIso8601String(),
      };
}

class Status {
  Status({
    required this.timestamp,
    required this.errorCode,
    required this.errorMessage,
    required this.elapsed,
    required this.creditCount,
    required this.notice,
  });

  DateTime timestamp;
  int errorCode;
  String errorMessage;
  int elapsed;
  int creditCount;
  String notice;

  factory Status.fromJson(String str) => Status.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Status.fromMap(Map<String, dynamic> json) => Status(
        timestamp: json["timestamp"] == null ? DateTime.now() : DateTime.parse(json["timestamp"]),
        errorCode: json["error_code"] == null ? null : json["error_code"],
        errorMessage: json["error_message"] == null ? "" : json["error_message"].toString(),
        elapsed: json["elapsed"] == null ? null : json["elapsed"],
        creditCount: json["credit_count"] == null ? null : json["credit_count"],
        notice: json["notice"] == null ? "" : json["notice"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "timestamp": timestamp == null ? null : timestamp.toIso8601String(),
        "error_code": errorCode == null ? null : errorCode,
        "error_message": errorMessage,
        "elapsed": elapsed == null ? null : elapsed,
        "credit_count": creditCount == null ? null : creditCount,
        "notice": notice,
      };
}
