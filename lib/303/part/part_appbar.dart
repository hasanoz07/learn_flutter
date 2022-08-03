
part of './part_of_learn.dart';

class _PartOfAppbar extends StatelessWidget with PreferredSizeWidget {
  const _PartOfAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("a"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.abc_rounded),
        ),
      ],
    );
  }

  @override
 
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}