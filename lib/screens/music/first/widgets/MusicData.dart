class MusicData {
  final String text;
  final String min;
  final String imageUrl;
  final bool isLiked;
  final bool isChecked;
  final bool isDownloaded;

  const MusicData({required this.text,
      required this.imageUrl,
      required this.min,
      required this.isLiked,
      required this.isChecked,
      required this.isDownloaded});
}
