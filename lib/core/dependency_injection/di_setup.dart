import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../network/network_info.dart';
import '../util/input_converter.dart';
import '../../features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import '../../features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import '../../features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import '../../features/number_trivia/domain/repositories/number_trivia_repositoy.dart';
import '../../features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import '../../features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import '../../features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;
void init() {
  sl
    ..registerLazySingleton(() => NumberTriviaBloc(
        getConcreteNumberTrivia: sl(),
        getRandomNumberTrivia: sl(),
        inputConverter: sl()))
    ..registerLazySingleton(() => GetConcreteNumberTrivia(repositoy: sl()))
    ..registerLazySingleton(() => GetRandomNumberTrivia(repositoy: sl()))
    ..registerLazySingleton<NumberTriviaRepositoy>(
        () => NumberTriviaRepositoryImpl(
              remoteDataSource: sl(),
              localDataSource: sl(),
              networkInfo: sl(),
            ))
    ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(connectionChecker: sl()))
    ..registerLazySingleton(() => InternetConnectionChecker())
    ..registerLazySingleton<NumberTriviaRemoteDataSource>(
        () => NumberTriviaRemoteDataSourceImpl(client: sl()))
    ..registerLazySingleton<NumberTriviaLocalDataSource>(
        () => NumberTriviaLocalDataSourceImpl(cache: sl()))
    ..registerLazySingleton(() async => await SharedPreferences.getInstance())
    ..registerLazySingleton(() => InputConverter())
    ..registerLazySingleton(() => http.Client());
}
