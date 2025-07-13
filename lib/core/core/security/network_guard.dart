abstract mixin class NetworkGuard{
  Future<bool> isUsingVpn();
  Future<bool> isUsingProxy();
  Future<bool> isDnsSpoofed({required String domain});
  Future<bool> isCompromised();
}