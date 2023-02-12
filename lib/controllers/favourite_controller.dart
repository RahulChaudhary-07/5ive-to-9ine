import 'dart:convert';

import 'package:internship_5to9_1/core/localstorage.dart';

import '../NearbyJobs.dart';

class FavouriteController {
  FavouriteController._privateConstructor();

  static final FavouriteController _instance = FavouriteController._privateConstructor();

  static FavouriteController get instance => _instance;

  final List<Job> jobs = [];

  Future<void> init() async {
    final fbs = await fetch();

    jobs.clear();

    jobs.addAll(fbs);
  }

  bool isFavourite(int id) {
    return jobs.map((e) => e.id).contains(id);
  }

  Future<List<Job>> fetch() async {
    final data = LocalStorage.instance.prefs.getString("fav");

    if (data == null) return List<Job>.from([]);

    final favJobs = (jsonDecode(data) as List).map((e) => Job.fromMap(e)).toList();

    return favJobs;
  }

  Future<void> addJob(Job job) async {
    final favJobs = await fetch();

    favJobs.add(job);

    jobs.clear();

    jobs.addAll(favJobs);

    LocalStorage.instance.prefs.setString("fav", favJobs.map((e) => e.toJson()).toList().toString());
  }

  Future<void> removeJob(Job job) async {
    final favJobs = await fetch();

    favJobs.removeWhere((element) => element.id == job.id);

    jobs.clear();

    jobs.addAll(favJobs);

    LocalStorage.instance.prefs.setString("fav", favJobs.map((e) => e.toJson()).toList().toString());
  }
}
