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
Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  sl.registerLazySingleton(() => GetConcreteNumberTrivia(repositoy: sl()));
  sl.registerLazySingleton(() => GetRandomNumberTrivia(repositoy: sl()));
  sl.registerLazySingleton<NumberTriviaRepositoy>(
      () => NumberTriviaRepositoryImpl(
            remoteDataSource: sl(),
            localDataSource: sl(),
            networkInfo: sl(),
          ));
  sl.registerFactory(() => NumberTriviaBloc(
      getConcreteNumberTrivia: sl(),
      getRandomNumberTrivia: sl(),
      inputConverter: sl()));
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<NumberTriviaRemoteDataSource>(
      () => NumberTriviaRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<NumberTriviaLocalDataSource>(
      () => NumberTriviaLocalDataSourceImpl(cache: sl()));
}
