part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://localhost:48080/api"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AccountAuthResponse':
          return new AccountAuthResponse.fromJson(value);
        case 'AccountData':
          return new AccountData.fromJson(value);
        case 'AccountResponse':
          return new AccountResponse.fromJson(value);
        case 'AnswerData':
          return new AnswerData.fromJson(value);
        case 'AnswersResponse':
          return new AnswersResponse.fromJson(value);
        case 'ArticleData':
          return new ArticleData.fromJson(value);
        case 'ArticleDataResponse':
          return new ArticleDataResponse.fromJson(value);
        case 'ArticlesResponse':
          return new ArticlesResponse.fromJson(value);
        case 'BasicResponse':
          return new BasicResponse.fromJson(value);
        case 'BestAnswerResponse':
          return new BestAnswerResponse.fromJson(value);
        case 'CompositionData':
          return new CompositionData.fromJson(value);
        case 'CompositionsResponse':
          return new CompositionsResponse.fromJson(value);
        case 'DecideBestAnswerParam':
          return new DecideBestAnswerParam.fromJson(value);
        case 'DeleteArticleParam':
          return new DeleteArticleParam.fromJson(value);
        case 'DeleteMenuParam':
          return new DeleteMenuParam.fromJson(value);
        case 'ErrorInfo':
          return new ErrorInfo.fromJson(value);
        case 'FavoriteArticleIsAddedResponse':
          return new FavoriteArticleIsAddedResponse.fromJson(value);
        case 'FavoriteArticleParam':
          return new FavoriteArticleParam.fromJson(value);
        case 'FavoriteMenuIsAddedResponse':
          return new FavoriteMenuIsAddedResponse.fromJson(value);
        case 'FavoriteMenuParam':
          return new FavoriteMenuParam.fromJson(value);
        case 'FollowUserData':
          return new FollowUserData.fromJson(value);
        case 'FollowUserParam':
          return new FollowUserParam.fromJson(value);
        case 'FollowersResponse':
          return new FollowersResponse.fromJson(value);
        case 'MenuCategoriesResponse':
          return new MenuCategoriesResponse.fromJson(value);
        case 'MenuCategoryData':
          return new MenuCategoryData.fromJson(value);
        case 'MenuData':
          return new MenuData.fromJson(value);
        case 'MenuDataResponse':
          return new MenuDataResponse.fromJson(value);
        case 'MenuDeliverResponse':
          return new MenuDeliverResponse.fromJson(value);
        case 'MenuImageData':
          return new MenuImageData.fromJson(value);
        case 'MenusAndArticlesResponse':
          return new MenusAndArticlesResponse.fromJson(value);
        case 'MenusResponse':
          return new MenusResponse.fromJson(value);
        case 'NoticesResponse':
          return new NoticesResponse.fromJson(value);
        case 'PageNation':
          return new PageNation.fromJson(value);
        case 'PasswordResetParam':
          return new PasswordResetParam.fromJson(value);
        case 'QuestionCategoriesResponse':
          return new QuestionCategoriesResponse.fromJson(value);
        case 'QuestionCategoryData':
          return new QuestionCategoryData.fromJson(value);
        case 'QuestionData':
          return new QuestionData.fromJson(value);
        case 'QuestionDataResponse':
          return new QuestionDataResponse.fromJson(value);
        case 'QuestionsResponse':
          return new QuestionsResponse.fromJson(value);
        case 'RecommendMetaDataResponse':
          return new RecommendMetaDataResponse.fromJson(value);
        case 'RegistAccountParam':
          return new RegistAccountParam.fromJson(value);
        case 'UpdatePasswordParam':
          return new UpdatePasswordParam.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
