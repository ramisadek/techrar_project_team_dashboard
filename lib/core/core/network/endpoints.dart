const apiVersion = 'v1';

enum EndPoints {
  colleges('/colleges'),
  recentTasks('/recent_tasks'),
  userTasks('/user_tasks'),
  profile('/profile');

  const EndPoints(this.url);
  final String url;
}
