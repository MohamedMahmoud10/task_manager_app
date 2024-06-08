import 'package:task_manager_app/features/authentication/login/data/models/login_response_model.dart';
import 'package:task_manager_app/features/authentication/login/domain/entites/login_response_entity.dart';

import 'login_response_mappr.auto_mappr.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

@AutoMappr([MapType<LoginResponseModel,LoginResponseEntity>()])



class LoginResponseMappr extends $LoginResponseMappr{}