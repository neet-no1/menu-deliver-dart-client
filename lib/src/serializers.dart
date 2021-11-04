//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/account_auth_response.dart';
import 'package:openapi/src/model/account_data.dart';
import 'package:openapi/src/model/account_response.dart';
import 'package:openapi/src/model/answer_data.dart';
import 'package:openapi/src/model/answers_response.dart';
import 'package:openapi/src/model/article_data.dart';
import 'package:openapi/src/model/article_data_response.dart';
import 'package:openapi/src/model/articles_response.dart';
import 'package:openapi/src/model/basic_response.dart';
import 'package:openapi/src/model/best_answer_response.dart';
import 'package:openapi/src/model/composition_data.dart';
import 'package:openapi/src/model/compositions_response.dart';
import 'package:openapi/src/model/decide_best_answer_param.dart';
import 'package:openapi/src/model/delete_article_param.dart';
import 'package:openapi/src/model/delete_menu_param.dart';
import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/favorite_article_is_added_response.dart';
import 'package:openapi/src/model/favorite_article_param.dart';
import 'package:openapi/src/model/favorite_menu_is_added_response.dart';
import 'package:openapi/src/model/favorite_menu_param.dart';
import 'package:openapi/src/model/follow_user_data.dart';
import 'package:openapi/src/model/follow_user_param.dart';
import 'package:openapi/src/model/followers_response.dart';
import 'package:openapi/src/model/menu_categories_response.dart';
import 'package:openapi/src/model/menu_category_data.dart';
import 'package:openapi/src/model/menu_data.dart';
import 'package:openapi/src/model/menu_data_response.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:openapi/src/model/menu_image_data.dart';
import 'package:openapi/src/model/menus_and_articles_response.dart';
import 'package:openapi/src/model/menus_response.dart';
import 'package:openapi/src/model/notices_response.dart';
import 'package:openapi/src/model/page_nation.dart';
import 'package:openapi/src/model/password_reset_param.dart';
import 'package:openapi/src/model/question_categories_response.dart';
import 'package:openapi/src/model/question_category_data.dart';
import 'package:openapi/src/model/question_data.dart';
import 'package:openapi/src/model/question_data_response.dart';
import 'package:openapi/src/model/questions_response.dart';
import 'package:openapi/src/model/recommend_meta_data_response.dart';
import 'package:openapi/src/model/regist_account_param.dart';
import 'package:openapi/src/model/update_password_param.dart';

part 'serializers.g.dart';

@SerializersFor([
  AccountAuthResponse,
  AccountData,
  AccountResponse,
  AnswerData,
  AnswersResponse,
  ArticleData,
  ArticleDataResponse,
  ArticlesResponse,
  BasicResponse,
  BestAnswerResponse,
  CompositionData,
  CompositionsResponse,
  DecideBestAnswerParam,
  DeleteArticleParam,
  DeleteMenuParam,
  ErrorInfo,
  FavoriteArticleIsAddedResponse,
  FavoriteArticleParam,
  FavoriteMenuIsAddedResponse,
  FavoriteMenuParam,
  FollowUserData,
  FollowUserParam,
  FollowersResponse,
  MenuCategoriesResponse,
  MenuCategoryData,
  MenuData,
  MenuDataResponse,
  MenuDeliverResponse,
  MenuImageData,
  MenusAndArticlesResponse,
  MenusResponse,
  NoticesResponse,
  PageNation,
  PasswordResetParam,
  QuestionCategoriesResponse,
  QuestionCategoryData,
  QuestionData,
  QuestionDataResponse,
  QuestionsResponse,
  RecommendMetaDataResponse,
  RegistAccountParam,
  UpdatePasswordParam,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
